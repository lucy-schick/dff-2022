
#' Here we are going to build the value map csv's that we will point to
#' in our `QGIS` forms
#'
#' We populate a blank template with each of the available values.
#'
#' name the project directory we are burning to
dir_project <- 'bcfishpass_20230516'

# name the form using the date and time
# we should be able to name the form the same in the active project but the files can be versioned
file_name <- paste0('form_fish_values_', format(lubridate::now(), "%Y%m%d%H%m"))
#'
#' Read in the populated spreadsheet using our `fpr` package.

hab_con <- fpr::fpr_import_hab_con(path = 'data/FDS_Template2021-01-28.xls', row_empty_remove = T,
                                   backup = T)

#' add the NVC dewatered channel info to get the template then burn to a geopackage

vm_temp <- left_join(
  hab_con %>%
    pluck('step_3_individual_fish_data'),

  hab_con %>%
    pluck('step_1_ref_and_loc_info') %>%
    select(reference_number, utm_method, no_visible_channel, dewatered_dry_int_channel),

  by = 'reference_number'
) %>%
  # make this filepath whatever - this just backs out two directories and then walks into `gis`.
  sf::st_write(paste0('../../gis/',
                      dir_project,
                      '/',
                      file_name,
                      '.gpkg'),
               # turned this T now that we have time in name
               delete_layer = T)




