#!/bin/bash
set -euxo pipefail

# ---------------
# create project
# ---------------
# with Mergin Maps authentication token string set as --auth-token env variable run
mergin create newgraph/sern_skeena_2023 --from-dir ~/Projects/gis/sern_skeena_2023

# ---------------
# invite collaborators
# ---------------
# executed from project directory with .mergin file present
mergin share-add newgraph/sern_skeena_2023 newgraph_bute --permissions writer
mergin share-add newgraph/sern_skeena_2023 MateoW --permissions writer
mergin share-add newgraph/sern_skeena_2023 snorris --permissions writer

# ---------------
# sync changes
# ---------------
# executed from project directory with .mergin file present
mergin status newgraph/sern_skeena_2023
mergin push newgraph/sern_skeena_2023

# ---------------
# clone a project
# ---------------
