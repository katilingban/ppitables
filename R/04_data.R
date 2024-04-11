################################################################################
#
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
#'
#' @examples
#'   # Access Afghanistan PPI table
#'   ppiAFG2012
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiAFG2012[ppiAFG2012$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiAFG2012, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiAFG2012[ppiAFG2012$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#'
#
################################################################################
"ppiAFG2012"


################################################################################
#
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
#'
#' @examples
#'   # Access Angola PPI table
#'   ppiAGO2015
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiAGO2015[ppiAGO2015$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiAGO2015, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiAGO2015[ppiAGO2015$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiAGO2015"


################################################################################
#
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
#'
#' @examples
#'   # Access Bangladesh PPI table
#'   ppiBGD2013
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiBGD2013[ppiBGD2013$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiBGD2013, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiBGD2013[ppiBGD2013$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiBGD2013"


################################################################################
#
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
#'
#' @examples
#'   # Access Brazil PPI table
#'   ppiBRA2010
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiBRA2010[ppiBRA2010$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiBRA2010, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiBRA2010[ppiBRA2010$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiBRA2010"


################################################################################
#
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
#'
#' @examples
#'   # Access Cameroon PPI table
#'   ppiCMR2013
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiCMR2013[ppiCMR2013$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiCMR2013, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiCMR2013[ppiCMR2013$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiCMR2013"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Dominican Republic
#'
#' @format A data frame with 11 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl50}}{National poverty line (50\%)}
#' \item{\code{nl75}}{National poverty line (75\%)}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#'
#' @examples
#'   # Access Dominican Republic PPI table
#'   ppiDOM2010
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiDOM2010[ppiDOM2010$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiDOM2010, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiDOM2010[ppiDOM2010$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiDOM2010"


################################################################################
#
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
#'
#' @examples
#'   # Access Egypt PPI table
#'   ppiEGY2010
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiEGY2010[ppiEGY2010$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiEGY2010, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiEGY2010[ppiEGY2010$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiEGY2010"


################################################################################
#
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
#'
#' @examples
#'   # Access Fiji PPI table
#'   ppiFJI2014
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiFJI2014[ppiFJI2014$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiFJI2014, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiFJI2014[ppiFJI2014$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiFJI2014"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Ghana based on legacy
#' definitions
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
#'
#' @examples
#'   # Access Ghana PPI table
#'   ppiGHA2015
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiGHA2015[ppiGHA2015$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiGHA2015, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiGHA2015[ppiGHA2015$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiGHA2015"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Ghana using poverty
#' definitions deflated with Ghana's CPI
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
#'
#' @examples
#'   # Access Ghana PPI table
#'   ppiGHA2015_a
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiGHA2015_a[ppiGHA2015_a$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiGHA2015_a, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiGHA2015_a[ppiGHA2015_a$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiGHA2015_a"

################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Ghana using poverty
#' definitions deflated with the change in 100\% of national poverty line
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
#'
#' @examples
#'   # Access Ghana PPI table
#'   ppiGHA2015_b
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiGHA2015_b[ppiGHA2015_b$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiGHA2015_b, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the below $1.25
#'   # per day purchasing power parity (2005)
#'   ppiScore <- 50
#'   ppiGHA2015_b[ppiGHA2015_b$score == ppiScore, "ppp125"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiGHA2015_b"


################################################################################
#
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
#'
#' @examples
#'   # Access Haiti PPI table
#'   ppiHTI2016
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiHTI2016[ppiHTI2016$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiHTI2016, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiHTI2016[ppiHTI2016$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiHTI2016"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for India using r59 poverty
#' definitions
#'
#' @format A data frame with 4 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{saxena}}{National saxena}
#' \item{\code{ppp108}}{Below $1.08 per day purchasing power parity (1993)}
#' \item{\code{ppp216}}{Below $2.16 per day purchasing power parity (1993)}
#' }
#'
#' @examples
#'   # Access India PPI table
#'   ppiIND2016_r59
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiIND2016_r59[ppiIND2016_r59$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiIND2016_r59, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the saxena
#'   # poverty definition
#'   ppiScore <- 50
#'   ppiIND2016_r59[ppiIND2016_r59$score == ppiScore, "saxena"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiIND2016_r59"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for India using r62 poverty
#' definitions
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
#'
#' @examples
#'   # Access India PPI table
#'   ppiIND2016_r62
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiIND2016_r62[ppiIND2016_r62$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiIND2016_r62, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # saxena poverty definition
#'   ppiScore <- 50
#'   ppiIND2016_r62[ppiIND2016_r62$score == ppiScore, "saxena"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiIND2016_r62"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for India using r66 poverty
#' definitions
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
#'
#' @examples
#'   # Access India PPI table
#'   ppiIND2016_r66
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiIND2016_r66[ppiIND2016_r66$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiIND2016_r66, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # tendulkar poverty definition
#'   ppiScore <- 50
#'   ppiIND2016_r66[ppiIND2016_r66$score == ppiScore, "tendulkar"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiIND2016_r66"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for India using r68 poverty
#' definitions
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
#'
#' @examples
#'   # Access India PPI table
#'   ppiIND2016_r68
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiIND2016_r68[ppiIND2016_r68$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiIND2016_r68, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # rangarajan poverty definition
#'   ppiScore <- 50
#'   ppiIND2016_r68[ppiIND2016_r68$score == ppiScore, "rangarajan100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiIND2016_r68"





################################################################################
#
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
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2011)}
#' \item{\code{ppp800}}{Below $8.00 per day purchasing power parity (2011)}
#' }
#'
#' @examples
#'   # Access Ivory Coast PPI table
#'   ppiCIV2013
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiCIV2013[ppiCIV2013$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiCIV2013, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiCIV2013[ppiCIV2013$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiCIV2013"


################################################################################
#
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
#'
#' @examples
#'   # Access Jordan PPI table
#'   ppiJOR2010
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiJOR2010[ppiJOR2010$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiJOR2010, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiJOR2010[ppiJOR2010$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiJOR2010"


################################################################################
#
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
#'
#' @examples
#'   # Access Kenya PPI table
#'   ppiKEN2011
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiKEN2011[ppiKEN2011$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiKEN2011, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiKEN2011[ppiKEN2011$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiKEN2011"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Kyrgyzstan
#'
#' @format A data frame with 9 columns and 101 rows:
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
#' }
#'
#' @examples
#'   # Access Kyrgyzstan PPI table
#'   ppiKGZ2015
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiKGZ2015[ppiKGZ2015$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiKGZ2015, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiKGZ2015[ppiKGZ2015$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiKGZ2015"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Madagascar
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{Food poverty line}
#' \item{\code{nl150}}{National poverty line (100\%)}
#' \item{\code{nl200}}{National poverty line (150\%)}
#' \item{\code{median}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Poorest half below 100\% national}
#' \item{\code{ppp200}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#'
#' @examples
#'   # Access Madagascar PPI table
#'   ppiMDG2015
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMDG2015[ppiMDG2015$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMDG2015, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiMDG2015[ppiMDG2015$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiMDG2015"


################################################################################
#
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
#'
#' @examples
#'   # Access Mali PPI table
#'   ppiMLI2010
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMLI2010[ppiMLI2010$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMLI2010, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiMLI2010[ppiMLI2010$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiMLI2010"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Mexico using new poverty
#' definitions
#'
#' @format A data frame with 17 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National lower poverty line (100\%)}
#' \item{\code{nu100}}{National upper poverty line (100\%)}
#' \item{\code{nu150}}{National upper poverty line (150\%)}
#' \item{\code{nu200}}{National upper poverty line (200\%)}
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
#'
#' @examples
#'   # Access Mexico PPI table
#'   ppiMEX2017_a
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMEX2017_a[ppiMEX2017_a$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMEX2017_a, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiMEX2017_a[ppiMEX2017_a$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiMEX2017_a"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Mexico using legacy
#' definitions
#'
#' @format A data frame with 8 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nlCapability}}{Capabilities}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl125}}{National poverty line (125\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#'
#' @examples
#'   # Access Mexico PPI table
#'   ppiMEX2017
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMEX2017[ppiMEX2017$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMEX2017, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiMEX2017[ppiMEX2017$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiMEX2017"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Mongolia
#'
#' @format A data frame with 18 columns and 101 rows:
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
#'
#' @examples
#'   # Access Mongolia PPI table
#'   ppiMNG2016
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMNG2016[ppiMNG2016$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMNG2016, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiMNG2016[ppiMNG2016$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiMNG2016"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Morocco
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
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' }
#'
#' @examples
#'   # Access Morocco PPI table
#'   ppiMAR2013
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMAR2013[ppiMAR2013$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMAR2013, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiMAR2013[ppiMAR2013$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiMAR2013"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Myanmar
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
#'
#' @examples
#'   # Access Myanmar PPI table
#'   ppiMMR2012
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMMR2012[ppiMMR2012$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMMR2012, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiMMR2012[ppiMMR2012$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiMMR2012"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Mozambique
#'
#' @format A data frame with 7 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{ppp100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#'
#' @examples
#'   # Access Mozambique PPI table
#'   ppiMOZ2013
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMOZ2013[ppiMOZ2013$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMOZ2013, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiMOZ2013[ppiMOZ2013$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiMOZ2013"


################################################################################
#
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
#'
#' @examples
#'   # Access Namibia PPI table
#'   ppiNAM2013
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiNAM2013[ppiNAM2013$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiNAM2013, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiNAM2013[ppiNAM2013$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiNAM2013"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Nepal using new poverty
#' definitions
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
#'
#' @examples
#'   # Access Nepal PPI table
#'   ppiNPL2013_a
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiNPL2013_a[ppiNPL2013_a$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiNPL2013_a, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiNPL2013_a[ppiNPL2013_a$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiNPL2013_a"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Nepal using legacy poverty
#' definitions
#'
#' @format A data frame with 4 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#'
#' @examples
#'   # Access Nepal PPI table
#'   ppiNPL2013
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiNPL2013[ppiNPL2013$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiNPL2013, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiNPL2013[ppiNPL2013$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiNPL2013"


################################################################################
#
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
#'
#' @examples
#'   # Access Nicaragua PPI table
#'   ppiNIC2013
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiNIC2013[ppiNIC2013$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiNIC2013, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiNIC2013[ppiNIC2013$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiNIC2013"


################################################################################
#
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
#'
#' @examples
#'   # Access Niger PPI table
#'   ppiNER2013
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiNER2013[ppiNER2013$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiNER2013, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiNER2013[ppiNER2013$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiNER2013"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Nigeria
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
#' \item{\code{ppp400}}{Below $4.00 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' }
#'
#' @examples
#'   # Access Nigeria PPI table
#'   ppiNGA2015
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiNGA2015[ppiNGA2015$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiNGA2015, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiNGA2015[ppiNGA2015$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiNGA2015"


################################################################################
#
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
#'
#' @examples
#'   # Access Palestine PPI table
#'   ppiPSE2014
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiPSE2014[ppiPSE2014$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiPSE2014, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiPSE2014[ppiPSE2014$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiPSE2014"


################################################################################
#
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
#'
#' @examples
#'   # Access Paraguay PPI table
#'   ppiPRY2012
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiPRY2012[ppiPRY2012$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiPRY2012, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiPRY2012[ppiPRY2012$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiPRY2012"


################################################################################
#
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
#'
#' @examples
#'   # Access Peru PPI table
#'   ppiPER2012
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiPER2012[ppiPER2012$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiPER2012, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiPER2012[ppiPER2012$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiPER2012"





################################################################################
#
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
#'
#' @examples
#'   # Access Romania PPI table
#'   ppiROU2009
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiROU2009[ppiROU2009$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiROU2009, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiROU2009[ppiROU2009$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiROU2009"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Russia
#'
#' @format A data frame with 4 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp625}}{Below $6.25 per day purchasing power parity (2005)}
#' }
#'
#' @examples
#'   # Access Russia PPI table
#'   ppiRUS2010
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiRUS2010[ppiRUS2010$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiRUS2010, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiRUS2010[ppiRUS2010$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiRUS2010"


################################################################################
#
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
#'
#' @examples
#'   # Access Senegal PPI table
#'   ppiSEN2009
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiSEN2009[ppiSEN2009$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiSEN2009, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiSEN2009[ppiSEN2009$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiSEN2009"


################################################################################
#
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
#'
#' @examples
#'   # Access Rwanda PPI table
#'   ppiRWA2016
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiRWA2016[ppiRWA2016$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiRWA2016, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiRWA2016[ppiRWA2016$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiRWA2016"


################################################################################
#
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
#'
#' @examples
#'   # Access Sierra Leone PPI table
#'   ppiSLE2011
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiSLE2011[ppiSLE2011$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiSLE2011, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiSLE2011[ppiSLE2011$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiSLE2011"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Sri Lanka
#'
#' @format A data frame with 16 columns and 101 rows:
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
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile50}}{Below 50th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Sri Lanka PPI table
#'   ppiLKA2016
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiLKA2016[ppiLKA2016$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiLKA2016, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiLKA2016[ppiLKA2016$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiLKA2016"


################################################################################
#
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
#'
#' @examples
#'   # Access Syria PPI table
#'   ppiSYR2010
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiSYR2010[ppiSYR2010$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiSYR2010, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiSYR2010[ppiSYR2010$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiSYR2010"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Tanzania
#'
#' @format A data frame with 19 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' \item{\code{ppp380}}{Below $3.80 per day purchasing power parity (2011)}
#' \item{\code{ppp400}}{Below $4.00 per day purchasing power parity (2011)}
#' \item{\code{half100}}{Poorest half below 100 national}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile50}}{Below 50th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Tanzania PPI table
#'   ppiTZA2016
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiTZA2016[ppiTZA2016$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiTZA2016, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiTZA2016[ppiTZA2016$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiTZA2016"


################################################################################
#
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
#'
#' @examples
#'   # Access Tajikistan PPI table
#'   ppiTJK2015
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiTJK2015[ppiTJK2015$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiTJK2015, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiTJK2015[ppiTJK2015$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiTJK2015"


################################################################################
#
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
#'
#' @examples
#'   # Access Timor Leste PPI table
#'   ppiTLS2013
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiTLS2013[ppiTLS2013$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiTLS2013, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiTLS2013[ppiTLS2013$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiTLS2013"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Uganda
#'
#' @format A data frame with 13 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{half100}}{Poorest half below 100\% national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp400}}{Below $4.00 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp844}}{Below $8.44 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' }
#'
#' @examples
#'   # Access Uganda PPI table
#'   ppiUGA2015
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiUGA2015[ppiUGA2015$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiUGA2015, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiUGA2015[ppiUGA2015$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiUGA2015"


################################################################################
#
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
#'
#' @examples
#'   # Access Yemen PPI table
#'   ppiYEM2009
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiYEM2009[ppiYEM2009$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiYEM2009, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiYEM2009[ppiYEM2009$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiYEM2009"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Pakistan
#'
#' @format A data frame with 10 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl50}}{National poverty line (50\%)}
#' \item{\code{nl75}}{National poverty line (75\%)}
#' \item{\code{nl125}}{National poverty line (125\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Poorest half below 100 national}
#' \item{\code{ppp250}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#'
#' @examples
#'   # Access Pakistan PPI table
#'   ppiPAK2009
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiPAK2009[ppiPAK2009$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiPAK2009, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line definition
#'   ppiScore <- 50
#'   ppiPAK2009[ppiPAK2009$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiPAK2009"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Ivory Coast
#'
#' @format A data frame with 15 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Below $1.00 per day purchasing power parity (2011)}
#' \item{\code{ppp250}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp500}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{ppp100}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{ppp190}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp320}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp550}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiCIV2018"



################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Peru
#'
#' @format A data frame with 19 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{extreme}}{Extreme national poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
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
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiPER2018"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Colombia
#'
#' @format A data frame with 12 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{half100}}{Poorest half below 100 national}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp375}}{Below $3.75 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' }
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiCOL2012_a"

################################################################################
#
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
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiCOL2012"

################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Colombia
#'
#' @format A data frame with 19 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{extreme}}{Extreme national poverty line}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
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
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiCOL2018"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Zambia
#'
#' @format A data frame with 17 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{food}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp310}}{Below $3.10 per day purchasing power parity (2011)}
#' \item{\code{median}}{Median poverty line}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 50th percentile poverty line}
#' \item{\code{percentile50}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiZMB2017"

################################################################################
#
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
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiZMB2017_a"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Zambia
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{food}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiZMB2013_cso"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Zambia
#'
#' @format A data frame with 9 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{food}}{Food poverty line}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{extreme}}{USAID extreme poverty}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp200}}{Below $2.00 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' }
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiZMB2013_got"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Kenya
#'
#' @format A data frame with 17 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp100}}{Below $1.00 per day purchasing power parity (2011)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp320}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{ppp800}}{Below $8.00 per day purchasing power parity (2011)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 50th percentile poverty line}
#' \item{\code{percentile80}}{Below 60th percentile poverty line}
#' }
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiKEN2018"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Senegal
#'
#' @format A data frame with 16 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{Food poverty line}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
#' \item{\code{ppp100}}{Below $1.00 per day purchasing power parity (2011)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp320}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{ppp125}}{Below $1.25 per day purchasing power parity (2005)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiSEN2018"

################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Dominican Republic
#'
#' @format A data frame with 16 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{nlFood}}{National poverty line (150\%)}
#' \item{\code{nl150}}{National poverty line (200\%)}
#' \item{\code{ppp320}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{ppp800}}{Below $8.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1100}}{Below $11.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1500}}{Below $15.00 per day purchasing power parity (2011)}
#' \item{\code{ppp2170}}{Below $21.70 per day purchasing power parity (2011)}
#' \item{\code{ppp250}}{Below $2.50 per day purchasing power parity (2005)}
#' \item{\code{ppp500}}{Below $5.00 per day purchasing power parity (2005)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 60th percentile poverty line}
#' \item{\code{percentile80}}{Below 80th percentile poverty line}
#' }
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiDOM2018"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Ghana
#'
#' @format A data frame with 20 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100\%)}
#' \item{\code{extreme}}{Extreme poverty line}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
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
#' \item{\code{percentile60}}{Below 50th percentile poverty line}
#' \item{\code{percentile80}}{Below 60th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Ghana PPI table
#'   ppiGHA2019
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiGHA2019[ppiGHA2019$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiGHA2019, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line is used
#'   ppiScore <- 50
#'   ppiGHA2019[ppiGHA2019$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiGHA2019"

################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Mozambique
#'
#' @format A data frame with 15 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100)}
#' \item{\code{nl150}}{National poverty line (150)}
#' \item{\code{nl200}}{National poverty line (200)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp320}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{ppp800}}{Below $8.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1100}}{Below $11.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1500}}{Below $15.00 per day purchasing power parity (2011)}
#' \item{\code{ppp2170}}{Below $21.70 per day purchasing power parity (2011)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 50th percentile poverty line}
#' \item{\code{percentile80}}{Below 60th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Mozambique PPI table
#'   ppiMOZ2019
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMOZ2019[ppiMOZ2019$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMOZ2019, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line is used
#'   ppiScore <- 50
#'   ppiMOZ2019[ppiMOZ2019$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiMOZ2019"

################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Myanmar
#'
#' @format A data frame with 20 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100)}
#' \item{\code{extreme}}{National poverty line (150)}
#' \item{\code{nl150}}{National poverty line (200)}
#' \item{\code{nl200}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp100}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{ppp190}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{ppp320}}{Below $8.00 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $11.00 per day purchasing power parity (2011)}
#' \item{\code{ppp800}}{Below $15.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1100}}{Below $21.70 per day purchasing power parity (2011)}
#' \item{\code{ppp1500}}{Below 20th percentile poverty line}
#' \item{\code{ppp2170}}{Below 40th percentile poverty line}
#' \item{\code{ppp125}}{Below 50th percentile poverty line}
#' \item{\code{ppp250}}{Below 60th percentile poverty line}
#' \item{\code{ppp500}}{Below 80th percentile poverty line}
#' \item{\code{percentile20}}{NA}
#' \item{\code{percentile40}}{NA}
#' \item{\code{percentile60}}{NA}
#' \item{\code{percentile80}}{NA}
#' }
#'
#' @examples
#'   # Access Myanmar PPI table
#'   ppiMMR2019
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiMMR2019[ppiMMR2019$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiMMR2019, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiMMR2019[ppiMMR2019$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiMMR2019"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Rwanda
#'
#' @format A data frame with 20 columns and 101 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl100}}{National poverty line (100)}
#' \item{\code{extreme}}{National poverty line (150)}
#' \item{\code{nl150}}{National poverty line (200)}
#' \item{\code{nl200}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp100}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{ppp190}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{ppp320}}{Below $8.00 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $11.00 per day purchasing power parity (2011)}
#' \item{\code{ppp800}}{Below $15.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1100}}{Below $21.70 per day purchasing power parity (2011)}
#' \item{\code{ppp1500}}{Below 20th percentile poverty line}
#' \item{\code{ppp2170}}{Below 40th percentile poverty line}
#' \item{\code{ppp125}}{Below 50th percentile poverty line}
#' \item{\code{ppp250}}{Below 60th percentile poverty line}
#' \item{\code{ppp500}}{Below 80th percentile poverty line}
#' \item{\code{percentile20}}{NA}
#' \item{\code{percentile40}}{NA}
#' \item{\code{percentile60}}{NA}
#' \item{\code{percentile80}}{NA}
#' }
#'
#' @examples
#'   # Access Rwanda PPI table
#'   ppiRWA2019
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiRWA2019[ppiRWA2019$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiRWA2019, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the national
#'   # poverty line is used
#'   ppiScore <- 50
#'   ppiRWA2019[ppiRWA2019$score == ppiScore, "nl100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiRWA2019"


################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Tanzania 2022
#'
#' @format A data frame with 21 columns and 100 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{nl_upper}}{National upper poverty line}
#' \item{\code{nl_lower}}{National lower poverty line}
#' \item{\code{extreme}}{Extreme poverty line}
#' \item{\code{nl150}}{National poverty line (150\%)}
#' \item{\code{nl200}}{National poverty line (200\%)}
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
#' \item{\code{percentile60}}{Below 50th percentile poverty line}
#' \item{\code{percentile80}}{Below 60th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Tanzania PPI table
#'   ppiTZA2022
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiTZA2022[ppiTZA2022$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiTZA2022, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the USAID
#'   # extreme poverty definition
#'   ppiScore <- 50
#'   ppiTZA2022[ppiTZA2022$score == ppiScore, "extreme"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiTZA2022"

################################################################################
#
#' Poverty Probability Index (PPI) lookup table for Uganda 2022
#'
#' @format A data frame with 21 columns and 100 rows:
#' \describe{
#' \item{\code{score}}{PPI score}
#' \item{\code{ppp100}}{Below $1.00 per day purchasing power parity (2011)}
#' \item{\code{ppp190}}{Below $1.90 per day purchasing power parity (2011)}
#' \item{\code{ppp320}}{Below $3.20 per day purchasing power parity (2011)}
#' \item{\code{ppp550}}{Below $5.50 per day purchasing power parity (2011)}
#' \item{\code{ppp800}}{Below $8.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1100}}{Below $11.00 per day purchasing power parity (2011)}
#' \item{\code{ppp1500}}{Below $15.00 per day purchasing power parity (2011)}
#' \item{\code{ppp2170}}{Below $21.70 per day purchasing power parity (2011)}
#' \item{\code{percentile20}}{Below 20th percentile poverty line}
#' \item{\code{percentile40}}{Below 40th percentile poverty line}
#' \item{\code{percentile60}}{Below 50th percentile poverty line}
#' \item{\code{percentile80}}{Below 60th percentile poverty line}
#' }
#'
#' @examples
#'   # Access Uganda PPI table
#'   ppiUGA2022
#'
#'   # Given a specific PPI score (from 0 - 100), get the row of poverty
#'   # probabilities from PPI table it corresponds to
#'   ppiScore <- 50
#'   ppiUGA2022[ppiUGA2022$score == ppiScore, ]
#'
#'   # Use subset() function to get the row of poverty probabilities corresponding
#'   # to specific PPI score
#'   ppiScore <- 50
#'   subset(ppiUGA2022, score == ppiScore)
#'
#'   # Given a specific PPI score (from 0 - 100), get a poverty probability
#'   # based on a specific poverty definition. In this example, the purchasing
#'   # power parity at $1.00
#'   ppiScore <- 50
#'   ppiUGA2022[ppiUGA2022$score == ppiScore, "ppp100"]
#'
#' @source \url{https://www.povertyindex.org}
#'
#
################################################################################
"ppiUGA2022"
