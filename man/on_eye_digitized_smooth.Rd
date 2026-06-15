% Please edit documentation in R/on_eye_digitized_smooth.R
\name{on_eye_digitized_smooth}
\alias{on_eye_digitized_smooth}
\docType{data}
\title{
Smoothed on-eye air puff digitized curve
}
\description{
Gaussian-smoothed, monotonic-enforced pressure table used for split-PCHIP
lookup.
}
\usage{data(on_eye_digitized_smooth)}
\format{
A data frame with 421 rows and 2 columns:
\describe{
  \item{t_ms}{Time after puff onset (ms), 5 to 26 in 0.05 ms steps}
  \item{P_mmHg}{On-eye air puff pressure (mmHg)}
}
}
\source{
Digitized from published air puff waveform (Joda et al., 2016).
}
\keyword{datasets}
