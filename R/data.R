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


################################################################################
#
#' ppiMatrixCMR
#'
#' Poverty Probability Index (PPI) lookup table for Cameroon
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixCMR"


################################################################################
#
#' ppiMatrixCOL_a
#'
#' Poverty Probability Index (PPI) lookup table for Colombia
#'
#' @format A data frame with 12 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{half100}}{Poorest half below 100\% national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
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
"ppiMatrixCOL_a"

################################################################################
#
#' ppiMatrixCOL
#'
#' Poverty Probability Index (PPI) lookup table for Colombia
#'
#' @format A data frame with 10 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
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
"ppiMatrixCOL"


################################################################################
#
#' ppiMatrixDOM
#'
#' Poverty Probability Index (PPI) lookup table for Dominican Republic
#'
#' @format A data frame with 11 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl50}}{National poverty line (50\%)}
#' \item{\code{nl75}}{National poverty line (75\%)}
#' \item{\code{nl100}}{National poverty line (100)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixDOM"


################################################################################
#
#' ppiMatrixEGY
#'
#' Poverty Probability Index (PPI) lookup table for Egypt
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nu100}}{National upper poverty line (100\%)}
#' \item{\code{nl100}}{National lower poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixEGY"

################################################################################
#
#' ppiMatrixSLV
#'
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
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixSLV"


################################################################################
#
#' ppiMatrixETH
#'
#' Poverty Probability Index (PPI) lookup table for Ethipia
#'
#' @format A data frame with 21 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp100}}{Below $1.00 per day purchasing power parity (2005)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp175}}{Below $1.75 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' \item{\code{ppp380}}{Below $3.80 per day purchasing power parity (2011)}
#' \item{\code{ppp400}}{Below $4.00 per day purchasing power parity (2011)}
#' \item{\code{half100}}{Poorest half below 100\% national}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile50}}{Below 50th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixETH"


################################################################################
#
#' ppiMatrixFJI
#'
#' Poverty Probability Index (PPI) lookup table for Fiji
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{median}}{Poorest half below 100\% national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixFJI"


################################################################################
#
#' ppiMatrixHND
#'
#' Poverty Probability Index (PPI) lookup table for Honduras
#'
#' @format A data frame with 7 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixHND"


################################################################################
#
#' ppiMatrixIDN
#'
#' Poverty Probability Index (PPI) lookup table for Indonesia
#'
#' @format A data frame with 4 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixIDN"

################################################################################
#
#' ppiMatrixIDN_a
#'
#' Poverty Probability Index (PPI) lookup table for Indonesia
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixIDN_a"


################################################################################
#
#' ppiMatrixCIV
#'
#' Poverty Probability Index (PPI) lookup table for Ivory Coast
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp800}}{Below $8.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixCIV"


################################################################################
#
#' ppiMatrixMWI_pbm
#'
#' Poverty Probability Index (PPI) lookup table for Malawi
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
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp844}}{Below $8.44 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixMWI_pbm"


################################################################################
#
#' ppiMatrixMWI_gov
#'
#' Poverty Probability Index (PPI) lookup table for Malawi
#'
#' @format A data frame with 14 columns and 101 rows:
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
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' \item{\code{ppp1000}}{Below $10.00 per day purchasing power parity (2011)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixMWI_gov"


################################################################################
#
#' ppiMatrixMWI
#'
#' Poverty Probability Index (PPI) lookup table for Malawi
#'
#' @format A data frame with 3 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixMWI"


################################################################################
#
#' ppiMatrixMLI
#'
#' Poverty Probability Index (PPI) lookup table for Mali
#'
#' @format A data frame with 6 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixMLI"


################################################################################
#
#' ppiMatrixMAR
#'
#' Poverty Probability Index (PPI) lookup table for Morocco
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100)}
#' \item{\code{nl150}}{National poverty line (150)}
#' \item{\code{nl200}}{National poverty line (200)}
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
"ppiMatrixMAR"


################################################################################
#
#' ppiMatrixNPL_a
#'
#' Poverty Probability Index (PPI) lookup table for Nepal
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixNPL_a"

################################################################################
#
#' ppiMatrixNPL
#'
#' Poverty Probability Index (PPI) lookup table for Nepal
#'
#' @format A data frame with 4 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixNPL"


