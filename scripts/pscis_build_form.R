# build a raw field form template using the excel file as the template for our template

source('scripts/packages.R')


# import the pscis template
form_prep1 <- fpr::fpr_import_pscis()

# see the names of the columns
names(form_prep1)

# which utm zone do all the coordinates fall into?
unique(form_prep1$utm_zone)

# name the project directory we are burning to
dir_project <- 'bcfishpass_cown_vict'
#dir_project <- 'bcfishpass_southisland_202201028'

# name the form using the date and time
# we should be able to name the form the same in the active project but the files can be versioned
# seems safer...
file_name <- paste0('form_pscis_', format(lubridate::now(), "%Y%m%d"))

#' define your utm zone.  This can cause errors if you use the form in more than
#' one zone!!!!! beware
utm_zone <- 9

form_prep2 <- form_prep1 %>%
  # example - drop  columns that we don't need - there are more
  # select(-contains('score')) %>%
  # select(-rowid,
  #        -site_id) %>%
  # example - add some columns of our own plus the ones for MoTi (see the other script but note the columns we already have! photo fields?)
  dplyr::mutate(date_time_start = NA_POSIXct_,
                mergin_user = NA_character_,
                surveyor_1 = NA_character_,
                surveyor_2 = NA_character_,
                surveyor_3 = NA_character_,
                camera_id = NA_character_,
                gps_id = NA_character_,
                gps_waypoint_number = NA_character_,
                moti_chris_culvert_id = NA_integer_,
                habitat_comment = NA_character_, #let's encourage the tinyest bit of info here
                utm_corrected = NA_character_, #this should be yes/no if defaults for $x and $y not used
                # utm_corrected_easting = NA_real_, #constraints 6digits long
                # utm_corrected_northing = NA_real_, #constraints 7digits long
                # condition = NA_integer_,
                erosion_issues = NA_integer_,
                embankment_fill_issues = NA_integer_,
                blockage_issues = NA_integer_,
                condition_rank = NA_integer_,
                condition_notes = NA_character_,
                likelihood_flood_event_affecting_culvert = NA_integer_,
                consequence_flood_event_affecting_culvert = NA_integer_,
                climate_change_flood_risk = NA_integer_,
                vulnerability_rank = NA_integer_,
                climate_notes = NA_character_,
                traffic_volume = NA_integer_,
                community_access = NA_integer_,
                cost = NA_integer_,
                constructability = NA_integer_,
                fish_bearing = NA_integer_,
                environmental_impacts = NA_integer_,
                priority_rank = NA_integer_,
                overall_rank = NA_integer_,
                priority_notes = NA_character_,
                mergin_user = NA_character_,
                photo_road = NA_character_,
                photo_upstream = NA_character_,
                photo_downstream = NA_character_,
                photo_inlet = NA_character_,
                photo_barrel = NA_character_,
                photo_outlet = NA_character_,
                photo_condition = NA_character_,
                photo_embankment_fill = NA_character_,
                photo_blockage = NA_character_,
                photo_extra1 = NA_character_,
                photo_extra2 = NA_character_,
                photo_extra1_tag = NA_character_,
                photo_extra2_tag = NA_character_
  ) %>%
  # make it a spatial file so we can burn it as a geopackage right into our mergin file of choice
  # !!!!!this won't work until you rename 'lon' and 'lat' so they are our x and y columns for this dataset (hint: look at the column names)
  # don't forget to put it in the right crs too!! - google the crs id for utm zone 9
  sf::st_as_sf(coords = c("easting", "northing"),
               crs = 32600 + utm_zone, remove = F) %>%
  # mutate(date = NA_POSIXct_) %>%
  # reorder the columns - more to do than this
  select(date_time_start,
         pscis_crossing_id,
         my_crossing_reference,
         crew_members,
         matches('surveyor_'),
         matches('_id'),
         gps_waypoint_number,
         stream_name,
         matches('road_'),
         matches('crossing'),
         diameter_or_span_meters,
         length_or_width_meters,
         assessment_comment,
         habitat_comment,
         everything())

glimpse(form_prep1)
glimpse(form_prep2)


#change it to a province wide crs for now and burn it to your project of choice
form_prep2 %>%
  # lets try transforming to the utm of the area we are working in
  # for our manual utms. we need to watch for watershed groups that overlap more than one zone though
  sf::st_transform(crs = 32600 + utm_zone) %>%
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
