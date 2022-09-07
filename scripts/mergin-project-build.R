# build a complete mergin project directory with all the files and styleing
# we need one watershed group at a time.

source('scripts/packages.R')



# name your watershed group
wsg <- 'PARS'

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
table <- "pscis_assessment_svw"
alias <- "p"

schema_table_alias <-  paste0(schema, '.', table, ' ', alias)

# clip a layer and burn to
sql <- glue::glue_sql("SELECT * FROM {schema_table_alias} INNER JOIN whse_basemapping.fwa_watershed_groups_poly w ON ST_Intersects(w.geom, p.geom) WHERE w.watershed_group_code IN ({wsg*})",
                      .con = conn)

# this works but doesn't abtract
sql <- glue::glue_sql("SELECT * FROM whse_fish.pscis_assessment_svw p INNER JOIN whse_basemapping.fwa_watershed_groups_poly w ON ST_Intersects(w.geom, p.geom) WHERE w.watershed_group_code IN ({wsg*})",
                      .con = conn)

# this works but is strongly discouraged https://db.rstudio.com/best-practices/run-queries-safely/
sql <- paste0("SELECT * FROM ", schema_table_alias, " INNER JOIN whse_basemapping.fwa_watershed_groups_poly w ON ST_Intersects(w.geom, p.geom) WHERE w.watershed_group_code IN ('PARS')")

query <- DBI::dbSendQuery(conn, sql)
df <- DBI::dbFetch(query)
dbClearResult(query)


