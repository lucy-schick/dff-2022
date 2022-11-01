
#' Here we are going to build the value map csv's that we will point to
#' in our `QGIS` forms.
#'
#' we decided to populate a blank template with each of the available values.

#'
#' name the project directory we are burning to
dir_project <- 'bcfishpass_skeena_20220823'

# in the past we named the form using the date and time.  This has likely led to a setup where our resulting table
# is linked to a specific table name (form_fiss_site_values_202209100809) so i think we are stuck with that
#  and should not overwrite.  For this reason I have left the date/time stamp so we are less likely to overwrite the
#  currrent data/form_fis_site_values.gpkg file!!!!

file_name <- paste0('form_fiss_site_values_', format(lubridate::now(), "%Y%m%d%H%m"))
#'
#' Read in the populated spreadsheet using our `fpr` package.

hab_con <- fpr::fpr_import_hab_con(path = 'data/FDS_Template2021-01-28.xls',
                                   backup = T)


  # select(feature_height_length_method)

#' add the NVC dewatered channel info to get the template then burn to a geopackage

vm_temp <- left_join(
  hab_con %>%
    pluck('step_4_stream_site_data') %>%
    select(-utm_method),

  hab_con %>%
    pluck('step_1_ref_and_loc_info') %>%
    select(reference_number, utm_method, no_visible_channel, dewatered_dry_int_channel),

  by = 'reference_number'
) %>%
  # make this filepath whatever - this just backs out two directories and then walks into `gis`.
  sf::st_write(paste0('../../gis/mergin/',
                      dir_project,
                      '/',
                      file_name,
                      '.gpkg'),
               # turned this T now that we have time in name
               delete_layer = T)




