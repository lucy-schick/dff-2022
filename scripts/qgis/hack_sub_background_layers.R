# here is a hack to sub in the streams and crossings using R direct from PG

# place the gpkg in the scripts/qgis directory
source('scripts/packages.R')

# these are the shared server params
conn <- DBI::dbConnect(
  RPostgres::Postgres(),
  dbname = Sys.getenv('PG_DB_SHARE'),
  host = Sys.getenv('PG_HOST_SHARE'),
  port = Sys.getenv('PG_PORT_SHARE'),
  user = Sys.getenv('PG_USER_SHARE'),
  password = Sys.getenv('PG_PASS_SHARE')
)

query <- "SELECT *
   FROM bcfishpass.crossings
   WHERE watershed_group_code IN ('ADMS', 'MORK', 'UFRA', 'CANO', 'LNTH', 'UNTH', 'MURT', 'CLWR', 'CLRH', 'REVL')"


##import and grab the coordinates - this is already done
sf::st_read(conn, query =  query) %>% st_write('scripts/qgis/background_layers.gpkg', delete_layer =TRUE, layer = 'crossings')

query <- "SELECT *
   FROM bcfishpass.streams
   WHERE watershed_group_code IN ('ADMS', 'MORK', 'UFRA', 'CANO', 'LNTH', 'UNTH', 'MURT', 'CLWR', 'CLRH', 'REVL')"


##import and grab the coordinates - this is already done
sf::st_read(conn, query =  query) %>% st_write('scripts/qgis/background_layers.gpkg', delete_layer =TRUE, layer = 'streams')
