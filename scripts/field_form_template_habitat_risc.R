# build a raw field form template using the excel file as the template for our template

source('scripts/packages.R')

# name the project directory we are burning to
dir_project <- 'bcfishpass_skeena_20220823'

# name the form using the date and time
# we should be able to name the form the same in the active project but the files can be versioned
# seems safer...
file_name <- paste0('form_fiss_site_', format(lubridate::now(), "%Y%m%d%H%m"))


# import the fish data submission template (needs to be in the data directory)
form_prep1 <- fpr::fpr_import_hab_con() %>%
  # pull out just the site info page for now
  pluck(4)

# see the names of the columns
names(form_prep1)

# which utm zone do all the coordinates fall into?
unique(form_prep1$utm_zone)

# for every column that contains the words width, depth gradient (except the average - 'avg' and 'method' columns) we want to
# tag them with a time so that we can georeference with our tracks running from the gps
# other thought on how to do this is to connect a hegh accuracy survey
# rod to our phones through something like avenza and run a phone track.

# identify the strings that we want the pull as columns and add time tags for
str_tags_scope <- c('width', 'gradient')
str_tags_refine <- c('avg', 'method')



# pull out the columns to tag
names_col_to_tag <- form_prep1 %>%
  select(contains(all_of(str_tags_scope))) %>%
  select(-contains(all_of(str_tags_refine))) %>%
  # just keep one row
  slice(1)

# pull out the columns that won't get tagged
names_col_no_tag <- form_prep1 %>%
  # select(-contains('width')) %>%
  # select(-contains('gradient')) %>%
  # lose the averages just for now
  select(-contains(all_of(c('average',
                            'depth',
                            'method',
                            'width',
                            'gradient'
                            )))) %>%

  # select(-contains('ave')) %>%
  # just keep one row
  slice(1)



# build an empty tibble that defines the column names for the tags
names_col_tag <- paste0(
  names(names_col_to_tag),
  '_time'
) %>%
  tibble::tibble() %>%
  purrr::set_names(nm = 'name') %>%
  mutate(value = 'time') %>%
  pivot_wider() %>%
  slice(1)


# make a tibble with the cols for time and time cols
names_time <- vctrs::vec_interleave(names(names_col_to_tag),
                                    names(names_col_tag)) %>%
                                      tibble::tibble() %>%
                                      purrr::set_names(nm = 'name') %>%
                                      mutate(value = 'time') %>%
                                      pivot_wider() %>%
                                      slice(0)

str_type_numeric <- c('average',
                      'depth',
                      'width',
                      'gradient')


# combine non-tagged columns and combined tagged columns
form_prep1 <- bind_cols(
  names_col_no_tag,
  names_time
) %>%
  # set the column types
  mutate(across(contains('average'), as.numeric)) %>%
  mutate(across(contains('depth'), as.numeric)) %>%
  mutate(across(contains('width'), as.numeric))%>%
  mutate(across(contains('gradient'), as.numeric)) %>%
  mutate(across(contains('time'), as.Date))

form_prep2 <- form_prep1 %>%
  # example - drop  columns that we don't need - there are more
  select(-contains('score')) %>%
  select(-rowid, -site_id) %>%
  # example - add some columns of our own plus the ones for MoTi (see the other script but note the columns we already have! photo fields?)
  dplyr::mutate(date_time_start = NA_Date_,
                camera_id = NA_character_,
                gps_id = NA_character_,
                gps_waypoint_id = NA_character_,
                photo_gravel1 = NA_character_,
                photo_pool1 = NA_character_,
                photo_extra1 = NA_character_,
                photo_extra2 = NA_character_,
                photo_extra1_tag = NA_character_,
                photo_extra2_tag = NA_character_
  ) %>%
  # make it a spatial file so we can burn it as a geopackage right into our mergin file of choice
  # !!!!!this won't work until you rename 'lon' and 'lat' so they are our x and y columns for this dataset (hint: look at the column names)
  # don't forget to put it in the right crs too!! - google the crs id for utm zone 9
  sf::st_as_sf(coords = c("easting", "northing"),
               crs = 32609, remove = F) %>%
  select(contains('id',
                  everything(),
                  ))


#change it to a province wide crs for now and burn it to your project of choice
form_prep2 %>%
  # lets try transforming to the utm of the area we are working in
  # for our manual utms. we need to watch for watershed groups that overlap more than one zone though
  sf::st_transform(crs = 32609) %>%
  # slice it down so it doesn't have any rows
  dplyr::slice(1) %>%
  # make this filepath whatever - this just backs out two directories and then walks into `gis`.
  sf::st_write(paste0('../../gis/mergin/',
                      dir_project,
                      '/',
                      file_name,
                      '.gpkg'),
               # turned this T now that we have time in name
               delete_layer = T)
