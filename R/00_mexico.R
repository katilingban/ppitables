#' 
#' Poverty Probability Index (PPI) lookup table for Mexico based on data from
#' Encuesta Nacional de Ingresos y Gastos de los Hogares (ENIGH) from 2022
#' produced by the Instituto Nacional de Estadística y Geografía (INEGI)
#'
#' @format A data frame with 21 columns and 100 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp550}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{ppp800}}{Below $8.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1100}}{Below $11.00 per day purchasing power parity (2011)}
#' \item{\code{ppp365}}{Below $3.65 per day purchasing power parity (2017)}
#' \item{\code{ppp685}}{Below $6.85 per day purchasing power parity (2017)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 50th percentile poverty line}
#' \item{\code{percentile80}}{Below 60th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Mexico PPI table
#'   ppiMEX2024
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMEX2024[ppiMEX2024$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMEX2024, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the purchasing
#'   # power parity at $1.00
#'   ppiScore <- 50
#'   ppiMEX2024[ppiMEX2024$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
"ppiMEX2024"