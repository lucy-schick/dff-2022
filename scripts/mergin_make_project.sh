#!/bin/bash
set -euxo pipefail

# ---------------
# create project
# ---------------
# with Mergin Maps authentication token string set as --auth-token env variable run
mergin create --from-dir ~/Projects/gis/test_20230530a newgraph/test_20230530a
mergin create newgraph/skeena_2023 --from-dir ~/Projects/gis/skeena_2023


# ---------------
# invite collaborators
# ---------------
mergin share-add newgraph/test_20230530b newgraph_bute --permissions writer
mergin share-add newgraph/skeena_2023 newgraph_bute --permissions writer


# ---------------
# sync changes
# ---------------
mergin status --from-dir ~/Projects/gis/test_20230530a newgraph/test_20230530a
mergin push --from-dir ~/Projects/gis/test_20230530a newgraph/test_20230530a
