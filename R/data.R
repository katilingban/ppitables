################################################################################
#
#' ppitables
#'
#' Poverty Probability Index (PPI) Lookup Tables
#'
#' The Poverty Probability Index (PPI) is a poverty measurement tool for
#' organizations and businesses with a mission to serve the poor. The PPI is
#' statistically-sound, yet simple to use: the answers to 10 questions about a
#' household’s characteristics and asset ownership are scored to compute the
#' likelihood that the household is living below the poverty line – or above by
#' only a narrow margin.
#'
#' @docType package
#' @name ppitables
#'
#
################################################################################
NULL


################################################################################
#
#' ppiMatrixAFG
#'
#' Poverty Probability Index (PPI) lookup table for Afghanistan
#'
#' @format A data frame with 7 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl}}{National poverty line}
#' \item{\code{nu150}}{National poverty line (150\%)}
#' \item{\code{nu200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixAFG"


################################################################################
#
#' ppiMatrixBGD
#'
#' Poverty Probability Index (PPI) lookup table for Bangladesh
#'
#' @format A data frame with 10 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl}}{National lower poverty line}
#' \item{\code{nu100}}{National upper poverty line (100\%)}
#' \item{\code{nu150}}{National upper poverty line (150\%)}
#' \item{\code{nu200}}{National upper poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp175}}{Below $1.75 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixBGD"


################################################################################
#
#' ppiMatrixGHA
#'
#' Poverty Probability Index (PPI) lookup table for Ghana
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $2.75 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixGHA"


################################################################################
#
#' ppiMatrixGHA_a
#'
#' Poverty Probability Index (PPI) lookup table for Ghana
#'
#' @format A data frame with 13 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{half100}}{Poorest half below 100\% national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixGHA_a"


################################################################################
#
#' ppiMatrixGHA_b
#'
#' Poverty Probability Index (PPI) lookup table for Ghana
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixGHA_b"


################################################################################
#
#' ppiMatrixKEN
#'
#' Poverty Probability Index (PPI) lookup table for Kenya
#'
#' @format A data frame with 11 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp400}}{Below $4.00 per day purchasing power parity (2005)}
#' \item{\code{ppp844}}{Below $8.44 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixKEN"


################################################################################
#
#' ppiMatrixMDG
#'
#' Poverty Probability Index (PPI) lookup table for Madagascar
#'
#' @format A data frame with 10 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{half100}}{Poorest half below 100\% national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixMDG"


################################################################################
#
#' ppiMatrixMOZ
#'
#' Poverty Probability Index (PPI) lookup table for Mozambique
#'
#' @format A data frame with 7 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixMOZ"


################################################################################
#
#' ppiMatrixZMB
#'
#' Poverty Probability Index (PPI) lookup table for Zambia
#'
#' @format A data frame with 16 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
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
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixZMB"



################################################################################
#
#' ppiMatrixAGO
#'
#' Poverty Probability Index (PPI) lookup table for Angola
#'
#' @format A data frame with 9 columns and 101 rows:
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
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixAGO"


################################################################################
#
#' ppiMatrixBEN
#'
#' Poverty Probability Index (PPI) lookup table for Benin
#'
#' @format A data frame with 7 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixBEN"


################################################################################
#
#' ppiMatrixBOL
#'
#' Poverty Probability Index (PPI) lookup table for Bolivia
#'
#' @format A data frame with 11 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
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
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixBOL"



################################################################################
#
#' ppiMatrixBRA
#'
#' Poverty Probability Index (PPI) lookup table for Brazil
#'
#' @format A data frame with 10 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{belowHalfWage}}{Below the half minimum wage line}
#' \item{\code{belowQtrWage}}{Below the quarter minimum wage line}
#' \item{\code{belowOneWage}}{Below the one minimum wage line}
#' \item{\code{belowTwoWage}}{Below the two minimum wage line}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixBRA"



################################################################################
#
#' ppiMatrixBFA
#'
#' Poverty Probability Index (PPI) lookup table for Burkina Faso
#'
#' @format A data frame with 15 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100)}
#' \item{\code{nl150}}{National poverty line (150)}
#' \item{\code{nl200}}{National poverty line (200)}
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
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixBFA"

################################################################################
#
#' ppiMatrixKHM_wb
#'
#' Poverty Probability Index (PPI) lookup table for Cambodia
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{median}}{Median poverty line}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixKHM_wb"

################################################################################
#
#' ppiMatrixKHM_gov
#'
#' Poverty Probability Index (PPI) lookup table for Cambodia
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{median}}{Median poverty line}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixKHM_gov"

################################################################################
#
#' ppiMatrixKHM
#'
#' Poverty Probability Index (PPI) lookup table for Cambodia
#'
#' @format A data frame with 6 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power poverty (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power poverty (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixKHM"
