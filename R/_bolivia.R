################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Bolivia
#'
#' @format A data frame with 10 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{half100}}{Poorest half below 100\% national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp844}}{Below $8.44 per day purchasing power parity (2005)}

#' }
#'
#' @examples
#'   # Access Bolivia PPI table
#'   ppiBOL2015
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiBOL2015[ppiBOL2015$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiBOL2015, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the food
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiBOL2015[ppiBOL2015$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiBOL2015"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Bolivia for 2023
#'
#' @format A data frame with 15 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl_extreme}}{National poverty line (extreme)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp190}}{Below $1.25 per day purchasing power parity (2011)}
#' \item{\code{ppp320}}{Below $1.25 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $2.00 per day purchasing power parity (2011)}
#' \item{\code{ppp215}}{Below $2.15 per day purchasing power parity (2017)}
#' \item{\code{ppp365}}{Below $3.65 per day purchasing power parity (2017)}
#' \item{\code{ppp685}}{Below $6.85 per day purchasing power parity (2017)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Bolivia PPI table
#'   ppiBOL2023
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiBOL2023[ppiBOL2023$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiBOL2023, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the food
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiBOL2023[ppiBOL2023$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiBOL2023"
