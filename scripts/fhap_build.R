# build the FHAP digital form

source('scripts/packages.R')
source('scripts/functions.R')

form_raw <- readxl::read_xlsx('data/FHAP_template.xlsx')

form_types <- readxl::read_xlsx('data/FHAP_template.xlsx',
                                skip = 4)


cols_to_add <- c('stream',
                 'date',
                 'utm_start',
                 'utm_end',
                 'surveyor_1',
                 'surveyor_2')

form_col_names <- form_raw %>%
  wkb_col_names() %>%
  stringr::str_replace_all(., 'd_s_utm_', '')

# this will make a tibble but maybe we make one with populated options and let it guess
form_col_names %>% purrr::map_dfc(setNames, object = list(character()))
