################################################################################
#
#' Get PPI table/s based on a specified PPI table/s search output
#'
#' @param region Region of the world to search PPI table from. Default is
#'     \code{c("Africa", "Asia", "Eastern Europe and Central Asia",
#'     "Latin America and the Carribean", "Middle East and North Africa")}. Allows
#'     specification of one region or a vector of regions.
#' @param country Country to search PPI table from. Default is vector of all
#'     country names from the specified region/s. Allows specification of one
#'     country name or a vector of country names.
#' @param type Type of PPI calculation used. Can be one of two options: \code{"sps"}
#'     for the Simple Poverty Scorecard calculation or \code{ipa} for the
#'     International Poverty Alliance calculation. Default is vector of all
#'     calculation types available for the specified country/ies.
#'
#' @return A data frame in \code{tibble} format of corresponding PPI table/s
#'     matching the search parameters. The data frame is in \code{tidy} format
#'     and contains the corresponding poverty probability (\code{ppi}) for a
#'     specific score (\code{score}) for various poverty definitions \code{poverty_definition})
#'     for the country (\code{country}) and PPI calculation type (\code{type}).
#'
#' @examples
#' #
#' # Create a tidy format PPI table for Nepal
#' #
#' get_table(region = "Asia", country = "Nepal")
#'
#' @export
#'
#
################################################################################

get_table <- function(region = levels(steer$region),
                      country = as.character(steer$country[steer$region %in% region]),
                      type = as.character(steer$type[steer$country %in% country])){
  #
  # Extract information from the selected tables based on the find_table() search
  #
  table_name    <- as.character(find_table(region = region, country = country, type = type)$filename)
  table_country <- as.character(find_table(region = region, country = country, type = type)$country)
  table_year    <- as.character(find_table(region = region, country = country, type = type)$release_year)
  table_type    <- as.character(find_table(region = region, country = country, type = type)$type)
  #
  # Create a concatenating object
  #
  ppi_table <- NULL
  #
  # Cycle through the filenames of selected PPI tables
  #
  for(i in table_name) {
    #
    # Get current PPI table
    #
    temp <- get(i)
    #
    # Add contextual information to current PPI table
    #
    temp <- data.frame(country = table_country[table_name == i],
                       release_year = table_year[table_name == i],
                       filename = i,
                       type = table_type[table_name == i],
                       temp)
    #
    # Convert current PPI table to tidy format
    #
    tab <- tidyr::gather(data = temp, key = poverty_definition, value = ppi, names(temp)[6]:names(temp)[ncol(temp)])
    #
    # Add current PPI table to concatenating object
    #
    ppi_table <- tibble::as.tibble(rbind(ppi_table, tab))
  }
  #
  # Return resulting tidy format PPI table
  #
  return(ppi_table)
}
