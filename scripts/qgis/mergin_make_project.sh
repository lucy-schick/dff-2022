#!/bin/bash
set -euxo pipefail

# ---------------
# create project
# ---------------
# with Mergin Maps authentication token string set as --auth-token env variable run
mergin create newgraph/test_clay_2023 --from-dir ~/Projects/gis/test_clay_2023

# ---------------
# invite collaborators
# ---------------
# executed from project directory with .mergin file present
mergin share-add newgraph/sern_skeena_2023 newgraph_bute --permissions writer
mergin share-add newgraph/sern_skeena_2023 MateoW --permissions writer
mergin share-add newgraph/sern_skeena_2023 snorris --permissions writer
mergin share-add newgraph/sern_skeena_2023 tieasha.pierre --permissions reader
mergin share-add newgraph/sern_skeena_2023 seanwong --permissions reader
mergin share-add newgraph/sern_skeena_2023 sern_bgeldart --permissions reader
mergin share-add newgraph/sern_peace_fwcp_2023 MateoW --permissions writer
mergin share-add newgraph/sern_peace_fwcp_2023 Jmdegagne --permissions reader
mergin share-add newgraph/sern_peace_fwcp_2023 sern_bgeldart --permissions reader
mergin share-add newgraph/moti_jerv_2023 seanwong --permissions reader
# ---------------
# sync changes
# ---------------
# executed from project directory with .mergin file present
mergin status newgraph/sern_skeena_2023
mergin push newgraph/sern_skeena_2023

# ---------------
# clone a project
# ---------------
