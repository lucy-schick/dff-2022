#'  build a raw field form template using the excel file as the template for our template

# source('scripts/packages.R')

# path_write <- 'data/qgis/form_pscis.gpkg'
path_write <- '~/Projects/gis/sern_peace_fwcp_2023/form_fiss_site.gpkg'

#' name the project directory we are burning to
# dir_project <- 'bcfishpass_20230517'

#' name the form using the date and time
#' we should be able to name the form the same in the active project but the files can be versioned
#' seems safer...
# file_name <- paste0('form_fiss_site_', format(lubridate::now(), "%Y%m%d"))

#' define your utm zone.  This can cause errors if you use the form in more than
#' one zone!!!!! beware
utm_zone <- 10

#' import the fish data submission template (needs to be in the data directory)
#' because we want to keep the backup file clean for the value maps and because
#' we are not worried about version controling this data we turn the `backup` function to `FALSE`

form_raw <- fpr::fpr_import_hab_con(backup = F, row_empty_remove = T) %>%
  # pull out just the site info page for now
  pluck(4)

# see the names of the columns
names(form_raw)

# which utm zone do all the coordinates fall into?
unique(form_raw$utm_zone)

# for every column that contains the words width, depth gradient (except the average - 'avg' and 'method' columns) we want to
# tag them with a time so that we can georeference with our tracks running from the gps
# other thought on how to do this is to connect a hegh accuracy survey
# rod to our phones through something like avenza and run a phone track.

# identify the strings that we want the pull as columns and add time tags for
str_tags_scope <- c('width', 'gradient', 'depth')

# these are the colunns to leave till the end and calculate or remove
str_tags_refine <- c('avg', 'method','average')

# pull out the columns to tag
names_to_tag_chan <- form_raw %>%
  select(contains('channel')) %>%
  select(-contains(str_tags_refine)) %>%
  # channel_pattern doesn't need to be in there
  select(-contains('pattern')) %>%
  # just keep one row
  slice(1)

names_to_tag_wet <- form_raw %>%
  select(contains('wetted')) %>%
  select(-contains(str_tags_refine)) %>%
  # just keep one row
  slice(1)

# combine the widths
names_to_tag_widths <- tibble::tibble(
  v1 = names(names_to_tag_wet),
  v2 = names(names_to_tag_chan)
) %>%
  mutate(name = paste(v1, v2, sep = '-')) %>%
  mutate(value = 'time') %>%
  select(name, value) %>%
  pivot_wider()

# define time tagged columns that are not widths
names_to_tag_rest <- form_raw %>%
  # select(contains(all_of(str_tags_scope))) %>%
  select(contains(str_tags_scope)) %>%
  select(-contains(str_tags_refine)) %>%
  # select(-contains(all_of(str_tags_refine))) %>%
  select(-contains('width')) %>%
  # just keep one row
  slice(1)

# join toghether
names_to_tag <- bind_cols(
  names_to_tag_widths,
  names_to_tag_rest
)

# make the time names
names_with_time <- paste0(
  names(names_to_tag),
  '_time'
)

names_tag_time_prep1 <- vctrs::vec_interleave(names(names_to_tag),
                                          names_with_time) %>%
    tibble::tibble() %>%
    purrr::set_names(nm = 'name')

# split out the wet and chan widths
names_tag_time_prep2 <- names_tag_time_prep1 %>%
  filter(str_detect(name, 'width')) %>%
  filter(!str_detect(name, 'time')) %>%
  tidyr::separate(name,
                  into = c('name1', 'name2'),
                  sep = '-')

names_tag_time_prep3 <- names_tag_time_prep1 %>%
  filter(str_detect(name, 'time')) %>%
  filter(str_detect(name, 'width'))


names_tag_width <- vctrs::vec_interleave(names_tag_time_prep2 %>% pull(name1),
                      names_tag_time_prep2 %>% pull(name2),
                      names_tag_time_prep3 %>% pull(name))

# make time columns for the rest and interleave
names_tag_rest <- vctrs::vec_interleave(
  names(names_to_tag_rest),
  paste0(names(names_to_tag_rest), '_time')
)

