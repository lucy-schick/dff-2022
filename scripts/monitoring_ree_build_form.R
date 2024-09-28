# build a raw field form template

library(tidyverse)
# path_write <- 'data/qgis/form_pscis.gpkg'
path_write <- '~/Projects/gis/restoration_wedzin_kwa/form_monitoring_ree.gpkg'



# whole thing is now a function
sdff_monitoring_ree_build <- function(path){

# make a tribble with the utm to start
form_prep1 <- tibble::tribble(
  ~utm_zone, ~easting, ~northing,
  10,        316938.00, 5435132.00
)

#---------------------------------------define your utm zone ------------------------------------------
utm_zone <- form_prep1 |>
  dplyr::filter(!is.na(utm_zone)) |>
  dplyr::slice(1) |>
  dplyr::pull(utm_zone)



form_prep2 <- form_prep1 |>
  # example - drop  columns that we don't need - there are more
  # select(-contains('score')) %>%
  # select(-rowid,
  #        -site_id) %>%
  # example - add some columns of our own plus the ones for MoTi (see the other script but note the columns we already have! photo fields?)
  dplyr::mutate(date_time_start = NA_POSIXct_,
                crew_members = NA_character_,
                stream_name = NA_character_,
                width_meters = NA_character_,
                length_meters = NA_character_,
                assessment_comment = NA_character_,
                # this comes from our template form input.  Could consider in future that we don't really need to use that
                site_id = NA_character_,
                land_owner = NA_character_,
                camera_id = NA_character_,
                gps_id = NA_character_,
                gps_waypoint_number = NA_character_,
                access_comment = NA_character_,
                habitat_comment = NA_character_, #let's encourage the tinyest bit of info here

                channel_width = NA_real_,
                stream_slope = NA_real_,
                photo_access= NA_character_,
                photo_upstream = NA_character_,
                photo_downstream = NA_character_,
                photo_inlet = NA_character_,
                photo_barrel = NA_character_,
                photo_outlet = NA_character_,
                photo_condition = NA_character_,
                photo_extra1 = NA_character_,
                photo_extra1_tag = NA_character_,
                photo_extra2 = NA_character_,
                photo_extra2_tag = NA_character_,
                photo_extra3 = NA_character_,
                photo_extra3_tag = NA_character_,
                photo_extra4 = NA_character_,
                photo_extra4_tag = NA_character_,
                photo_extra5 = NA_character_,
                photo_extra5_tag = NA_character_,
                erosion = NA_integer_,
                erosion_notes = NA_character_,
                condition = NA_integer_,
                condition_notes = NA_character_,
                dewatering = NA_integer_,
                dewatering_notes = NA_character_,
                photo_dewatering = NA_character_,
                velocity = NA_integer_,
                velocity_notes = NA_character_,
                photo_velocity = NA_character_,
                constriction = NA_integer_,
                constriction_notes = NA_character_,
                photo_constriction = NA_character_,
                substrate = NA_integer_,
                substrate_notes = NA_character_,
                photo_substrate = NA_character_,
                riparian = NA_integer_,
                riparian_notes = NA_character_,
                photo_riparian = NA_character_,
                flow_depth = NA_integer_,
                flow_depth_notes = NA_character_,
                photo_flow_depth = NA_character_,
                stability = NA_integer_,
                stability_notes = NA_character_,
                photo_stability = NA_character_,
                revegetation = NA_integer_,
                revegetation_notes = NA_character_,
                photo_revegetation = NA_character_,
                cover = NA_integer_,
                cover_notes = NA_character_,
                photo_cover = NA_character_,
                maintenance = NA_integer_,
                maintenance_notes = NA_character_,
                photo_maintenance = NA_character_,
                uav_flight = NA_character_

  ) |>
# slice it down so it has only 1 row
  dplyr::slice(1) |>
  # make it a spatial file so we can burn it as a geopackage right into our mergin file of choice
  # !!!!!this won't work until you rename 'lon' and 'lat' so they are our x and y columns for this dataset (hint: look at the column names)
  # don't forget to put it in the right crs too!! - google the crs id for utm zone 9
  sf::st_as_sf(coords = c("easting", "northing"),
               crs = 32600 + utm_zone, remove = F) |>
  # mutate(date = NA_POSIXct_) %>%
  # reorder the columns - more to do than this
  select(date_time_start,
         crew_members,
         matches('surveyor_'),
         matches('_id'),
         gps_waypoint_number,
         stream_name,
         matches('road_'),
         matches('crossing'),
         width_meters,
         length_meters,
         assessment_comment,
         habitat_comment,
         everything())

#change it to a province wide crs for now and burn it to your project of choice
form_prep2 %>%
  # lets just put it in albers
  sf::st_transform(crs = 3005) %>%
  # slice it down so it doesn't have any rows
  dplyr::slice(1) %>%
  sf::st_write(path, delete_layer = T)
}

sdff_monitoring_ree_build(path_write)


