#!/bin/bash

set -euxo pipefail

# check that watershed group code is provided as argument
if [ $# -eq 0 ]
  then
    echo "No arguments supplied - provide watershed_group_code of watershed of interest"
    exit 1
fi

# sources available via feature service apis
BCGW_SOURCES="whse_fish.fiss_fish_obsrvtn_pnt_sp \
    whse_fish.fiss_obstacles_pnt_sp \
    whse_fish.fiss_stream_sample_sites_sp \
    whse_imagery_and_base_maps.mot_culverts_sp \
    whse_fish.pscis_assessment_svw \
    whse_fish.pscis_design_proposal_svw \
    whse_fish.pscis_habitat_confirmation_svw \
    whse_fish.pscis_remediation_svw \
    whse_basemapping.gba_railway_tracks_sp \
    whse_forest_tenure.ften_road_section_lines_svw \
    whse_basemapping.gba_transmission_lines_sp"
BCFISHPASS_SOURCES="crossings streams"


# remove existing file if present
rm -f background_layers.gpkg

# ---------------
# initialize the geopackage with watershed group boundary, and get the extent 
# ---------------
bcdata dump WHSE_BASEMAPPING.FWA_WATERSHED_GROUPS_POLY \
    --query "WATERSHED_GROUP_CODE = '$1'" | \
    ogr2ogr -f GPKG background_layers.gpkg \
        -t_srs EPSG:3005 \
        -nln fwa_watershed_groups_poly \
        /vsistdin/
BOUNDS=$(fio info background_layers.gpkg --layer fwa_watershed_groups_poly --bounds)

# ---------------
# get bcfishpass layers
# ---------------
for layer in $BCFISHPASS_SOURCES; do 
    curl "https://features.hillcrestgeo.ca/bcfishpass/collections/bcfishpass.$layer/items.json?watershed_group_code=VICT" | \
    ogr2ogr -f GPKG background_layers.gpkg \
        -update \
        -t_srs EPSG:3005 \
        -nln $layer \
        -dim XY \
        /vsistdin/
done

# ---------------
# get bcgw layers
# ---------------
for layer in $BCGW_SOURCES; do
	bcdata dump $layer --bounds "$BOUNDS" --bounds-crs EPSG:3005 | \
    ogr2ogr -f GPKG background_layers.gpkg \
        -update \
        -t_srs EPSG:3005 \
        -nln $layer \
        -dim XY \
        /vsistdin/
done

# ---------------
# get fwapg named streams
# ---------------
curl "https://features.hillcrestgeo.ca/fwa/collections/whse_basemapping.fwa_named_streams/items.json?watershed_group_code=VICT" | \
ogr2ogr -f GPKG background_layers.gpkg \
    -update \
    -t_srs EPSG:3005 \
    -nln fwa_named_streams \
    /vsistdin/

# ---------------
# get DRA
# (use ftp rather than bcgw so the attributes match what is in bcfishpass)
# ---------------
wget --trust-server-names -qN ftp://ftp.geobc.gov.bc.ca/sections/outgoing/bmgs/DRA_Public/dgtl_road_atlas.gdb.zip
ogr2ogr -f GPKG background_layers.gpkg \
    -update \
    -t_srs EPSG:3005 \
    -nln transport_line \
    -dim XY \
    -spat $BOUNDS \
    -spat_srs EPSG:3005 \
    dgtl_road_atlas.gdb.zip \
    TRANSPORT_LINE

echo 'Data extract for watershed_group_code $1 complete, see background_layers.gpkg'