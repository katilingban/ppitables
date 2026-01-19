# Get PPI table/s based on a specified PPI table/s search output

Get PPI table/s based on a specified PPI table/s search output

## Usage

``` r
get_table(
  region = steer$region,
  country = steer$country[steer$region %in% region],
  type = steer$type[steer$country %in% country]
)
```

## Arguments

- region:

  Region of the world to search PPI table from. Default is
  `c("Africa", "Asia", "Eastern Europe and Central Asia", "Latin America and the Carribean", "Middle East and North Africa")`.
  Allows specification of one region or a vector of regions.

- country:

  Country to search PPI table from. Default is vector of all country
  names from the specified region/s. Allows specification of one country
  name or a vector of country names.

- type:

  Type of PPI calculation used. Can be one of two options: `"sps"` for
  the Simple Poverty Scorecard calculation or `ipa` for the
  International Poverty Alliance calculation. Default is vector of all
  calculation types available for the specified country/ies.

## Value

A data frame in `tibble` format of corresponding PPI table/s matching
the search parameters. The data frame is in `tidy` format and contains
the corresponding poverty probability (`ppi`) for a specific score
(`score`) for various poverty definitions) for the country (`country`)
and PPI calculation type (`type`).

## Examples

``` r
## Create a tidy format PPI table for Nepal
get_table(region = "Asia", country = "Nepal")
#> # A tibble: 1,111 × 7
#>    country release_year filename   type  score poverty_definition   ppi
#>    <chr>   <chr>        <chr>      <chr> <int> <chr>              <dbl>
#>  1 Nepal   2013         ppiNPL2013 sps       0 nl100                100
#>  2 Nepal   2013         ppiNPL2013 sps       0 ppp125               100
#>  3 Nepal   2013         ppiNPL2013 sps       0 ppp250               100
#>  4 Nepal   2013         ppiNPL2013 sps       1 nl100                100
#>  5 Nepal   2013         ppiNPL2013 sps       1 ppp125               100
#>  6 Nepal   2013         ppiNPL2013 sps       1 ppp250               100
#>  7 Nepal   2013         ppiNPL2013 sps       2 nl100                100
#>  8 Nepal   2013         ppiNPL2013 sps       2 ppp125               100
#>  9 Nepal   2013         ppiNPL2013 sps       2 ppp250               100
#> 10 Nepal   2013         ppiNPL2013 sps       3 nl100                100
#> # ℹ 1,101 more rows
```
