#!/bin/bash
set -euxo pipefail

# Check that the name of the new directory for the project and QGIS file are provided as arguments
if [ $# -lt 2 ]
  then
    echo "No arguments supplied - provide the name of the new project directory and the QGIS file to be placed in ~Projects/gis/"
    exit 1
fi

PROJECT_NAME=$1
QGIS_FILE=$2


echo 'Generating QGIS project in Projects/gis/: '$PROJECT_NAME 'with QGIS file: '$QGIS_FILE

# ---------------
# create directory for project and move the files in and copy in a qlr template (works relative to location dragged from when we reference gpkg) along with the directories for info ignored on phones

mkdir -p ~/Projects/gis/$PROJECT_NAME
mv background_layers.gpkg* ~/Projects/gis/$PROJECT_NAME/
mv habitat_lateral.tif ~/Projects/gis/$PROJECT_NAME/
cp ../../data/qgis/$QGIS_FILE ~/Projects/gis/$PROJECT_NAME/$PROJECT_NAME.qgs
cp ../../data/qgis/form_pscis.gpkg ~/Projects/gis/$PROJECT_NAME/
cp ../../data/qgis/form_fiss_site.gpkg ~/Projects/gis/$PROJECT_NAME/
mkdir -p ~/Projects/gis/$PROJECT_NAME/ignore_mobile/photos
touch ~/Projects/gis/$PROJECT_NAME/ignore_mobile/photos/photos.txt
cp -R ../../data/methods ~/Projects/gis/$PROJECT_NAME/ignore_mobile/methods
cp -R ../../data/templates ~/Projects/gis/$PROJECT_NAME/ignore_mobile/templates
