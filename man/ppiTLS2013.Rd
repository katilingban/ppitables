% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/04_data.R
\docType{data}
\name{ppiTLS2013}
\alias{ppiTLS2013}
\title{Poverty Probability Index (PPI) lookup table for Timor Leste}
\format{
A data frame with 8 columns and 101 rows:
\describe{
\item{\code{score}}{PPI score}
\item{\code{nl100}}{National lower poverty line (100\%)}
\item{\code{nu100}}{National upper poverty line (100\%)}
\item{\code{nu150}}{National upper poverty line (150\%)}
\item{\code{nu200}}{National upper poverty line (200\%)}
\item{\code{extreme}}{USAID extreme poverty}
\item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
\item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
}
}
\source{
\url{https://www.povertyindex.org}
}
\usage{
ppiTLS2013
}
\description{
Poverty Probability Index (PPI) lookup table for Timor Leste
}
\examples{
  # Access Timor Leste PPI table
  ppiTLS2013

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiTLS2013[ppiTLS2013$score == ppiScore, ]

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiTLS2013, score == ppiScore)

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line definition
  ppiScore <- 50
  ppiTLS2013[ppiTLS2013$score == ppiScore, "nl100"]

}
\keyword{datasets}
