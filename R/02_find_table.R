#'
#' Search for PPI table by specifying region, country and/or calculation type.
#'
#' @param region Region of the world to search PPI table from. Default is
#'     \code{c("Africa", "Asia", "Eastern Europe and Central Asia",
#'     "Latin America and the Carribean", "Middle East and North Africa")}. Allows
#'     specification of one region or a vector of regions.
#' @param country Country to search PPI table from. Default is vector of all
#'     country names from the specified region/s. Allows specification of one
#'     country name or a vector of country names.
#' @param type Type of PPI calculation used. Can be one of two options: \code{"sps"}
#'     for the Simple Poverty Scorecard calculation or \code{"ipa"} for the
#'     International Poverty Alliance calculation. Default is vector of all
#'     calculation types available for the specified country/ies.
#'
#' @return A data frame in \code{tibble} format of corresponding PPI table/s
#'     matching the search parameters. The data frame contains information on the
#'     \code{region}, \code{country}, \code{description}, \code{survey year},
#'     \code{release year}, \code{calculation type}, and \code{filename} of the
#'     returned PPI table/s.
#'
#' @examples
#' ## View the full data frame of all the PPI tables available through ppitables
#' find_table()
#'
#' @export
#'

find_table <- function(region = steer$region,
                       country = steer$country[steer$region %in% region],
                       type = steer$type[steer$country %in% country]) {

  ## Check which region is found in the PPI tables list
  .region <- region[!region %in% steer$region]

  ## Warning message for region/s not found in the PPI tables list
  if(!is.null(.region)) {
    for(i in .region) {
      warning(paste(i, " not in the list of regions with PPI tables. Check region name spelling and/or check that ",
                    i, " is in the list of regions with PPI tables. Returning NULL results for ", i,
                    sep = ""),
              call. = TRUE)
    }
  }

  ## Check with country is found in the PPI tables list
  .country <- country[!country %in% steer$country[steer$region %in% region]]

  ## Warning message for country/countries not found in the PPI tables list
  if(!is.null(.country)) {
    for(i in .country) {
      warning(paste(i, " not in the list of countries with PPI tables. Check country name spelling and/or check that ",
                    i, " is in the list of countries with PPI tables. Returning NULL results for ", i,
                    sep = ""),
              call. = TRUE)
    }
  }

  ## Check which type is found in the PPI tables list
  .type <- type[!type %in% steer$type[steer$country %in% country]]

  ## Warning message for type not found in the PPI tables list
  if(!is.null(.type)) {
    for(i in .type) {
      warning(paste(i, " not in the list of calculation types for the given country/ies. Check type ",
                    i, " is in the list of calculation types for the given country/ies. Returning NULL results for type ", i,
                    sep = ""),
              call. = TRUE)
    }
  }

  ## Create search output of PPI tables list
  table_list <- tibble::tibble(steer[steer$region %in% region &
                                       steer$country %in% country &
                                       steer$type %in% type, ])

  ## Retrun search output
  return(table_list)
}
