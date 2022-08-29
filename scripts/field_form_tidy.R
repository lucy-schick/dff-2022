source('scripts/packages.R')
library(magrittr)
library(dplyr)

# import a geopackage and rearrange then burn to csv

# relative path to the q project form (assuming we havre same folder structure) -
# use an absolute path if you have to but it is preferable to keep our relative paths the same so we can collab

# name the project directory we are pulling from
dir_project <- 'bcfishpass_skeena_20220823'

# name the form we are reading
form_id <- 'form_pscis_202208282108.gpkg'

path <- paste0('../../gis/mergin/',
               dir_project,
               '/',
               form_id)

form <- sf::st_read(path)

# see the column names
names(form)

# this is a table that cross references column names for pscis table and has the columns in the same order as the spreadsheet
xref_names_pscis <- fpr::xref_names_pscis

# get order of columns as per the excel template spreadsheet
# this can be used as a select(all_of(name_pscis_sprd_ordered)) later
# to order columns for the fieldform and/or put the field entered table inorder
name_pscis_sprd_ordered <- fpr::xref_names_pscis %>%
  filter(!is.na(spdsht)) %>%
  select(spdsht) %>%
  pull(spdsht)


# this one is the gov names
name_pscis_bcdata_ordered <- fpr::xref_names_pscis %>%
  filter(!is.na(bcdata)) %>%
  select(bcdata) %>%
  pull(bcdata)

# see names that coincide between the xref table and what we have
intersect(name_pscis_sprd_ordered, names(form))

# see names that coincide between the xref table and what we have
intersect(name_pscis_bcdata_ordered, names(form))

# see which are different
setdiff(name_pscis_bcdata_ordered, names(form))


# see the *_template.R script to see how to convert CRS and pull out coordinates


form_prep1 <- form %>%
  # filter out to get only the records newly created
  filter(!is.na(date_time_start)) %>%
  # note the call to anyof
  select(any_of(name_pscis_bcdata_ordered)) %>%
  # i can see the funding_project_number and geom are going to mess us up so remove
  sf::st_drop_geometry() %>%
  select(-funding_project_number)


names_old <- names(form_prep1)

# swap the names for the pscis spreadsheet names and get them ready to assign
names_new <- fpr::xref_names_pscis %>%
  filter(bcdata %in% names(form_prep1)) %>%
  pull(spdsht)


form_prep <- form_prep1 %>%
  purrr::set_names(nm = names_new) %>%
  # arrange to make copy and paste easier (view name of object to work through order)
  arrange(crossing_type, continuous_embeddedment_yes_no, backwatered_yes_no)


# burn to a csv

form_prep %>%
  readr::write_csv('../../gis/mergin/bcfishpass_20220707b/survey_form_2022071851.csv')



