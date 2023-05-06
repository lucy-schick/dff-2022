# background layers

To download and clip layers for an area of interest defined by a list of watershed groups:

1. edit `bcdata.txt` as needed, listing all layers to be downloaded via bcdata/WFS
2. download these layers to .geojson, for given study area (optionally with timer):
	
		$ time ./bcdata.sh "'BABL','BABR','BULK','KISP','KLUM','LKEL','LSKE','MORR','MSKE','SPAT','SUST','TAKL','USKE','ZYMO'"

3. download data from file sources and load all sources (including bcdata layers) to `background_layers.gpkg`:
		
		$ time ./background_layers.sh "'BABL','BABR','BULK','KISP','KLUM','LKEL','LSKE','MORR','MSKE','SPAT','SUST','TAKL','USKE','ZYMO'"

If downloads in #2 fail, re-run `bcdata.sh` until downloads are complete (Only files that do not exist are re-downloaded). In event of a failed download, be sure to remove the .geojson file created by the failed download.