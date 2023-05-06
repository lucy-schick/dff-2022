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
# archived to flatgeobuf on s3 for fast retrieval, and with watershed group code included
# (no clipping required)
# ---------------
FGB_SOURCES="
    transport_line \
    crossings \
    streams \
    fiss_obstacles_pnt_sp"

echo 'getting bcfishpass and supporting layers from s3'
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
echo 'get layers from fwapg generated database'
ogr2ogr -f GPKG background_layers.gpkg \
    -update \
    -t_srs EPSG:3005 \
    -nln fwa_named_streams \
    -clipsrc background_layers.gpkg \
    -clipsrclayer fwa_watershed_groups_poly \
    "http://www.a11s.one:9000/collections/whse_basemapping.fwa_named_streams/items.json?bbox=$BOUNDS_LL"


# ---------------
# designatedlands
# ---------------
echo 'getting designated land layer linked in BC Data Catalogue to github'
wget -qN https://github.com/bcgov/designatedlands/releases/download/v0.1.0/designatedlands.gpkg.zip -O designatedlands.gpkg.zip
unzip -o designatedlands.gpkg.zip
ogr2ogr -f GPKG background_layers.gpkg \
    -update \
    -nln designatedlands \
    -t_srs EPSG:3005 \
    -dim XY \
    -spat $BOUNDS \
    -spat_srs EPSG:3005 \
    -clipsrc background_layers.gpkg \
    -clipsrclayer fwa_watershed_groups_poly \
    designatedlands.gpkg \
    designatedlands

# ---------------
# bcgw layers
# ---------------
echo 'getting BC Data Catalouge layers - this may take a while'
BCGW_SOURCES="whse_fish.fiss_stream_sample_sites_sp\
    whse_fish.fiss_fish_obsrvtn_pnt_sp \
    whse_imagery_and_base_maps.mot_culverts_sp \
    whse_fish.pscis_assessment_svw \
    whse_fish.pscis_design_proposal_svw \
    whse_fish.pscis_habitat_confirmation_svw \
    whse_fish.pscis_remediation_svw \
    whse_basemapping.gba_railway_tracks_sp \
    whse_forest_tenure.ften_road_section_lines_svw \
    whse_basemapping.gba_transmission_lines_sp \
    whse_mineral_tenure.og_pipeline_area_permit_sp \
    whse_mineral_tenure.og_pipeline_area_appl_sp \
    whse_mineral_tenure.og_pipeline_segment_permit_sp \
    whse_land_and_natural_resource.prot_historical_fire_polys_sp \
    whse_forest_vegetation.veg_burn_severity_sp\
    whse_admin_boundaries.clab_indian_reserves \
    whse_land_use_planning.rmp_ogma_non_legal_current_svw"
for layer in $BCGW_SOURCES; do
    bcdata dump $layer --bounds "$BOUNDS" --bounds-crs EPSG:3005 | \
    ogr2ogr -f GPKG background_layers.gpkg \
        -update \
        -t_srs EPSG:3005 \
        -nln $layer \
        -dim XY \
        -clipsrc background_layers.gpkg \
        -clipsrclayer fwa_watershed_groups_poly \
        /vsistdin/
done

# ---------------
# create directory for project and move the files in an copy in a qlr template
# ---------------
mkdir -p ~/Projects/gis/mergin/$DIRPROJECT
mv background_layers.gpkg ~/Projects/gis/mergin/$DIRPROJECT/
cp ../data/bcfishpass_dff.qlr ~/Projects/gis/mergin/$DIRPROJECT/