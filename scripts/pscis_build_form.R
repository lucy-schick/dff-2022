# build a raw field form template using the excel file as the template for our template

source('scripts/packages.R')
source('scripts/functions.R')


# import the pscis template with custom test function
form_prep1 <- tfpr_import_pscis_all() %>% bind_rows()
# see the names of the columns
names(form_prep1)

# which utm zone do all the coordinates fall into?
unique(form_prep1$utm_zone)

#------------------------------name the project directory we are burning to-----------------------------
# dir_project <- 'clay_2023'
#-------------------------------------------------------------------------------------------------------


#---------------------------------------define your utm zone ------------------------------------------
# !!!!!!!!!!!!!!!!!!!!!!!!This can cause errors if you use the form in more than
utm_zone <- 10
#------------------------------------------------------------------------------------------------------


# name the form using the date and time
# once stable we can name the form the same in all projects but this allows tables to be versioned in case there are changes required to the form
# file_name <- paste0('form_pscis_', format(lubridate::now(), "%Y%m%d"))


form_prep2 <- form_prep1 %>%
  # example - drop  columns that we don't need - there are more
  # select(-contains('score')) %>%
  # select(-rowid,
  #        -site_id) %>%
  # example - add some columns of our own plus the ones for MoTi (see the other script but note the columns we already have! photo fields?)
  dplyr::mutate(-rowid,
                date_time_start = NA_POSIXct_,
                mergin_user = NA_character_,
                camera_id = NA_character_,
                gps_id = NA_character_,
                gps_waypoint_number = NA_character_,
                moti_chris_culvert_id = NA_integer_,
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
                photo_paper_card = NA_character_,
                photo_extra1 = NA_character_,
                photo_extra2 = NA_character_,
                photo_extra1_tag = NA_character_,
                photo_extra2_tag = NA_character_,
                link_method_phase1 = NA_character_
  ) %>%
  # slice it down so it has only 1 row
  dplyr::slice(1) %>%
  # make it a spatial file so we can burn it as a geopackage right into our mergin file of choice
  sf::st_as_sf(coords = c("easting", "northing"),
               crs = 32600 + utm_zone, remove = F) %>%
  # put it into albers so we can use it anywhere
  sf::st_transform(crs = 3005) %>%
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
         everything())

glimpse(form_prep1)
glimpse(form_prep2)


form_prep2 %>%
   # make this filepath whatever - this just backs out two directories and then walks into `gis`.
  sf::st_write('data/qgis/form_pscis.gpkg', delete_layer = T)

