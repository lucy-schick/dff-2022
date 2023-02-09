#!/bin/bash
# ---------------
# background_layers.sh
# extract background info for crossing assessments digital field form

# usage: specify watershed groups of interest as a comma separated, single quoted string
# eg
# test with ./background_layers_blackwater.sh "'BULK','MORR','ZYMO','KISP'" &>log.txt
# $ ./background_layers_blackwater.sh "'ATNA', 'BELA', 'BLAR', 'CHIL', 'EUCH', 'EUCL', 'HOMA', 'KITL', 'KLIN', 'KNIG', 'LCHL', 'LCHR', 'LDEN', 'LEUT', 'LNRS', 'NAZR', 'NECL', 'OWIK', 'UCHR', 'UDEN', 'UEUT'"
# ---------------

set -euxo pipefail

# start the timer
SECONDS=0

# define the name of our Q project
DIRPROJECT='UFN_LDN'

# check that watershed group code is provided as argument
if [ $# -eq 0 ]
  then
    echo "No arguments supplied - provide list of watershed_group_code values for watersheds of interest"
    exit 1
fi


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
    whse_basemapping.gba_transmission_lines_sp\
    whse_basemapping.fwa_wetlands_poly \
    whse_basemapping.fwa_lakes_poly \
    whse_land_and_natural_resource.prot_historical_fire_polys_sp \
    whse_forest_vegetation.veg_burn_severity_sp\
    whse_admin_boundaries.clab_national_parks \
    whse_admin_boundaries.clab_indian_reserves"



# not on api list
# whse_forest_vegetation.pest_infest_historic_poly
# whse_cadastre.cbm_intgd_cadastral_fabric_svw

# this is there but we should use https://github.com/smnorris/designatedlands/blob/master/sources_designations.csv
# whse_tantalis.ta_park_ecores_pa_svw


# remove existing file if present
rm -f background_layers.gpkg


echo 'Preparing the study area geopackage'

# ---------------
# initialize the geopackage with watershed group boundary, and get the extent
# ---------------
bcdata dump WHSE_BASEMAPPING.FWA_WATERSHED_GROUPS_POLY \
    --query "WATERSHED_GROUP_CODE in ($1)" | \
    ogr2ogr -f GPKG background_layers.gpkg \
        -t_srs EPSG:3005 \
        -nln fwa_watershed_groups_poly \
        /vsistdin/

# get bounding box of watershed groups in albers and in lat/lon
BOUNDS=$(fio info background_layers.gpkg --layer fwa_watershed_groups_poly --bounds)
BOUNDS_LL=$(echo "[$BOUNDS]" | tr ' ', ',' | rio transform --src_crs EPSG:3005 --dst_crs EPSG:4326 | tr -d '[] ')


# ---------------
# get named streams from fwapg
# ---------------

echo 'get layers from fwapg generated database'

ogr2ogr -f GPKG background_layers.gpkg \
    -update \
    -t_srs EPSG:3005 \
    -nln fwa_named_streams \
    "http://www.a11s.one:9000/collections/whse_basemapping.fwa_named_streams/items.json?bbox=$BOUNDS_LL"

# ---------------
# get DRA
# (use ftp rather than bcgw so the attributes match what is in bcfishpass)
# ---------------

echo 'getting Digital Road Atlas - transport line layer'

# should be able to read the zip file direct with /vsizip//vsicurl but seems insano slow
wget --trust-server-names -qN ftp://ftp.geobc.gov.bc.ca/sections/outgoing/bmgs/DRA_Public/dgtl_road_atlas.gdb.zip
unzip -oq dgtl_road_atlas.gdb.zip


ogr2ogr -f GPKG background_layers.gpkg \
    -update \
    -t_srs EPSG:3005 \
    -nln transport_line \
    -dim XY \
    -spat $BOUNDS \
    -spat_srs EPSG:3005 \
    dgtl_road_atlas.gdb \
    TRANSPORT_LINE

# ---------------
# get bcfishpass layers
# ---------------

echo 'getting bcfishpass layers'

wget --trust-server-names -qN https://bcfishpass.s3.us-west-2.amazonaws.com/freshwater_fish_habitat_accessibility_MODEL.gpkg.zip
unzip -oq freshwater_fish_habitat_accessibility_MODEL.gpkg.zip


# need to turn this off until the layer is actually on there
# ogr2ogr \
#     -f GPKG background_layers.gpkg \
#     -update \
#     -nln crossings \
#     -t_srs EPSG:3005 \
#     -dim XY \
#     -spat $BOUNDS \
#     -spat_srs EPSG:3005 \
#     /vsizip//vsicurl/https://bcfishpass.s3.us-west-2.amazonaws.com/freshwater_fish_habitat_accessibility_MODEL.gpkg.zip \
#     crossings

ogr2ogr -f GPKG background_layers.gpkg \
    -update \
    -nln streams \
    -t_srs EPSG:3005 \
    -dim XY \
    -spat $BOUNDS \
    freshwater_fish_habitat_accessibility_MODEL.gpkg \
    model_access_salmon

# ---------------
# get bcgw layers
# ---------------

echo 'getting BC Data Catalouge layers - this may take a while'
for layer in $BCGW_SOURCES; do
    bcdata dump $layer --bounds "$BOUNDS" --bounds-crs EPSG:3005 | \
    ogr2ogr -f GPKG background_layers.gpkg \
        -update \
        -t_srs EPSG:3005 \
        -nln $layer \
        -dim XY \
        /vsistdin/
done

rm -r -f dgtl_road_atlas.gdb
rm -r -f freshwater_fish_habitat_accessibility_MODEL.gpkg

# ---------------
# create directory for project and move the files in an copy in a qlr template
# ---------------

mkdir ~/Projects/gis/mergin/$DIRPROJECT
mv background_layers.gpkg ~/Projects/gis/mergin/$DIRPROJECT/
cp ../data/bcfishpass_dff.qlr ~/Projects/gis/mergin/$DIRPROJECT/


echo 'This took' \
$SECONDS \
echo 'seconds'

echo 'OK - Data extract complete, see background_layers.gpkg'

