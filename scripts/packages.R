# Choose if you would like to update packages or not
update_packages <- FALSE



# ensure pak is installed and up to date from CRAN
if (!requireNamespace("pak", quietly = TRUE)) {
  install.packages("pak")
} else {
  # Only run this if an update is needed
  current <- packageVersion("pak")
  latest <- package_version(available.packages()["pak", "Version"])
  if (current < latest) {
    pak::pak("pak")  # uses pak to update itself = no popup
  }
}


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


pkgs_cran <- c(
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
  'xlsx'
)

# we need the development version of pagedown as of 20200303 https://github.com/rstudio/pagedown/issues/265
# remotes::install_github('rstudio/pagedown')

pkgs_gh <- c(
  "newgraphenvironment/fpr",
  "poissonconsulting/fwapgr",
  "poissonconsulting/poisspatial",
  "lucy-schick/fishbc@updated_data",
  "crsh/citr",
  "rstudio/pagedown"
  # "poissonconsulting/subfoldr2")
)


pkgs_all <- c(pkgs_cran,
              pkgs_gh)

# install or upgrade all the packages with pak
if(update_packages){
  lapply(pkgs_all, pak::pkg_install, ask = FALSE)
}

# load all the packages
pkgs_ld <- c(pkgs_cran,
             basename(pkgs_gh))

lapply(pkgs_ld,
       require,
       character.only = TRUE)


