% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02_find_table.R
\name{find_table}
\alias{find_table}
\title{Search for PPI table by specifying region, country and/or calculation type.}
\usage{
find_table(
  region = steer$region,
  country = steer$country[steer$region \%in\% region],
  type = steer$type[steer$country \%in\% country]
)
}
\arguments{
\item{region}{Region of the world to search PPI table from. Default is
\code{c("Africa", "Asia", "Eastern Europe and Central Asia",
"Latin America and the Carribean", "Middle East and North Africa")}. Allows
specification of one region or a vector of regions.}

\item{country}{Country to search PPI table from. Default is vector of all
country names from the specified region/s. Allows specification of one
country name or a vector of country names.}

\item{type}{Type of PPI calculation used. Can be one of two options: \code{"sps"}
for the Simple Poverty Scorecard calculation or \code{"ipa"} for the
International Poverty Alliance calculation. Default is vector of all
calculation types available for the specified country/ies.}
}
\value{
A data frame in \code{tibble} format of corresponding PPI table/s
    matching the search parameters. The data frame contains information on the
    \code{region}, \code{country}, \code{description}, \code{survey year},
    \code{release year}, \code{calculation type}, and \code{filename} of the
    returned PPI table/s.
}
\description{
Search for PPI table by specifying region, country and/or calculation type.
}
\examples{
## View the full data frame of all the PPI tables available through ppitables
find_table()

}
