source('scripts/packages.R')

# import geopackages and rearrange then burn to csv

# name the project directory we are pulling from
dir_project <- 'bcfishpass_20230516'

# find all individual fhap forms from project
form_names <- list.files(path = paste0('../../gis/',
                                        dir_project),
                          pattern = glob2rx('form_fhap_*.gpkg'),
                          full.names = T
)

# read all the forms into a list of dataframes using colwise to guess the column types
form_prep <- form_names %>%
  purrr::map(sf::st_read) %>%
  purrr::map(plyr::colwise(type.convert)) %>%
  # name the data.frames so we can add it later as a "source" column - we use basename to leave the filepath behind
  purrr::set_names(nm = basename(form_names)) %>%
  bind_rows(.id = 'source') #%>% backup imported form in new repo directory (not built yet)
#readr::write_csv(paste0('data/inputs_extracted/mergin_backups/form_fish_site_raw_', format(lubridate::now(), "%Y%m%d"), '.csv'), na = '')
