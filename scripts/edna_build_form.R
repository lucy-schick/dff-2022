# build a raw field form template using excel file templates from other organizations

source('scripts/packages.R')


# import a populated template. Stamford's looks like a good place to start
form_prep1 <- readxl::read_xlsx(path = "~/Library/CloudStorage/OneDrive-Personal/Projects/resources/eDNA/sampling_resources/sample_collection_templates/Stamford_PRGT_eDNA_Sample_List.xlsx",
                                # must specify column types so date is in the correct format
                                col_types = c("text", "date", "text", "numeric", "numeric", "numeric",
                                              "text", "text", "text", "text", "text", "text", "text"))


# see the names of the columns
names(form_prep1)

# Specify where we want to burn this form to
path_write <- '~/Projects/gis/sern_skeena_2023/form_edna.gpkg'


# Clean the template ------------

form_prep2 <- form_prep1 |>
  tidyr::separate_wider_delim(
    cols = "Location...3",
    delim = "\\s+",
    names = c("utm_zone", "drop_band", "utm_easting", "utm_northing"),
    cols_remove = TRUE,
    too_few = "align_start",
    too_many = "drop"
  )


#---------------------------------------define your utm zone ------------------------------------------
utm_zone <- form_prep1 |>
  dplyr::filter(!is.na(utm_zone)) |>
  dplyr::slice(1) |>
  pull(utm_zone)


# # name the form using the date and time
# # we should be able to name the form the same in the active project but the files can be versioned
# # seems safer...
# file_name <- paste0('form_monitor_', format(lubridate::now(), "%Y%m%d"))


form_prep2 <- form_prep1 %>%
  # example - drop  columns that we don't need - there are more
  # select(-contains('score')) %>%
  # select(-rowid,
  #        -site_id) %>%
  # example - add some columns of our own plus the ones for MoTi (see the other script but note the columns we already have! photo fields?)
  dplyr::mutate(date_time_start = NA_POSIXct_,
                mergin_user = NA_character_,
                camera_id = NA_character_,
                gps_id = NA_character_,
                gps_waypoint_number = NA_character_,
                moti_chris_culvert_id = NA_integer_,
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
                photo_extra2_tag = NA_character_,
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
                uav_flight = NA_character_,
                fish_sampling = NA_character_,
                site_card_filled = NA_character_,
                photo_extra3 = NA_character_,
                photo_extra4 = NA_character_,
                photo_extra3_tag = NA_character_,
                photo_extra4_tag = NA_character_,

  ) |>
# slice it down so it has only 1 row
  dplyr::slice(1) %>%
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
       everything())
glimpse(form_prep1)
glimpse(form_prep2)


#change it to a province wide crs for now and burn it to your project of choice
form_prep2 %>%
  # lets try transforming to the utm of the area we are working in
  # for our manual utms. we need to watch for watershed groups that overlap more than one zone though
  # sf::st_transform(crs = 32600 + utm_zone) %>%
  # lets just put it in albers since we are considering ditching the utms
  sf::st_transform(crs = 3005) %>%
  # slice it down so it doesn't have any rows
  dplyr::slice(1) %>%
  # # make this filepath whatever - this just backs out two directories and then walks into `gis`.
  # sf::st_write(paste0('../../gis/',
  #                     dir_project,
  #                     '/',
  #                     file_name,
  #                     '.gpkg'),
  #              # turned this T now that we have time in name
  #              delete_layer = T)
  sf::st_write(path_write, delete_layer = T)




