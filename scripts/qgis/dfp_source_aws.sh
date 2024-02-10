#!/bin/bash
set -euxo pipefail

# ---------------
# extract layers from aws to load to background_layers.gpkg within digital field projects

# usage: specify watershed groups of interest as a comma separated, single quoted string
# eg
# test with ./dfp_sources_aws.sh "'PARS'" &>log.txt
# ---------------


# check that watershed group code is provided as argument
if [ $# -eq 0 ]
  then
    echo "No arguments supplied - provide list of watershed_group_code values for watersheds of interest"
    exit 1
fi


# Name of the file
FILE_REMOVE="background_layers.gpkg"

# Check if the FILE_REMOVE IS NOT there
if [[ ! -f $FILE_REMOVE ]]; then
  # If the file exists, ask the user if they wish to remove it
  echo "There should already be a file called $FILE_REMOVE. Please provide."
  exit 1
else
echo 'Updateing project area from watershed group boundaries: '$1
    rm -f aoi.geojson
    bcdata dump WHSE_BASEMAPPING.FWA_WATERSHED_GROUPS_POLY \
        --query "WATERSHED_GROUP_CODE in ($1)" -l > aoi.geojson
        ogr2ogr -f GPKG background_layers.gpkg \
            -update \
            -overwrite \
            -t_srs EPSG:3005 \
            -nln fwa_watershed_groups_poly \
            aoi.geojson
fi

# get bounding box of project area in BC Albers and WGS84 (lon/lat)
BOUNDS=$(fio info background_layers.gpkg --layer fwa_watershed_groups_poly --bounds)
BOUNDS_LL=$(echo "[$BOUNDS]" | tr ' ', ',' | rio transform --src_crs EPSG:3005 --dst_crs EPSG:4326 | tr -d '[] ')


# ---------------
# lateral habitat
# ---------------
# should be able to pipe $(fio cat aoi.geojson --dst_crs EPSG:3005) to rio mask for a one liner,
# but this works fine
echo 'Clipping lateral habitat tiff to project area'
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
echo 'Getting bcfishpass and supporting layers from s3'

# get a list of the aws layers to update
FGB_SOURCES=$(grep -v '^#' dfp_source_aws.txt)

for layer in $FGB_SOURCES; do
  ogr2ogr \
    -f GPKG background_layers.gpkg \
    -update \
    -overwrite \
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
    -overwrite \
    -t_srs EPSG:3005 \
    -nln fwa_named_streams \
    -clipsrc aoi.geojson \
    -clipsrclayer aoi \
    "https://features.hillcrestgeo.ca/fwa/collections/whse_basemapping.fwa_named_streams/items.json?bbox=$BOUNDS_LL"
    # "http://www.a11s.one:9000/collections/whse_basemapping.fwa_named_streams/items.json?bbox=$BOUNDS_LL"








