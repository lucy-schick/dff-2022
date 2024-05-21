#'  build a raw field form template using the excel file as the template for our template

source('scripts/packages.R')

#' name the project directory we are burning to
dir_project <- 'bcfishpass_20230516'

#' name the forms using the date and time
#' we should be able to name the forms the same in the active project but the files can be versioned

file_name_fish <- paste0('form_fish_sample_', format(lubridate::now(), "%Y%m%d%H%m"))

#' define your utm zone.  This can cause errors if you use the form in more than
#' one zone!!!!! beware
utm_zone <- 9

#' import the fish data submission template (needs to be in the data directory)
#' because we want to keep the backup file clean for the value maps and because
#' we are not worried about version controlling this data we turn the `backup` function to `FALSE`
#' we need to create a 1-N relation, because one site can have multiple fish captured
#' create one form that contains site data and characteristics, and one form that has only fish sampling data

# only pull columns for fish data that will change within each site
fish_coll <- fpr::fpr_import_hab_con(backup = F, row_empty_remove = T) |>
  pluck('step_3_individual_fish_data') |>
  select(local_name, species:weight_g, comments) |>
  slice(1)

# # pull out site info from step 2
fish_site <- fpr::fpr_import_hab_con(backup = F, row_empty_remove = T) |>
  pluck('step_2_fish_coll_data') |>
  select(sampling_method:frequency) |>
  slice(1)

form_prep <- bind_cols(fish_coll, fish_site)

# see the names of the columns
names(form_prep)

form_prep2 <- form_prep |>
  # add some columns of our own
  dplyr::mutate(utm_easting = NA_integer_,
                utm_northing = NA_integer_,
                # we can tag fish sample points with a time so that we can georeference with our tracks running from the gps
                # this can tell us exactly where the fish was caught in the stream
                time_caught = NA_POSIXct_,
                tag_number = NA_character_,
                photo_fish_1 = NA_character_,
                photo_fish_2 = NA_character_
  ) |>
  # populate utm fields with a location so we can use to burn geopackage
  mutate(utm_easting = 687879,
         utm_northing = 6020659) |>
  # make it a spatial file so we can burn it as a geopackage right into our mergin file of choice
  sf::st_as_sf(coords = c("utm_easting", "utm_northing"),
               crs = 32600 + utm_zone, remove = F) |>
  # put it into albers so we can use it anywhere
  sf::st_transform(crs = 3005) |>
  sf::st_write('data/qgis/form_fish_sample.gpkg', delete_layer = T)


