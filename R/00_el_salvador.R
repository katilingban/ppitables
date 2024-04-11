################################################################################
#
#' Poverty Probability Index (PPI) lookup table for El Salvador
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' }
#'
#' @examples
#'   # Access El Salvador PPI table
#'   ppiSLV2010
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiSLV2010[ppiSLV2010$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiSLV2010, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiSLV2010[ppiSLV2010$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiSLV2010"



################################################################################
#
#' Poverty Probability Index (PPI) lookup table for El Salvador for 2021
#'
#' @format A data frame with 21 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl_extreme}}{National poverty line (extreme)}
#' \item{\code{ppp215}}{Below $2.15 per day purchasing power parity (2017)}
#' \item{\code{ppp365}}{Below $3.65 per day purchasing power parity (2017)}
#' \item{\code{ppp685}}{Below $6.85 per day purchasing power parity (2017)}
#' \item{\code{ppp100}}{Below $1.00 per day purchasing power parity (2011)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp320}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{ppp800}}{Below $8.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1100}}{Below $11.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1500}}{Below $15.00 per day purchasing power parity (2011)}
#' \item{\code{ppp2170}}{Below $21.70 per day purchasing power parity (2011)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#'
#' @examples
#'   # Access El Salvador PPI table
#'   ppiSLV2021
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiSLV2021[ppiSLV2021$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiSLV2021, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiSLV2021[ppiSLV2021$score == ppiScore, "nl_extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiSLV2021"


