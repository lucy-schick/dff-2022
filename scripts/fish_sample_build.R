#'  build a raw field form template using the excel file as the template for our template

source('scripts/packages.R')

#' name the project directory we are burning to
dir_project <- 'bcfishpass_20230516'

#' name the form using the date and time
#' we should be able to name the form the same in the active project but the files can be versioned
# file_name <- paste0('form_fiss_site_', format(lubridate::now(), "%Y%m%d"))

#' define your utm zone.  This can cause errors if you use the form in more than
#' one zone!!!!! beware
utm_zone <- 9

#' import the fish data submission template (needs to be in the data directory)
#' because we want to keep the backup file clean for the value maps and because
#' we are not worried about version controlling this data we turn the `backup` function to `FALSE`
#' we need to create a 1-N relation, because one site can have multiple fish captured
#' create one form that contains site data and characteristics, and one form that has only fish sampling data

# only pull columns for fish data that will change within each site
fish_coll <- fpr::fpr_import_hab_con(backup = F, row_empty_remove = T) %>%
  pluck('step_3_individual_fish_data') %>%
  select(local_name, species:weight_g, comments) %>%
  slice(1)

# pull out site info from step 2
fish_site <- fpr::fpr_import_hab_con(backup = F, row_empty_remove = T) %>%
  pluck('step_2_fish_coll_data') %>%
  select(gazetted_name, local_name, temperature_c:turbidity, sampling_method, ef_seconds:frequency) %>%
  slice(1)

# see the names of the columns
names(fish_coll)
names(fish_site)

#' name the forms using the date and time
#' we should be able to name the forms the same in the active project but the files can be versioned

file_name_site <- paste0('form_fish_site_', format(lubridate::now(), "%Y%m%d%H%m"))
file_name_fish <- paste0('form_fish_sample_', format(lubridate::now(), "%Y%m%d%H%m"))

form_prep1 <- fish_site %>%
  # add some columns of our own
  dplyr::mutate(date_time_start = NA_POSIXct_,
                utm_easting = NA_integer_,
                utm_northing = NA_integer_,
                mergin_user = NA_character_,
                surveyor_1 = NA_character_,
                surveyor_2 = NA_character_,
                surveyor_3 = NA_character_,
                camera_id = NA_character_,
                gps_id = NA_character_,
                gps_waypoint_number = NA_character_,
                photo_site_bottom = NA_character_,
                photo_site_top = NA_character_
  ) %>%
  # populate utm fields with a location so we can use to burn geopackage
  mutate(utm_easting = 687879,
         utm_northing = 6020659) %>%
  # make it a spatial file so we can burn it as a geopackage right into our mergin file of choice
  sf::st_as_sf(coords = c("utm_easting", "utm_northing"),
               crs = 32600 + utm_zone, remove = F) %>%
  # put it into albers so we can use it anywhere
  sf::st_transform(crs = 3005) %>%
  relocate(date_time_start,
           mergin_user,
           contains('surveyor'),
           contains('name'),
           matches('utm')) %>%
  relocate(matches('photo'), .after = last_col()) %>%
  # burn to test project for now, will burn to dff when finalised
  sf::st_write(paste0('../../gis/',
                      dir_project,
                      '/',
                      file_name_site,
                      '.gpkg'),
               # turned this T now that we have time in name
               delete_layer = T)

form_prep2 <- fish_coll %>%
  # add some columns of our own
  dplyr::mutate(utm_easting = NA_integer_,
                utm_northing = NA_integer_,
                # we can tag fish sample points with a time so that we can georeference with our tracks running from the gps
                # this can tell us exactly where the fish was caught in the stream
                time_caught = NA_POSIXct_,
                tag_number = NA_character_,
                photo_fish_1 = NA_character_,
                photo_fish_2 = NA_character_
  ) %>%
  # populate utm fields with a location so we can use to burn geopackage
  mutate(utm_easting = 687879,
         utm_northing = 6020659) %>%
  # make it a spatial file so we can burn it as a geopackage right into our mergin file of choice
  sf::st_as_sf(coords = c("utm_easting", "utm_northing"),
               crs = 32600 + utm_zone, remove = F) %>%
  # put it into albers so we can use it anywhere
  sf::st_transform(crs = 3005) %>%
  # burn to test project for now, will burn to dff when finalised
  sf::st_write(paste0('../../gis/',
                      dir_project,
                      '/',
                      file_name_fish,
                      '.gpkg'),
               # turned this T now that we have time in name
               delete_layer = T)

  # sf::st_write('data/qgis/form_fish_sample.gpkg', delete_layer = T)
