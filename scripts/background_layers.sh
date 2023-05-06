#!/bin/bash
set -euxo pipefail

# ---------------
# extract background info for crossing assessments digital field form projects

# usage: specify watershed groups of interest as a comma separated, single quoted string
# eg
# test with ./background_layers.sh "'PARS'" &>log.txt
# $ ./background_layers.sh "'ATNA', 'BELA', 'BLAR', 'CHIL', 'EUCH', 'EUCL', 'HOMA', 'KITL', 'KLIN', 'KNIG', 'LCHL', 'LCHR', 'LDEN', 'LEUT', 'LNRS', 'NAZR', 'NECL', 'OWIK', 'UCHR', 'UDEN', 'UEUT'"
# ---------------

# define the name of our Q project
DIRPROJECT='pars_sern_demo'

# check that watershed group code is provided as argument
if [ $# -eq 0 ]
  then
    echo "No arguments supplied - provide list of watershed_group_code values for watersheds of interest"
    exit 1
fi

# remove existing file if present
rm -f background_layers.gpkg

echo 'Preparing the study area geopackage'

# ---------------
# initialize the geopackage with watershed group boundary, and get the extent
# ---------------
echo 'Generating project area from watershed group boundaries: '$1
rm -f aoi.geojson
bcdata dump WHSE_BASEMAPPING.FWA_WATERSHED_GROUPS_POLY \
    --query "WATERSHED_GROUP_CODE in ($1)" > aoi.geojson
    ogr2ogr -f GPKG background_layers.gpkg \
        -t_srs EPSG:3005 \
        -nln fwa_watershed_groups_poly \
        aoi.geojson

# get bounding box of project area in BC Albers and WGS84 (lon/lat)
BOUNDS=$(fio info background_layers.gpkg --layer fwa_watershed_groups_poly --bounds)
BOUNDS_LL=$(echo "[$BOUNDS]" | tr ' ', ',' | rio transform --src_crs EPSG:3005 --dst_crs EPSG:4326 | tr -d '[] ')


# ---------------
# bcfishpass releated data sources archived to flatgeobuf on s3 for fast retrieval
# (and with watershed group code included, no spatial query for clipping required)
# ---------------
echo 'Getting bcfishpass and supporting layers from s3'
FGB_SOURCES="
    crossings \
    fiss_fish_obsrvtn_events_vw \
    fiss_obstacles_pnt_sp \
    ften_road_section_lines_svw \
    streams \
    transport_line"
for layer in $FGB_SOURCES; do
  ogr2ogr \
    -f GPKG background_layers.gpkg \
    -update \
    -nln $layer \
    -t_srs EPSG:3005 \
    -dim XY \
    -spat $BOUNDS \
    -spat_srs EPSG:3005 \
    -where "watershed_group_code in ($1)" \
    /vsicurl/https://bcfishpass.s3.us-west-2.amazonaws.com/$layer.fgb \
    $layer
done


# ---------------
# named streams
# ---------------
echo 'Getting named streams from fwapg feature service'
ogr2ogr -f GPKG background_layers.gpkg \
    -update \
    -t_srs EPSG:3005 \
    -nln fwa_named_streams \
    -clipsrc aoi.geojson \
    -clipsrclayer aoi \
    "http://www.a11s.one:9000/collections/whse_basemapping.fwa_named_streams/items.json?bbox=$BOUNDS_LL"


# ---------------
# designatedlands
# ---------------
echo 'Getting designated land layer (https://github.com/bcgov/designatedlands)'
wget -qN https://github.com/bcgov/designatedlands/releases/download/v0.1.0/designatedlands.gpkg.zip -O designatedlands.gpkg.zip
unzip -o designatedlands.gpkg.zip
ogr2ogr -f GPKG background_layers.gpkg \
    -update \
    -nln designatedlands \
    -t_srs EPSG:3005 \
    -dim XY \
    -spat $BOUNDS \
    -spat_srs EPSG:3005 \
    -clipsrc aoi.geojson \
    -clipsrclayer aoi \
    designatedlands.gpkg \
    designatedlands


# ---------------
# other BCGW/WFS sources
# download these to geojson first with bcdata.sh
# ---------------
BCGW_SOURCES=$(cat bcdata.txt)
for layer in $BCGW_SOURCES; do
    if [[ $layer == *".fwa"* ]]; then
        ogr2ogr -f GPKG \
            background_layers.gpkg \
            -update \
            -t_srs EPSG:3005 \
            -nln $layer \
            -dim XY \
            -where "watershed_group_code in ($1)" \
            $layer.geojson
    else
        ogr2ogr -f GPKG \
            background_layers.gpkg \
            -update \
            -t_srs EPSG:3005 \
            -nln $layer \
            -dim XY \
            -clipsrc aoi.geojson \
            -clipsrclayer aoi \
            $layer.geojson
    fi
done

# ---------------
# create directory for project and move the files in an copy in a qlr template
# ---------------
mkdir -p ~/Projects/gis/mergin/$DIRPROJECT
mv background_layers.gpkg* ~/Projects/gis/mergin/$DIRPROJECT/
cp ../data/bcfishpass_dff.qlr ~/Projects/gis/mergin/$DIRPROJECT/