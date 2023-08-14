source('scripts/packages.R')

# import geopackages and rearrange then burn to csv
# import fish sampling site info gpckg for transfer to step 2 of habitat confirmations
# import individual fish data gpckg for transfer to step 3 of habitat confirmations

# name the project directory we are pulling from
dir_project <- 'bcfishpass_20230516'

# Individual Fish Data ------------

# find all individual fish data forms from project
form_names2 <- list.files(path = paste0('../../gis/',
                                       dir_project),
                         pattern = glob2rx('form_fish_sample_*.gpkg'),
                         full.names = T
)

# read all the forms into a list of dataframes using colwise to guess the column types
form_prep2 <- form_names2 %>%
  purrr::map(sf::st_read) %>%
  purrr::map(plyr::colwise(type.convert)) %>%
  # name the data.frames so we can add it later as a "source" column - we use basename to leave the filepath behind
  purrr::set_names(nm = basename(form_names2)) %>%
  bind_rows(.id = 'source') #%>% backup imported form in new repo directory (not built yet)
#readr::write_csv(paste0('data/inputs_extracted/mergin_backups/form_fish_site_raw_', format(lubridate::now(), "%Y%m%d"), '.csv'), na = '')
