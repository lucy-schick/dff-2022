#!/bin/bash
set -euxo pipefail

# ---------------
# create project
# ---------------
# with Mergin Maps authentication token string set as --auth-token env variable run
mergin create newgraph/skeena_2023 --from-dir ~/Projects/gis/skeena_2023


# ---------------
# invite collaborators
# ---------------
# executed from project directory with .mergin file present
mergin share-add newgraph/skeena_2023 newgraph_bute --permissions writer


# ---------------
# sync changes
# ---------------
# executed from project directory with .mergin file present
mergin status newgraph/skeena_2023
mergin push newgraph/skeena_2023
