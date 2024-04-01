#!/bin/bash

# Define the file to capture the output
OUTPUT_FILE="./mergin_status_sum.txt"

# Remove the output file if it already exists to start fresh
# rm -f "$OUTPUT_FILE"

# Add a date stamp to the top of the file
echo "Status Report Generated on: $(date)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE" # Add a newline for spacing

# Run the command and capture its output
PROJECTS=$(mergin list-projects --namespace newgraph)

# Extract project names using awk
echo "$PROJECTS" | awk '/newgraph \/ [a-zA-Z0-9_]+/ {print $3}' | while read -r project_name; do
    # Append the project name and its status to the output file without changing directories
    echo "Status for project $project_name:" >> "$OUTPUT_FILE"
    (cd ~/Projects/gis/"$project_name" && mergin status) >> "$OUTPUT_FILE" 2>&1
    echo "" >> "$OUTPUT_FILE" # Add a newline for readability
done

echo "Mergin status summary has been saved to $OUTPUT_FILE."


