csv_path <- file.path("on_eye_digitized_smooth.csv")
on_eye_digitized_smooth <- read.csv(csv_path, stringsAsFactors = FALSE)
save(
  on_eye_digitized_smooth,
  file = file.path("..", "data", "on_eye_digitized_smooth.rda"),
  compress = "xz"
)
