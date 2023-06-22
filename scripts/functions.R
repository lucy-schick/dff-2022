

tfpr_pscis_wkb_paths <- function(){
  list.files(path = "data", pattern = glob2rx("*pscis*xlsm"), all.files = F) %>%
    grep(pattern = "~", invert = T, value = T)}


tfpr_import_pscis_all <- function (backup = TRUE, path_backup = "data/backup/", ...){
    wkbs_paths <- tfpr_pscis_wkb_paths()
    pscis_list <- wkbs_paths %>% purrr::map(fpr_import_pscis) %>%
      purrr::set_names(nm = tools::file_path_sans_ext(wkbs_paths))
    if (backup) {
      dir.create(path_backup)
      dplyr::bind_rows(pscis_list) %>% readr::write_csv(file = paste0(path_backup,
                                                                      "pscis_all.csv"), na = "")
    }
    pscis_list
  }
