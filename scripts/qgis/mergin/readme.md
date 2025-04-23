
Requires virtual environment built with follow run from **main project directory** (`bcdata` environment is in `scripts/qgis`):
    
    conda env create -f environment.yml
    conda activate dff2

## mergin_status_sum.sh
This script will create a file called  mergin_status_sum.txt  in the current directory. 
It will contain the status of all projects in the  newgraph  namespace provided those files are in directories in `~/Projects/gis/`. 
