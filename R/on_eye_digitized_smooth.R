#' Smoothed on-eye air puff digitized curve
#'
#' Gaussian-smoothed, monotonic-enforced pressure table used for split-PCHIP
#' lookup. Columns are `t_ms` (milliseconds) and `P_mmHg` (mmHg).
#'
#' @format A data frame with 421 rows and 2 columns:
#' \describe{
#'   \item{t_ms}{Time after puff onset (ms), 5 to 26 in 0.05 ms steps}
#'   \item{P_mmHg}{On-eye air puff pressure (mmHg)}
#' }
#' @source Digitized from published air puff waveform (Joda et al., 2016).
"on_eye_digitized_smooth"
