#!/bin/bash
set -euxo pipefail

# Define the arrays
PROJECTS=("sern_lchl_necr_fran_2023")
VERSIONS=("100")

# Get the length of the arrays
length=${#PROJECTS[@]}

# Loop through the arrays
for ((i=0; i<$length; i++)); do
    PROJECT=${PROJECTS[$i]}
    VERSION=${VERSIONS[$i]}

    # Move the project to a new directory with the version number
    mv ~/Projects/gis/${PROJECT} ~/Projects/gis/${PROJECT}_v${VERSION}

    # Download the project
    mergin download newgraph/${PROJECT} ~/Projects/gis/${PROJECT}
done
