# # install.packages('pacman')
#
# pacman::p_load(
#   tidyverse,
#   readwritesqlite,
#   sf,
#   readxl,
#   janitor,
#   leafem,
#   leaflet,
#   plotKML,
#   kableExtra,
#   httr,
#   RPostgres,
#   RPostgreSQL,
#   DBI,
#   magick,
#   bcdata,
#   jpeg,
#   datapasta,
#   knitr,
#   data.table,
#   lubridate,
#   forcats,
#   bookdown,
#   fasstr,
#   # flextable,
#   english,
#   leaflet.extras,
#   ggdark,
#   pdftools,
#   geojsonsf,
#   bit64 ##to make integer column type for pg
#   # gert  ##to track git moves
#   ##leafpop I think
#   )



# install.packages('pacman')


package_list <- c(
  # plotKML,  #plot kml needed to go ahead of other packages for some reason and wants to reinstall everytime.... not sure why. hash out for now
  'tidyverse',
  'sf',
  'readxl',
  'janitor',
  'kableExtra',
  'httr',
  'RPostgres',
  'RPostgreSQL',
  'DBI',
  'magick',
  'bcdata',
  'jpeg',
  'datapasta',
  'knitr',
  'data.table',
  'lubridate',
  'forcats',
  'bookdown',
  'geojsonio',
  'xlsx',
  'fpr'
)
lapply(package_list,
       require,
       character.only = TRUE)

# we need the development version of pagedown as of 20200303 https://github.com/rstudio/pagedown/issues/265
# remotes::install_github('rstudio/pagedown')


pacman::p_load_gh("poissonconsulting/fwapgr",
                  'poissonconsulting/poisspatial',
                  "crsh/citr",
                  'rstudio/pagedown',
                  "poissonconsulting/fishbc")
# "poissonconsulting/subfoldr2")
