#' 
#' Poverty Probability Index (PPI) lookup table for Dominican Republic based on 
#' data from the 2022 Encuesta Continua de Fuerza de Trabajo - ENCFT conducted 
#' by the National Statistics Office (ONE)
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp685}}{Below $6.85 per day purchasing power parity (2017)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Dominican Republic PPI table
#'   ppiDOM2024
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiDOM2024[ppiDOM2024$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiDOM2024, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiDOM2024[ppiDOM2024$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
"ppiDOM2024"