# join all the time tagged columns together
names_tagged <- c(names_tag_width, names_tag_rest) %>%
  tibble::tibble() %>%
  purrr::set_names(nm = 'name') %>%
  mutate(value = 'time') %>%
  pivot_wider()

# define the columns the tibbles have in common
col_to_remove <- intersect(names(form_raw),
                           names(names_tagged))

# remove the col that we are about to join then
# join to the time tagged columns
form_prep1 <- bind_cols(
  form_raw %>%
  select(-all_of(col_to_remove)),

  names_tagged)


str_type_numeric <- c('average',
                      'depth',
                      'width',
                      'gradient',
                      'temperature',
                      'utm',
                      'avg',
                      'p_h',
                      'temperature')


# add method to this
str_type_character <- c('texture',
                        'morphology')


# combine non-tagged columns and combined tagged columns
form_prep2 <- form_prep1 %>%
  # set the column types
  mutate(across(matches(str_type_numeric), as.numeric)) %>%
  # mutate(across(contains('average'), as.numeric)) %>%
  # mutate(across(contains('depth'), as.numeric)) %>%
  # mutate(across(contains('width'), as.numeric))%>%
  # mutate(across(contains('gradient'), as.numeric)) %>%
  mutate(across(contains('time'), as_datetime)) %>%
  # select(contains('average')) %>%
  filter(!is.na(utm_zone)) %>%
  slice(1)


form_prep3 <- form_prep2 %>%
  # example - drop  columns that we don't need - there are more
  select(-waterbody_id) %>%
  # example - add some columns of our own plus the ones for MoTi (see the other script but note the columns we already have! photo fields?)
  dplyr::mutate(date_time_start = NA_POSIXct_,
                mergin_user = NA_character_,
                crew_members = NA_character_,
                camera_id = NA_character_,
                gps_id = NA_character_,
                gps_waypoint_number = NA_character_,
                site_length = NA_integer_,
                habitat_value_rating = NA_character_,
                photo_gravel = NA_character_,
                photo_pool = NA_character_,
                photo_typical_1 = NA_character_,
                photo_typical_2 = NA_character_,
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
                photo_card = NA_character_,
                feature_time = NA_POSIXct_,
                feature_type_2 = NA_character_,
                feature_height_2_m = NA_character_,
                feature_length_2_m = NA_character_,
                feature_time_2 = NA_POSIXct_,
                feature_type_3 = NA_character_,
                feature_height_3_m = NA_character_,
                feature_length_3_m = NA_character_,
                feature_time_3 = NA_POSIXct_,
                no_visible_channel = NA_character_,
                dewatered_dry_int_channel = NA_character_,
                link_method_site_card = NA_character_
  ) %>%
  # make it a spatial file so we can burn it as a geopackage right into our mergin file of choice
  # !!!!!this won't work until you rename 'lon' and 'lat' so they are our x and y columns for this dataset (hint: look at the column names)
  # don't forget to put it in the right crs too!! - google the crs id for utm zone 9
  filter(!is.na(utm_zone)) %>%
  slice(1) %>%
  sf::st_as_sf(coords = c("utm_easting", "utm_northing"),
               crs = 32600 + utm_zone, remove = F) %>%
  # put it into albers so we can use it anywhere
  sf::st_transform(crs = 3005) %>%
  relocate(date_time_start,
           mergin_user,
           contains('surveyor'),
           contains('_id'),
           contains('name'),
           matches('temperature'),
           'p_h',
           matches('conductivity'),
           'turbidity',
           'stage',
           'no_visible_channel',
           'dewatered_dry_int_channel',
           matches('utm'),
           matches('width'),
           matches('gradient'),
           matches('depth'),
           matches('bed_material'),
           matches('comments'),
           'habitat_value_rating',
           matches('average'),
           matches('method')) %>%
  relocate(everything(), .after = last_col()) %>%
  relocate(matches('photo'), .after = last_col()) %>%
  relocate(matches('method'), .after = last_col()) %>%
  relocate(matches('average|avg'), .after = last_col()) %>%
  relocate(matches('link_method_site_card'), .after = last_col()) %>%
  sf::st_write(path_write, delete_layer = T)



