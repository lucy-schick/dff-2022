#!/bin/bash
# set -euxo pipefail

# name the sources file
SOURCES_PREP="rfp_lookup_bcdata_prep.csv"
SOURCES="rfp_lookup_bcdata.csv"

# get list of all the schema and table names in lower case and write to file
bcdata list | tr '[:upper:]' '[:lower:]' > $SOURCES_PREP


# add the headers
echo "schema_table,description" > $SOURCES



# loop through the file and get the description for each table
#  2>/dev/null can be added to each call to bcdata to suppress the error message when the table does not exist
# the tr -d ',' is to remove any commas from the description since we write to csv
while IFS= read -r line
do
  description=$(bcdata info "$line" | jq '.description' | tr -d ',')
  line=$(echo "$line" | tr -d ',')
  echo "$line,$description" >> $SOURCES
done < $SOURCES_PREP

rm $SOURCES_PREP






