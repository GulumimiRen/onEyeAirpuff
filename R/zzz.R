.onEyeAirpuff_env <- new.env(parent = emptyenv())

.onLoad <- function(libname, pkgname) {
  env <- asNamespace(pkgname)
  if (!exists("on_eye_digitized_smooth", envir = env, inherits = FALSE)) {
    utils::data("on_eye_digitized_smooth", package = pkgname, envir = env)
  }
  dig <- get("on_eye_digitized_smooth", envir = env)
  .onEyeAirpuff_env$lookup <- make_p_oneye_lookup(dig)
}
