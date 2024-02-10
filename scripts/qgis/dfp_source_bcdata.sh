#!/bin/bash
set -euxo pipefail

# Check that watershed group code is provided as an argument
if [ $# -eq 0 ]; then
  echo "No arguments supplied - provide list of watershed_group_code values for watersheds of interest."
  exit 1
fi

# Name of the file
FILE_REMOVE="background_layers.gpkg"

process_geopackage() {
  echo "Generating project area from watershed group boundaries: $1"
  rm -f aoi.geojson
  bcdata dump WHSE_BASEMAPPING.FWA_WATERSHED_GROUPS_POLY \
      --query "WATERSHED_GROUP_CODE in ($1)" -l > aoi.geojson

  # Check if $2 is provided, defaulting to an empty string if not
  local update_option=""
  if [[ "${2-}" == "update" || "${2-}" == "'update'" ]]; then
    update_option="-update"
  fi

  ogr2ogr -f GPKG "$FILE_REMOVE" \
          $update_option \
          -t_srs EPSG:3005 \
          -nln fwa_watershed_groups_poly \
          aoi.geojson
}

# Check if the FILE_REMOVE exists
if [[ -f $FILE_REMOVE ]]; then
  # If the file exists, ask the user if they wish to remove it
  read -p "Do you wish to start over with a new $FILE_REMOVE? If you are updating existing project info say NO (y/n): " answer

  if [[ $answer == "y" ]]; then
    # If the answer is 'y', remove the file and start from scratch
    echo "Removing $FILE_REMOVE..."
    rm -f $FILE_REMOVE
    process_geopackage "$1"
  else
    # If the answer is not 'y', indicate that we are updating the existing geopackage
    echo "Updating existing $FILE_REMOVE with area of interest..."
    process_geopackage "$1" "update"
  fi
else
  # If the file does not exist, generate a new one from scratch
  echo "$FILE_REMOVE does not exist. Generating a new one..."
  process_geopackage "$1"
fi




# get bounding box of aoi in BC Albers and WGS84 (lon/lat)
BOUNDS_LL=$(fio info aoi.geojson --layer aoi --bounds)
BOUNDS=$(echo "[$BOUNDS_LL]" | tr ' ', ',' | rio transform --src_crs EPSG:4326 --dst_crs EPSG:3005 | tr -d '[] ')


# ---------------
# non-fwa bcgw layers
# ---------------
echo 'Getting BC Data Catalogue layers - this may take a while'
BCGW_SOURCES=$(grep -v '^#' dfp_source_bcdata.txt)
for layer in $BCGW_SOURCES; do
    if [ ! -f ./$layer.geojson ]; then
        set -e ; bcdata dump $layer --bounds "$BOUNDS" --bounds-crs EPSG:3005 -l > $layer.geojson
    fi
done

# remove empty fwa tables created by bcdata because sql query will fail later
find . -maxdepth 1 -type f -name "*.fwa_*" -size -50c -delete


# get the name of the files (except aoi.geojson) that are left after tiny ones are removed
BCGW_SOURCES_CLEANED=$(find . -maxdepth 1 -type f -name "*.geojson" -a '!' -name "aoi.geojson" -exec basename {} .geojson \;)


for layer in $BCGW_SOURCES_CLEANED; do
    if [[ $layer == *".fwa_"* ]]; then
        ogr2ogr -f GPKG \
            background_layers.gpkg \
            -update \
            -overwrite \
            -t_srs EPSG:3005 \
            -nln $layer \
            -dim XY \
            -where "watershed_group_code in ($1)" \
            $layer.geojson
    else
        ogr2ogr -f GPKG \
            background_layers.gpkg \
            -update \
            -overwrite \
            -t_srs EPSG:3005 \
            -nln $layer \
            -dim XY \
            -clipsrc aoi.geojson \
            -clipsrclayer aoi \
            $layer.geojson
    fi
done

echo 'bcdata layers are now loaded to background_layers.gpkg'
