% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/00_indonesia.R
\docType{data}
\name{ppiIDN2023}
\alias{ppiIDN2023}
\title{Poverty Probability Index (PPI) lookup table for Indonesia for 2023}
\format{
A data frame with 10 columns and 101 rows:
\describe{
\item{\code{score}}{PPI score}
\item{\code{nl100}}{National poverty line (100\%)}
\item{\code{ppp365}}{Below $3.65 per day purchasing power parity (2017)}
\item{\code{ppp685}}{Below $6.85 per day purchasing power parity (2017)}
\item{\code{ppp320}}{Below $3.20 per day purchasing power parity (2011)}
\item{\code{ppp550}}{Below $5.50 per day purchasing power parity (2011)}
\item{\code{percentile20}}{Below 20th percentile poverty line}
\item{\code{percentile40}}{Below 40th percentile poverty line}
\item{\code{percentile60}}{Below 50th percentile poverty line}
\item{\code{percentile80}}{Below 60th percentile poverty line}
}
}
\source{
\url{https://www.povertyindex.org}
}
\usage{
ppiIDN2023
}
\description{
Poverty Probability Index (PPI) lookup table for Indonesia for 2023
}
\examples{
  # Access Indonesia PPI table
  ppiIDN2023

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiIDN2023[ppiIDN2023$score == ppiScore, ]

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiIDN2023, score == ppiScore)

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiIDN2023[ppiIDN2023$score == ppiScore, "nl100"]

}
\keyword{datasets}
