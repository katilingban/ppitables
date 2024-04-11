################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Vietnam
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{extreme}}{USAID extreme poverty line}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp175}}{Below $1.75 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{molisa}}{MOLISA poverty line}
#' }
#'
#' @examples
#'   # Access Vietnam PPI table
#'   ppiVNM2009
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiVNM2009[ppiVNM2009$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiVNM2009, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiVNM2009[ppiVNM2009$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiVNM2009"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Vietnam for 2023
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Vietnam PPI table
#'   ppiVNM2023
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiVNM2023[ppiVNM2023$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiVNM2023, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiVNM2023[ppiVNM2023$score == ppiScore, "percentile20"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiVNM2023"
