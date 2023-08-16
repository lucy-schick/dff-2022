# build the FHAP digital form

source('scripts/packages.R')

#' name the project directory we are burning to
dir_project <- 'bcfishpass_20230516'

#' name the form using the date and time
#' we should be able to name the form the same in the active project but the files can be versioned
file_name <- paste0('form_fhap_', format(lubridate::now(), "%Y%m%d"))


#' define your utm zone.  This can cause errors if you use the form in more than
#' one zone!!!!! beware
utm_zone <- 11

#' import the fhap submission template (needs to be in the data directory)
#' because we want to keep the backup file clean for the value maps and because
#' we are not worried about version controlling this data we turn the `backup` function to `FALSE`

form_raw <- readxl::read_xlsx('data/FHAP_template.xlsx', skip = 1)

# see the names of the columns
names(form_raw)

fhap <- form_raw %>%
  janitor::clean_names() %>%
  # add some columns of our own
  dplyr::mutate(stream = NA_character_,
                weather = NA_character_,
                date = NA_POSIXct_,
                waypoint_start = NA_integer_,
                waypoint_end = NA_integer_,
                crew_members = NA_character_,
                temperature = as.numeric(NA_character_),
                conductivity = as.numeric(NA_character_),
                pH = as.numeric(NA_character_),
                disturbance2 = NA_character_,
                disturbance3 = NA_character_,
                photo_top = NA_character_,
                photo_bottom = NA_character_,
                photo_extra_1 = NA_character_,
                photo_extra_1_tag = NA_character_,
                photo_extra_2 = NA_character_,
                photo_extra_2_tag = NA_character_,
                method_site_card = NA_character_
  ) %>%
  # column QA
  # there are columns with similar names because they are used in different groups, specify group in column name, then group columns in mergin form
  rename(type_hab_unit = type_5,
         bankfull_depth = bankfull_m_9,
         water_depth1 = water_m,
         water_depth2 = x11,
         water_depth3 = x12,
         channel_width = bankfull_m_13,
         gravel_type = x22,
         total_lwd = x23,
         cover_type1 = type_27,
         cover_percent1 = percent_28,
         cover_type2= type_29,
         cover_percent2 = percent_30,
         off_channel_hab_type = type_31,
         disturbance1 = x34,
         rip_veg_type = type_37
         ) %>%
  # there were three columns for disturbance indicators,
  # drop unused columns, can be turned into one and can use dropdown box in form
  select(-x35, -x36) %>%
  # populate utm fields with a location so we can use to burn geopackage
  mutate(utm_easting = 687879,
         utm_northing = 6020659) %>%
  # make it a spatial file so we can burn it as a geopackage right into our mergin file of choice
  sf::st_as_sf(coords = c("utm_easting", "utm_northing"),
               crs = 32600 + utm_zone, remove = F) %>%
  # put it into albers so we can use it anywhere
  sf::st_transform(crs = 3005) %>%
  sf::st_write('data/qgis/form_fhap.gpkg', delete_layer = T)
