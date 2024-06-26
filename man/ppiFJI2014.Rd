% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/04_data.R
\docType{data}
\name{ppiFJI2014}
\alias{ppiFJI2014}
\title{Poverty Probability Index (PPI) lookup table for Fiji}
\format{
A data frame with 8 columns and 101 rows:
\describe{
\item{\code{score}}{PPI score}
\item{\code{nl100}}{National poverty line (100\%)}
\item{\code{nl150}}{National poverty line (150\%)}
\item{\code{nl200}}{National poverty line (200\%)}
\item{\code{median}}{Poorest half below 100\% national}
\item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
\item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
\item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
}
}
\source{
\url{https://www.povertyindex.org}
}
\usage{
ppiFJI2014
}
\description{
Poverty Probability Index (PPI) lookup table for Fiji
}
\examples{
  # Access Fiji PPI table
  ppiFJI2014

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiFJI2014[ppiFJI2014$score == ppiScore, ]

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiFJI2014, score == ppiScore)

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line definition
  ppiScore <- 50
  ppiFJI2014[ppiFJI2014$score == ppiScore, "nl100"]

}
\keyword{datasets}
