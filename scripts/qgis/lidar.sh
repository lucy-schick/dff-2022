#!/bin/bash

set -euxo pipefail

# start the timer
SECONDS=0

FILENAME="20210906lampreymoricetribv220230317-DEM.tif"

#As long as we run the sh script from the main directory we do not need to mess with the basedir.  have left here as it will likely come in handy
# later
BASEDIR="${PWD%/*}"

mkdir -p data/lidar

# wget --trust-server-names -qN https://nrs.objectstore.gov.bc.ca/gdwuts/093/093l/2019/dem/$FILENAME --directory-prefix=data/lidar

# convert to cog
rio cogeo create data/lidar/$FILENAME data/lidar/$FILENAME

# remove the orginal file
# rm data/lidar/bc_093l056_xli1m_utm09_2019.tif

# https://aws.amazon.com/cli/
aws s3 sync data/lidar/ s3://23cog

echo 'This took' \
$SECONDS \
echo 'seconds'
