# `dfp_source_bcdata.sh`, `dfp_source_aws.sh` and `dfp_qgis_create_bcfishpass.sh`
These are the scripts for creating projects ready for upload to mergin server.  

Requires virtual environment built with:
    
    conda env create -f environment.yml
    conda activate dff

**Note: Project directory defined in call to 
`qgis_create.sh` must not be present at ~Projects/gis/{project_directory} or it will not be created.**

To download and clip layers for an area of interest defined by a list of watershed groups and load to a geopackage:


## `dfp_source_bcdata.sh`

  1. edit `dfp_source_bcdata.txt` as needed, listing all layers to be downloaded via bcdata/WFS
  2. if a file named `background_layers.gpkg` exists in the `scripts/qgis` directory it will ask the user if they want 
  to start over (yes) or update the existing geopackage (no). 
  2. Once input has been put to console the script will download these layers to `.geojson`, for given study area 
  (optionally with timer - `time `), loaded to `background_layers.gpkg` with clip (or query) associated with watershed 
  group polygons supplied in command to run the script:
  
  
    time ./dfp_source_bcdata.sh "'BULK', 'KLUM'"
  
If downloads in `dfp_source_bcdata.sh` fail, re-run `dfp_source_bcdata.sh` until downloads are complete.

## dfp_source_aws.sh  
  1. download data from file sources and load to `background_layers.gpkg` with clip from watershed group polygons
   (lateral_hbitat.tif) or by query.  Note that the `background_layers.gpkg` must be in the `scripts/qgis` directory:
  
  		
    time ./dfp_source_aws.sh "'BULK', 'KLUM'"
  		
  		

## `dfp_qgis_create_bcfishpass.sh` 

Script will create the directory where the spatial layers, digital field forms (fiss site and pscis assessment) will be 
burned and styled as part of a QGIS project.  This project can subsequently be turned into a mergin project on the cloud 
for collaboration. Define the name of the directory to be created for the project by including it in quotes as part of 
the argument to run the script:
  
        
    time ./dfp_qgis_create_bcfishpass.sh "new_project_directory"
    

    
**Or run everything at the same time**
  		

    time ./dfp_source_bcdata.sh "'CRKD', 'PARS'" && time ./dfp_source_aws.sh "'CRKD','PARS'" && 
    time ./dfp_qgis_create_bcfishpass.sh "new_project_directory"


**For updates to existing projects we copy the `background_layers.gpkg` from an existing project to the repo then run one or both of 
`dfp_source_bcdata.sh` and `dfp_source_aws.sh`.  This will update the `background_layers.gpkg` with new data and in the
case of `dfp_source_aws.sh` will produce a new `habitat_lateral.tif` file**.  Here is an example of how to do this:
  
    cp ~/Projects/gis/sern_peace_fwcp_2023/background_layers.gpkg ~/Projects/repo/dff-2022/scripts/qgis/background_layers.gpkg
  
  <br>
  
Run the update:
  
    time ./dfp_source_bcdata.sh "'CRKD', 'PARS'" && time ./dfp_source_aws.sh "'CRKD','PARS'"
  
  <br>
  
Move the `gpkg` and the `tiff` back to its directory:
  
    mv ~/Projects/repo/dff-2022/scripts/qgis/background_layers.gpkg ~/Projects/gis/sern_peace_fwcp_2023/background_layers.gpkg
    mv ~/Projects/repo/dff-2022/scripts/qgis/habitat_lateral.tif ~/Projects/gis/sern_peace_fwcp_2023/habitat_lateral.tif
    


