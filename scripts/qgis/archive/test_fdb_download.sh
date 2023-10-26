

WSG="NECR"

FGB_SOURCES="
    crossings \
    fiss_fish_obsrvtn_events_vw \
    fiss_obstacles_pnt_sp \
    ften_road_section_lines_svw \
    streams"
for layer in $FGB_SOURCES; do
  ogr2ogr \
    -f GPKG background_layers.gpkg \
    # -update \
    -nln $layer \
    -t_srs EPSG:3005 \
    -dim XY \
    -spat $BOUNDS \
    -spat_srs EPSG:3005 \
    -where "watershed_group_code in 'NECR'" \
    #-where "watershed_group_code in ($WSG)" \
    /vsicurl/https://bcfishpass.s3.us-west-2.amazonaws.com/$layer.fgb \
    $layer
done
