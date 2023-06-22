#!/bin/bash
set -euxo pipefail

# define the name of our Q project
DIRPROJECT='albn_clay_2023'
# ---------------
# extract background info for crossing assessments digital field form projects

# usage: specify watershed groups of interest as a comma separated, single quoted string
# eg
# test with ./background_layers.sh "'PARS'" &>log.txt
# ---------------



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
    --query "WATERSHED_GROUP_CODE in ($1)" -l > aoi.geojson
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
# other BCGW/WFS sources
# download these to geojson first with bcdata.sh
# ---------------
BCGW_SOURCES=$(cat bcdata.txt)
for layer in $BCGW_SOURCES; do
    if [[ $layer == *".fwa_"* ]]; then
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
# create directory for project and move the files in and copy in a qlr template (works relative to location dragged from when we reference gpkg) along with the directories for info ignored on phones
# ---------------
mkdir -p ~/Projects/gis/$DIRPROJECT
mv background_layers.gpkg* ~/Projects/gis/$DIRPROJECT/
cp ../../data/qgis/bcfishpass_mobile.qgs ~/Projects/gis/$DIRPROJECT/
cp ../../data/qgis/form_pscis.gpkg ~/Projects/gis/$DIRPROJECT/
cp ../../data/qgis/form_fiss_site.gpkg ~/Projects/gis/$DIRPROJECT/
mkdir -p ~/Projects/gis/$DIRPROJECT/ignore_mobile/photos
touch ~/Projects/gis/$DIRPROJECT/ignore_mobile/photos/photos.txt
cp -R ../../data/methods ~/Projects/gis/$DIRPROJECT/ignore_mobile/methods
cp -R ../../data/templates ~/Projects/gis/$DIRPROJECT/ignore_mobile/templates