################################################################################
#
#' ppiMatrixNIC
#'
#' Poverty Probability Index (PPI) lookup table for Nicaragua
#'
#' @format A data frame with 10 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp800}}{Below $8.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixNIC"


################################################################################
#
#' ppiMatrixNER
#'
#' Poverty Probability Index (PPI) lookup table for Niger
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixNER"




################################################################################
#
#' ppiMatrixPRY
#'
#' Poverty Probability Index (PPI) lookup table for Paraguay
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
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
"ppiMatrixPRY"


################################################################################
#
#' ppiMatrixPER
#'
#' Poverty Probability Index (PPI) lookup table for Peru
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixPER"


################################################################################
#
#' ppiMatrixPHL
#'
#' Poverty Probability Index (PPI) lookup table for Philippines
#'
#' @format A data frame with 6 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp432}}{Below $4.32 per day purchasing power parity (1993)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixPHL"

################################################################################
#
#' ppiMatrixPHL_a
#'
#' Poverty Probability Index (PPI) lookup table for Philppines
#'
#' @format A data frame with 11 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{median}}{Poorest half below 100\% national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixPHL_a"


################################################################################
#
#' ppiMatrixROU
#'
#' Poverty Probability Index (PPI) lookup table for Romania
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100)}
#' \item{\code{nl150}}{National poverty line (150)}
#' \item{\code{nl200}}{National poverty line (200)}
#' \item{\code{extreme}}{Poorest half below 100 national}
#' \item{\code{ppp250}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{laeken}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixROU"

################################################################################
#
#' ppiMatrixROU
#'
#' Poverty Probability Index (PPI) lookup table for Romania
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{laeken}}{Laeken poverty line}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixROU"


################################################################################
#
#' ppiMatrixRUS
#'
#' Poverty Probability Index (PPI) lookup table for Russia
#'
#' @format A data frame with 4 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp625}}{Below $6.25 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixRUS"


################################################################################
#
#' ppiMatrixRWA
#'
#' Poverty Probability Index (PPI) lookup table for Rwanda
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
"ppiMatrixRWA"


################################################################################
#
#' ppiMatrixSEN
#'
#' Poverty Probability Index (PPI) lookup table for Senegal
#'
#' @format A data frame with 11 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{nl75}}{National poverty line (75\%)}
#' \item{\code{nl125}}{National poverty line (125\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixSEN"


################################################################################
#
#' ppiMatrixSLE
#'
#' Poverty Probability Index (PPI) lookup table for Sierra Leone
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl75}}{National poverty line (75\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixSLE"


################################################################################
#
#' ppiMatrixZAF
#'
#' Poverty Probability Index (PPI) lookup table for South Africa
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{nu100}}{National upper poverty line (100\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp400}}{Below $4.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixZAF"


################################################################################
#
#' ppiMatrixSYR
#'
#' Poverty Probability Index (PPI) lookup table for Syria
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nu100}}{National upper poverty line (100\%)}
#' \item{\code{nl100}}{National lower poverty line (100\%)}
#' \item{\code{nu150}}{National upper poverty line (150\%)}
#' \item{\code{nu200}}{National upper poverty line (200\%)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixSYR"


################################################################################
#
#' ppiMatrixTJK
#'
#' Poverty Probability Index (PPI) lookup table for Tajikistan
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{median}}{Poorest half below 100\% national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixTJK"


################################################################################
#
#' ppiMatrixTLS
#'
#' Poverty Probability Index (PPI) lookup table for Timor Leste
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National lower poverty line (100\%)}
#' \item{\code{nu100}}{National upper poverty line (100\%)}
#' \item{\code{nu150}}{National upper poverty line (150\%)}
#' \item{\code{nu200}}{National upper poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixTLS"


################################################################################
#
#' ppiMatrixVNM
#'
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
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixVNM"


################################################################################
#
#' ppiMatrixYEM
#'
#' Poverty Probability Index (PPI) lookup table for Yemen
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp300}}{Below $3.00 per day purchasing power parity (2005)}
#' \item{\code{ppp400}}{Below $4.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixYEM"


