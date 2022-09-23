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
sql <- paste0("SELECT p.*, w.watershed_group_code FROM ", schema_table_alias, " INNER JOIN whse_basemapping.fwa_watershed_groups_poly w ON ST_Intersects(w.geom, p.geom) WHERE w.watershed_group_code IN ('BULK', 'MORR', 'KISP', 'ZYMO')")

# holy crap this works
sql <- paste0("SELECT a.*, w.watershed_group_code FROM ",
              paste0(schema, '.', table, ' a') %>% noquote(),
              " INNER JOIN whse_basemapping.fwa_watershed_groups_poly w ON ST_Intersects(w.geom, a.geom) WHERE w.watershed_group_code IN (",
              paste(shQuote(wsg), collapse=", ") %>% noquote(),
              ")")

df <- st_read(query = sql, dsn = conn)

# make a function out of it
sql_multi <- function(schema1 = schema,
                        table1 = table,
                        wsg1 = wsg){
  paste0("SELECT a.*, w.watershed_group_code FROM ",
         paste0(schema1, '.', table1, ' a') %>% noquote(),
         " INNER JOIN whse_basemapping.fwa_watershed_groups_poly w ON ST_Intersects(w.geom, a.geom) WHERE w.watershed_group_code IN (",
         paste(shQuote(wsg1), collapse=", ") %>% noquote(),
         ")")
}

schema <- c('whse_fish', 'whse_fish')
table <- c('pscis_assessment_svw', 'pscis_habitat_confirmation_svw')
wsg <- c('BULK', 'BULK')

# build sql for a bunch of layers at the same time
sql <- clip_layers()

# read in multiple layers
st_read_multi <- function(x){
  st_read(query = x, dsn = conn)
}

df %>%
  sf::st_write(paste0('../../gis/mergin/bcfishpass_skeena_20220823/',
                      table,
                      '.gpkg'),
               delete_layer = T)

# having issues with this and the deparse call
st_write_multi <- function(dat,
                           gpkg_name = 'bcfishpass_mergin'){
  this <- as.call(dat)
  nm <- deparse(substitute(this))
  dat %>%
    sf::st_write(paste0('../../gis/mergin/test/',
                        gpkg_name,
                      '.gpkg'),
                 nm,
               delete_layer = T)
}

go <- sql_multi() %>%
  map(st_read_multi) %>%
  purrr::set_names(nm = table) %>%
# breaks here
  map(st_write_multi)

# trying to work out why deparse(substitute) is not working for a list

# this works
pluck_seperate <- go %>% pluck(1)
deparse(substitute(pluck_seperate))

# but this doesn't
go %>% pluck(1) %>% deparse(substitute())
deparse(substitute(go %>% pluck(1)))


# burn it to the repo
df %>%
  sf::st_write(paste0('../../gis/mergin/bcfishpass_skeena_20220823/',
                      table,
                      '.gpkg'),
               delete_layer = T)


