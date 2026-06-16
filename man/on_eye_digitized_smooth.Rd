% Please edit documentation in R/on_eye_digitized_smooth.R
\name{on_eye_digitized_smooth}
\alias{on_eye_digitized_smooth}
\docType{data}
\title{
Smoothed corneal air puff digitized curve
}
\description{
Gaussian-smoothed, monotonic-enforced pressure table used for split-PCHIP
lookup.
}
\usage{data(on_eye_digitized_smooth)}
\format{
A data frame with 601 rows and 2 columns:
\describe{
  \item{t_ms}{Time after puff onset (ms), 0 to 30 in 0.05 ms steps}
  \item{P_mmHg}{Corneal air puff pressure (mmHg)}
}
}
\source{
Digitized from the supplementary "Pressure on the Cornea" time course in
Eliasy et al. (2023).
}
\references{
Maklad O, Eliasy A, Chen K-J, Theofilis V, Elsheikh A. Simulation of Air Puff
Tonometry Test Using Arbitrary Lagrangian-Eulerian (ALE) Deforming Mesh for
Corneal Material Characterisation. \emph{International Journal of
Environmental Research and Public Health.} 2020;17(1):54.
\doi{10.3390/ijerph17010054}

Eliasy A, Lopes BT, Wang J, Abass A, Vinciguerra R, Vinciguerra P, Bao F-J,
Elsheikh A. Introduction and Clinical Validation of an Updated Biomechanically
Corrected Intraocular Pressure bIOP (v2). \emph{Current Eye Research.}
2023;48(4):382-391. \doi{10.1080/02713683.2022.2162087}

Joda AAM, Shervin MMS, Kook D, Elsheikh A. Development and validation of a
correction equation for Corvis tonometry. \emph{Computer Methods in
Biomechanics and Biomedical Engineering.} 2016;19(9):943-953.
\doi{10.1080/10255842.2015.1077515}
}
\keyword{datasets}
