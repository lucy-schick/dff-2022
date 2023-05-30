# `*_build_*.R` scripts
scripts produce tables and relation/value maps for digital field forms.

# `*_tidy.R` scripts 
  1. clean data from geopackages for copy and paste into provincial submission templates 
  2. build site directories, rename photos and copy into site directories
  3. wrangle data ready for further processing into tables for reporting
Currently not up to date due to multiple versions of srcripts related to mulitple 2022 beta forms with idiosyncrasies which reside in project repos.  Will be updated here soon.

`mergin-project-build.R` is archived and not currently in use as it has been replaced with `bcdata.sh` and `background_layers.sh` 

# background layers

To download and clip layers for an area of interest defined by a list of watershed groups:

  1. edit `bcdata.txt` as needed, listing all layers to be downloaded via bcdata/WFS
  2. download these layers to .geojson, for given study area (optionally with timer):
  
  For the Skeena minus the Work Channel - `WORC` watershed group (numerous islands)
  	
  		$ time ./bcdata.sh "'BABL','BABR','BULK','KISP','KLUM','LKEL','LSKE','MORR','MSKE','SUST','USKE','ZYMO'"
  
  3. download data from file sources and load all sources (including bcdata layers) to `background_layers.gpkg`:
  		
  		$ time ./background_layers.sh "'BABL','BABR','BULK','KISP','KLUM','LKEL','LSKE','MORR','MSKE','SUST','USKE','ZYMO'"
  		
  		Or at the same time ./bcdata.sh "'BABL','BABR','BULK','KISP','KLUM','LKEL','LSKE','MORR','MSKE','SUST','USKE','ZYMO'" && ./background_layers.sh "'BABL','BABR','BULK','KISP','KLUM','LKEL','LSKE','MORR','MSKE','SUST','USKE','ZYMO'"

If downloads in #2 fail, re-run `bcdata.sh` until downloads are complete (Only files that do not exist are re-downloaded). In event of a failed download, be sure to remove the .geojson file created by the failed download.
