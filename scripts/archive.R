# archive past files

dir_to <- "/Users/airvine/Projects/gis/sern_skeena_2023/data_field/2023/archive"
file_to <- "form_fiss_site.gpkg"

# burn the directory
fs::dir_create(dir_to, recurse = TRUE)

fs::file_move(
  "/Users/airvine/Projects/gis/sern_skeena_2023/form_fiss_site.gpkg",
  fs::path(dir_to, file_to)
)
