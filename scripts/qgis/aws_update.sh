#!/bin/bash
set -euxo pipefail

#  updates only the layers from aws fdb files
#  see readme for instructions
# ex. time ./aws_update.sh "'PARS'"

# check that watershed group code is provided as argument
if [ $# -eq 0 ]
  then
    echo "No arguments supplied - provide list of watershed_group_code values for watersheds of interest"
    exit 1
fi


# Ask the user if they wish to remove the file
read -p "Do you wish to remove background_layers.gpkg? (y/n) " answer

# Check the user's answer
if [[ $answer == "y" ]]; then
  # If the answer is 'y', remove the file
  echo "Removing background_layers.gpkg..."
  rm -f background_layers.gpkg
else
  # If the answer is not 'y', skip the file removal
  echo "Skipping background_layers.gpkg..."
fi

echo 'Preparing the study area geopackage'

# ---------------
# initialize the geopackage with watershed group boundary, and get the extent
# ---------------
echo 'Generating project area from watershed group boundaries: '$1
rm -f aoi.geojson
bcdata dump WHSE_BASEMAPPING.FWA_WATERSHED_GROUPS_POLY \
    --query "WATERSHED_GROUP_CODE in ($1)" -l > aoi.geojson
    ogr2ogr \
      -f GPKG background_layers.gpkg \
      -update \
      -overwrite \
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


# get a list of the aws layers to update
FGB_SOURCES=$(cat aws_update.txt)

echo 'Getting bcfishpass and supporting layers from s3'

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

# update the model used to create the crossings and streams layers
CSVS=("parameters_habitat_method" "parameters_habitat_thresholds")

for layer in "${CSVS[@]}"; do
  ogr2ogr \
    -f GPKG background_layers.gpkg \
    -update \
    -overwrite \
    -nln $layer \
    /vsicurl/https://newgraph.s3.us-west-2.amazonaws.com/$layer.csv
done

