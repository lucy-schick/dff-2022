# copy background layers to backup, transfer to dff, update and copy back

path_dir_in <- "~/Projects/gis/sern_peace_fwcp_2023"
# path_dir_in <- "~/Projects/gis/restoration_wedzin_kwa"
path_in_file <- "background_layers.gpkg"
path_dir_out <- "~/Projects/gis/backups"


# copy the file to the backup with datestamp
rfp::rfp_fs_backup(path_dir_in,path_in_file, path_dir_out)

# copy to dff
fs::file_copy(
  fs::path(path_dir_in, path_in_file),
  fs::path("~/Projects/repo/dff-2022/scripts/qgis", path_in_file),
  overwrite = TRUE
)

command <- "conda"

wsg <- c("PARS", "CRKD", "CARP", "NATR")

wsg_string <- stringr::str_c("'", wsg, "'", collapse = ", ")

args <- c(
  "run", "-n", "dff2",
  "bash", "-c",
  # stringr::str_glue(
  #   "./rfp_source_bcdata.sh \"{wsg_string}\" update && time ./rfp_source_aws.sh \"{wsg_string}\""
  # )
  stringr::str_glue(
    "./rfp_source_aws.sh \"{wsg_string}\""
  )
)
working_directory <- "/Users/airvine/Projects/repo/dff-2022/scripts/qgis"

processx::run(
      command,
      args = args,
      echo = TRUE,            # Print the command output live
      wd = working_directory, # Set the working directory
      spinner = TRUE         # Show a spinner
      # timeout = 60            # Timeout after 60 seconds
    )

# copy back to the qgis dir dff
fs::file_copy(
  fs::path("~/Projects/repo/dff-2022/scripts/qgis", path_in_file),
  fs::path(path_dir_in, path_in_file),
  overwrite = TRUE
)
