################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Burkina Faso
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl50}}{National poverty line (50\%)}
#' \item{\code{nl75}}{National poverty line (75\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiBFA2011"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Burkina Faso
#'
#' @format A data frame with 18 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{food}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Below $1.00 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp844}}{Below $8.44 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' \item{\code{median}}{Median poverty line}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile50}}{Below 50th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiBFA2014"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Burkina Faso
#'
#' @format A data frame with 15 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp100}}{Below $1.00 per day purchasing power parity (2011)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp320}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Burkina Faso PPI table
#'   ppiBFA2017
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiBFA2017[ppiBFA2017$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiBFA2017, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiBFA2017[ppiBFA2017$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiBFA2017"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Burkina Faso for 2023
#'
#' @format A data frame with 14 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp215}}{Below $1.25 per day purchasing power parity (2017)}
#' \item{\code{ppp365}}{Below $2.50 per day purchasing power parity (2017)}
#' \item{\code{ppp685}}{Below $5.00 per day purchasing power parity (2017)}
#' \item{\code{ppp190}}{Below $1.00 per day purchasing power parity (2011)}
#' \item{\code{ppp320}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Burkina Faso PPI table
#'   ppiBFA2023
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiBFA2023[ppiBFA2023$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiBFA2023, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiBFA2023[ppiBFA2023$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiBFA2023"


