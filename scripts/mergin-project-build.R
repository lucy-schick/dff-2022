# build a complete mergin project directory with all the files and styleing
# we need one watershed group at a time.

source('scripts/packages.R')



# name your watershed group
wsg <- c('ZYMO', 'BULK', 'KISP', 'MORR')

# name your project
name_prj <- paste0('bcfishpass_', stringr::str_to_lower(wsg))

# name the directory where the projects are kept. This is a path relative
# to where this repo is kept
name_dir <- '../../gis/mergin/'

# create the project directory if it doesn't already exist
dir.create(paste0(name_dir, name_prj))

# connect to the database.  Working locally now but this could
# obviously be tweaked to be a remote database

conn <- DBI::dbConnect(
  RPostgres::Postgres(),
  dbname = 'bcfishpass',
  host = 'localhost',
  port = 5432,
  user = 'postgres',
  password = Sys.getenv('PG_PASS')
)

# define the schema, table and alias for a layer we want to clip and burn to file
schema <- "whse_fish"
table <- "pscis_habitat_confirmation_svw"
alias <- "p"

schema_table_alias <-  paste0(schema, '.', table, ' ', alias) %>% noquote()

# clip a layer and burn to remove quotes like https://stackoverflow.com/questions/70395987/how-to-remove-quotes-around-string-using-glue-sql-and-sub-inside-a-loop
# need to exclude when inside of brackets as per https://stackoverflow.com/questions/10038650/how-to-exclude-something-from-being-replaced-by-gsub
# sql <- gsub("'", '', perl = T, glue::glue_sql("SELECT * FROM {schema_table_alias*} INNER JOIN whse_basemapping.fwa_watershed_groups_poly w ON ST_Intersects(w.geom, p.geom) WHERE w.watershed_group_code IN ('ZYMO')",
#             .con = conn))


# # this works but doesn't abtract
# sql <-glue::glue_sql("SELECT * FROM whse_fish.pscis_habitat_confirmation_svw p INNER JOIN whse_basemapping.fwa_watershed_groups_poly w ON ST_Intersects(w.geom, p.geom) WHERE w.watershed_group_code IN ({wsg*})",
#                       .con = conn)

#
# query <- "SELECT * FROM whse_fish.pscis_habitat_confirmation_svw p INNER JOIN whse_basemapping.fwa_watershed_groups_poly w ON ST_Intersects(w.geom, p.geom) WHERE w.watershed_group_code IN ('ZYMO', 'KISP', 'BULK', 'MORR')"
#
# df <- st_read(query = query, dsn = conn)
#
#
# # this works but is strongly discouraged https://db.rstudio.com/best-practices/run-queries-safely/
# live dangerous or take the time to
sql <- paste0("SELECT p.*, w.watershed_group_code FROM ", schema_table_alias, " INNER JOIN whse_basemapping.fwa_watershed_groups_poly w ON ST_Intersects(w.geom, p.geom) WHERE w.watershed_group_code IN ('BULK', 'MORR', 'KISP', 'ZYMO')")

df <- st_read(query = sql, dsn = conn)

#
# query <- DBI::dbSendQuery(conn, sql)
# df <- DBI::dbFetch(query)
# dbClearResult(query)




# burn it to the repo
df %>%
  sf::st_write(paste0('../../gis/mergin/bcfishpass_skeena_20220823/clipped_',
                      table,
                      '.gpkg'),
               delete_layer = T)