################################################################################
#
#' ppiMatrixGTM
#'
#' Poverty Probability Index (PPI) lookup table for Guatemala
#'
#' @format A data frame with 17 columns and 101 rows:
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
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile50}}{Below 50th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixGTM"


################################################################################
#
#' ppiMatrixHTI
#'
#' Poverty Probability Index (PPI) lookup table for Haiti
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
"ppiMatrixHTI"


################################################################################
#
#' ppiMatrixIND_r59
#'
#' Poverty Probability Index (PPI) lookup table for India
#'
#' @format A data frame with 4 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{saxena}}{National saxena}
#' \item{\code{ppp108}}{Below $1.08 per day purchasing power parity (1993)}
#' \item{\code{ppp216}}{Below $2.16 per day purchasing power parity (1993)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixIND_r59"

################################################################################
#
#' ppiMatrixIND_r62
#'
#' Poverty Probability Index (PPI) lookup table for India
#'
#' @format A data frame with 7 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{saxena}}{National saxena}
#' \item{\code{ppp108}}{Below $1.08 per day purchasing power parity (1993)}
#' \item{\code{ppp81}}{Below $0.81 per day purchasing power parity (1993)}
#' \item{\code{ppp135}}{Below $1.35 per day purchasing power parity (1993)}
#' \item{\code{ppp162}}{Below $1.62 per day purchasing power parity (1993)}
#' \item{\code{ppp216}}{Below $2.16 per day purchasing power parity (1993)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixIND_r62"

################################################################################
#
#' ppiMatrixIND_r66
#'
#' Poverty Probability Index (PPI) lookup table for India
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{tendulkar}}{National tendulkar}
#' \item{\code{tendulkar100}}{National tendulkar (100\%)}
#' \item{\code{tendulkar150}}{National tendulkar (150\%)}
#' \item{\code{tendulkar200}}{National tendulkar (200\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp188}}{Below $1.88 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixIND_r66"




################################################################################
#
#' ppiMatrixIND_r68
#'
#' Poverty Probability Index (PPI) lookup table for India
#'
#' @format A data frame with 16 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{rangarajan100}}{National rangarajan (100\%)}
#' \item{\code{rangarajan150}}{National rangarajan (150\%)}
#' \item{\code{rangarajan200}}{National rangarajan (200\%)}
#' \item{\code{half100}}{Poorest half below 100\% national}
#' \item{\code{rbiUrban}}{RBI urban}
#' \item{\code{rbiRural}}{RBI rural}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' \item{\code{ppp380}}{Below $3.80 per day purchasing power parity (2011)}
#' \item{\code{ppp400}}{Below $4.00 per day purchasing power parity (2011)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile50}}{Below 50th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixIND_r68"


################################################################################
#
#' ppiMatrixJOR
#'
#' Poverty Probability Index (PPI) lookup table for Jordan
#'
#' @format A data frame with 10 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{nl250}}{National poverty line (250\%)}
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
"ppiMatrixJOR"


################################################################################
#
#' ppiMatrixKGZ
#'
#' Poverty Probability Index (PPI) lookup table for Kyrgyzstan
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{median}}{Poorest half below 100 national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixKGZ"


################################################################################
#
#' ppiMatrixNAM
#'
#' Poverty Probability Index (PPI) lookup table for Namibia
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National lower poverty line (100\%)}
#' \item{\code{nu100}}{National upper poverty line (100\%)}
#' \item{\code{nu150}}{National upper poverty line (150\%)}
#' \item{\code{nu200}}{National upper poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixNAM"


################################################################################
#
#' ppiMatrixPSE
#'
#' Poverty Probability Index (PPI) lookup table for Palestine
#'
#' @format A data frame with 11 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{deep}}{Deep poverty}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{median}}{Poorest half below 100\% national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#' @source \url{www.povertyindex.org}
#'
#
################################################################################
"ppiMatrixPSE"
 
 
################################################################################
# 
#' ppiMatrixMMR  
#' 
#' Poverty Probability Index (PPI) lookup table for Myanmar  
#' 
#' @format A data frame with 8 columns and 101 rows:  
#' \describe{ 
#' \item{\code{score}}{PPI score}  
#' \item{\code{nlFood}}{Food poverty line}  
#' \item{\code{nl100}}{National poverty line (100)}  
#' \item{\code{nl150}}{National poverty line (150)}  
#' \item{\code{nl200}}{National poverty line (200)}  
#' \item{\code{extreme}}{USAID extreme poverty}  
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}  
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}  
#' } 
#' @source \url{www.povertyindex.org}  
#' 
# 
################################################################################ 
"ppiMatrixMMR"