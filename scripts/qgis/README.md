# `rfp_source_bcdata.sh`, `rfp_source_aws.sh` and `rfp_qgis_create_bcfishpass.sh`
These are the scripts for creating projects ready for upload to mergin server.  

Requires virtual environment built with:
    
    conda env create -f environment.yml
    conda activate dff

**Note: Project directory defined in call to 
`qgis_create.sh` must not be present at ~Projects/gis/{project_directory} or it will not be created.**

To download and clip layers for an area of interest defined by a list of watershed groups and load to a geopackage:


## `rfp_source_bcdata.sh`

  1. edit `rfp_source_bcdata.txt` as needed, listing all layers to be downloaded via bcdata/WFS 
  2. source the file and include **double quoted list of single quoted** (ex. "'BULK', 'KLUM'") watershed groups to run
  the script and define the study area boundaries.
  3.To update an existing `background_layers.gpkg` file non-interactively - include the `update` flag.  Ff a file named
  `background_layers.gpkg` exists in the `scripts/qgis` directory it will ask the user if they want to start over (yes)
  or update the existing geopackage (no).
  4. Once input has been put to console the script will download `rfp_source_bcdata.txt` layers to `.geojson`, for given
  study area (optionally with timer - `time `) and load to `background_layers.gpkg` with clip associated with
  watershed group polygons supplied in command to run the script:
  
    
    Non interactive:
    
    time ./rfp_source_bcdata.sh "'BULK', 'KLUM" "update"
    
    
    Interactive update if `background_layers.gpkg` exists in `scripts/qgis` directory and non-interactive if it does not:
    
    time ./rfp_source_bcdata.sh "'BULK', 'KLUM'"
  
If downloads in `rfp_source_bcdata.sh` fail, re-run `rfp_source_bcdata.sh` until downloads are complete.

## rfp_source_aws.sh  
  1. download data from file sources stored on `aws` and load to `background_layers.gpkg` (and produce stand alone `lateral_habitat.tif`) 
  with clip from watershed group polygons.  Note that the `background_layers.gpkg` must be in the `scripts/qgis` directory:
  
  		
    time ./rfp_source_aws.sh "'BULK', 'KLUM'"
  		
  		

## `rfp_qgis_create.sh` 

Script will create the directory where the spatial layers, digital field forms (fiss site and pscis assessment) will be 
burned and styled as part of a QGIS project.  This project can subsequently be turned into a mergin project on the cloud 
for collaboration. Define the 1. name of the directory to be created and 2. name of the QGIS `.qgs` project template file
(options are "bcfishpass_mobile.qgs" or "restoration_mobile.qgs") for the project by including it in quotes as part of 
the argument to run the script. "bcfishpass_mobile.qgs" or "bcrestoration_mobile.qgs" are stored in the `data/qgis` directory 
of this repo. 
  
        
    time ./rfp_qgis_create.sh "new_project_directory" "bcrestoration_mobile.qgs"
    

    
**Or run everything at the same time**
  		

    time ./rfp_source_bcdata.sh "'BULK', 'KLUM'" && time ./rfp_source_aws.sh "'BULK', 'KLUM'" && 
    time ./rfp_qgis_create.sh "rfp_test" "bcrestoration_mobile.qgs"


**For updates to existing projects we copy the `background_layers.gpkg` from an existing project to the repo then run one or both of 
`rfp_source_bcdata.sh` and `rfp_source_aws.sh`.  This will update the `background_layers.gpkg` with new data and in the
case of `rfp_source_aws.sh` will produce a new `habitat_lateral.tif` file**.  Here is an example of how to do this:
  
    cp ~/Projects/gis/rfp_test/background_layers.gpkg ~/Projects/repo/dff-2022/scripts/qgis/background_layers.gpkg
  
  <br>
  
Run the update:
  
    time ./rfp_source_bcdata.sh "'BULK', 'KLUM'" "update" && time ./rfp_source_aws.sh "'BULK', 'KLUM'"
    
    time ./rfp_source_bcdata.sh "'ADMS'" "update" && time ./rfp_source_aws.sh "'BULK'"

  
  <br>
  
Move the `gpkg` and the `tiff` back to its directory:
  
    mv ~/Projects/repo/dff-2022/scripts/qgis/background_layers.gpkg ~/Projects/gis/rfp_test/background_layers.gpkg
    
    mv ~/Projects/repo/dff-2022/scripts/qgis/habitat_lateral.tif ~/Projects/gis/rfp_test/habitat_lateral.tif
    
Note - if `background_layers.gpkg` is present and `update` is not provided as the second argument to `rfp_source_bcdata.sh` 
the script will ask the user if they want to start over (yes) or update the existing geopackage (no).
    

## mergin_status_sum.sh
This script will create a file called  mergin_status_sum.txt  in the current directory. It will contain the status of all projects in the  newgraph  namespace provided those files are in directories in `~/Projects/gis/`. 

