# `bcdata.sh`, `background_layers.sh` and `qgis_create.sh`
These are the scripts for creating projects ready for upload to mergin server.  Project directory defined in call to `qgis_create.sh` must not be present at ~Projects/gis/{project_directory} or it will not be created.

To download and clip layers for an area of interest defined by a list of watershed groups:

  1. edit `bcdata.txt` as needed, listing all layers to be downloaded via bcdata/WFS
  2. download these layers to .geojson, for given study area (optionally with timer - `time `):
  
  
  		$ time ./bcdata.sh "'BULK', 'KLUM'"
  

  
  3. download data from file sources and load all sources (including bcdata layers) to `background_layers.gpkg` with clip from watershed group polygons when necessary (`bcdata` layers):
  		
  		$ time ./background_layers.sh "'BULK', 'KLUM'"
  		
  		

If downloads in #2 fail, re-run `bcdata.sh` until downloads are complete (Only files that do not exist are re-downloaded). In event of a failed download, be sure to remove the .geojson file created by the failed download.


  4. `qgis_create.sh` script will create the directory where the spatial layers, digital field forms (fiss site and pscis assessment) will be burned and styled as part of a QGIS project.  This project can subsequently be turned into a mergin project on the cloud for collaboration. Define the name of the directory to be created for the project by including it in quotes as part of the argument to run the script:
  
        
    $ time ./qgis_create.sh "new_project_directory"
    
    <br>
    
**Or run everything at the same time**
  		

    $ time ./bcdata.sh "'CRKD', 'PARS'" && time ./background_layers.sh "'CRKD','PARS'" && time ./qgis_create.sh "new_project_directory"
    $ time ./bcdata.sh "'BULK'" && time ./background_layers.sh "'BULK'" && time ./qgis_create.sh "new_project_directory"

# bcdata_update.sh

Update existing `background_layers.sh` geopackage with select `bcdata` layers specified in `bcdata_update.txt` which points to a list of layers as `schema.table` as specified by https://catalogue.data.gov.bc.ca/ . **WARNING:** This script assumes the `background_layers.gpkg` is in the `scripts/qgis` directory so lives a bit dangerously because `background_layers.gpkg` is removed from the directory if `background_layers.sh` is run. For this reason we must be sure to `mv` it back to its home after the update.

<br>

To copy to and from the repo before and after updates - cmd line examples are below.

    $ cp ~/Projects/gis/sern_peace_fwcp_2023/background_layers.gpkg ~/Projects/repo/dff-2022/scripts/qgis/background_layers.gpkg
  
  <br>
  
    $ time ./bcdata_update.sh "'CRKD', 'CARP', 'PARS'"

<br>

After the gpkg is updated.

    $ mv ~/Projects/repo/dff-2022/scripts/qgis/background_layers.gpkg ~/Projects/gis/sern_peace_fwcp_2023/background_layers.gpkg 

# aws_update.sh

For updating existing `background_layers.sh` geopackage with watershed group optimized `.fdb` layers stored on `aws`. **WARNING:** This script assumes the `background_layers.gpkg` is in the `scripts/qgis` directory of this repo when this is run so lives a bit dangerously because `background_layers.gpkg` will be removed from the directory if `background_layers.sh` is run. For this reason we must be sure to `mv` it back to its home after the update.
  
    $ cp ~/Projects/gis/sern_peace_fwcp_2023/background_layers.gpkg ~/Projects/repo/dff-2022/scripts/qgis/background_layers.gpkg
  
  <br>
  
    $ time ./aws_update.sh "'CRKD', 'CARP', 'PARS'"
  
  <br>
  
After the gpkg is updated.
  
    $ mv ~/Projects/repo/dff-2022/scripts/qgis/background_layers.gpkg ~/Projects/gis/sern_peace_fwcp_2023/background_layers.gpkg 
