#!/bin/bash
set -euxo pipefail

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
# other BCGW/WFS sources
# download these to geojson first with bcdata.sh
# ---------------
# BCGW_SOURCES=$(cat bcdata.txt)

# get the name of the files (except aoi.geojson) that are left after tiny ones are removed
BCGW_SOURCES=$(find . -maxdepth 1 -type f -name "*.geojson" -a '!' -name "aoi.geojson" -exec basename {} .geojson \;)


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
# lateral habitat
# ---------------
# should be able to pipe $(fio cat aoi.geojson --dst_crs EPSG:3005) to rio mask for a one liner,
# but this works fine
ogr2ogr -f GeoJSON aoi_alb.geojson -t_srs EPSG:3005 aoi.geojson

rio mask /vsicurl/https://bcfishpass.s3.us-west-2.amazonaws.com/habitat_lateral.tif \
  habitat_lateral.tif \
  --crop \
  --geojson-mask aoi_alb.geojson

rm aoi_alb.geojson

# ---------------
# bcfishpass releated data sources archived to flatgeobuf on s3 for fast retrieval
# (and with watershed group code included, no spatial query for clipping required)
# ---------------
echo 'Getting bcfishpass and supporting fdb layers from s3'
FGB_SOURCES="
    crossings \
    fiss_fish_obsrvtn_events_vw \
    fiss_obstacles_pnt_sp \
    ften_range_poly_carto_vw \
    ften_road_section_lines_svw \
    pmbc_parcel_fabric_poly_svw \
    streams \
    transport_line \
    veg_comp_lyr_r1_poly"
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
    /vsicurl/https://newgraph.s3.us-west-2.amazonaws.com/$layer.fgb \
    $layer
done

# ---------------
# model parameters
# ---------------
echo 'Getting model parameter info from aws'

# update the model info used to create the crossings and streams layers
CSVS=("parameters_habitat_method" "parameters_habitat_thresholds")

for layer in "${CSVS[@]}"; do
  ogr2ogr \
    -f GPKG background_layers.gpkg \
    -update \
    -overwrite \
    -nln $layer \
    /vsicurl/https://newgraph.s3.us-west-2.amazonaws.com/$layer.csv
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
    "https://features.hillcrestgeo.ca/fwa/collections/whse_basemapping.fwa_named_streams/items.json?bbox=$BOUNDS_LL"
    # "http://www.a11s.one:9000/collections/whse_basemapping.fwa_named_streams/items.json?bbox=$BOUNDS_LL"






