#' Corneal air puff pressure lookup
#'
#' Returns air puff pressure on the cornea (mmHg) at time `t` (milliseconds
#' after puff onset). Times outside 0-30 ms or non-finite values return 0.
#'
#' @param t Numeric vector of times in milliseconds.
#' @return Numeric vector of pressures in mmHg, same length as `t`.
#' @export
#' @examples
#' p_oneye(17.5)
#' p_oneye(c(7.5, 17.5, 22))
#' dt <- onEyeAirpuff::on_eye_digitized_smooth
#' dt$P <- p_oneye(dt$t_ms)
p_oneye <- function(t) {
  .onEyeAirpuff_env$lookup(t)
}
