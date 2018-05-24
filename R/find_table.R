################################################################################
#
#' find_table
#'
#' Search for PPI table by specifying region, country and/or calculation type.
#'
#' @param region Region of the world to search PPI table from. Can be one of
#' @param country Country to search PPI table from.
#' @param type Type of PPI calculation used. Can be one of two options: \code{"sps"}
#'     for the Simple Poverty Scorecard calculation or \code{ipa} for the
#'     International Poverty Alliance calculation.
#'
#' @return A data frame in \code{tibble} format of corresponding PPI table/s
#'     matching the search parameters. The data frame contains information on the
#'     \code{region}, \code{country}, \code{description}, \code{survey year},
#'     \code{release year}, \code{calculation type}, and \code{filename} of the
#'     returned PPI table/s.
#'
#' @examples
#'
#'
#'
#'
#'
#'
#'
#
################################################################################

find_table <- function(region = NULL, country = NULL, type = NULL) {
  #
  #
  #
  if(is.null(region) & is.null(country) & is.null(type)) {
    table_list <- as.tibble(ppitables:::steer)
  }
  #
  #
  #
  if(!is.null(region) & is.null(country) & is.null(type)) {
    table_list <- as.tibble(ppitables:::steer[ppitables:::steer$region == region, ])
  }
  #
  #
  #
  if(is.null(region) & !is.null(country) & is.null(type)) {
    table_list <- as.tibble(ppitables:::steer[ppitables:::steer$country == country, ])
  }
  #
  #
  #
  if(is.null(region) & is.null(country) & !is.null(type)) {
    table_list <- as.tibble(ppitables:::steer[ppitables:::steer$type == type, ])
  }
  #
  #
  #
  if(!is.null(region) & !is.null(country) & is.null(type)) {
    table_list <- as.tibble(ppitables:::steer[ppitables:::steer$region == region &
                                              ppitables:::steer$country == country, ])
  }
  #
  #
  #
  if(!is.null(region) & is.null(country) & !is.null(type)) {
    table_list <- as.tibble(ppitables:::steer[ppitables:::steer$region == region &
                                              ppitables:::steer$type == type, ])
  }
  #
  #
  #
  if(is.null(region) & !is.null(country) & !is.null(type)) {
    table_list <- as.tibble(ppitables:::steer[ppitables:::steer$country == country &
                                              ppitables:::steer$type == type, ])
  }
  #
  #
  #
  if(!is.null(region) & !is.null(country) & !is.null(type)) {
    table_list <- as.tibble(ppitables:::steer[ppitables:::steer$region == region &
                                              ppitables:::steer$country == country &
                                              ppitables:::steer$type == type, ])
  }
  #
  #
  #
  return(table_list)
}
