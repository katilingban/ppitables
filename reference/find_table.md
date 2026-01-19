# Search for PPI table by specifying region, country and/or calculation type.

Search for PPI table by specifying region, country and/or calculation
type.

## Usage

``` r
find_table(
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
  the Simple Poverty Scorecard calculation or `"ipa"` for the
  International Poverty Alliance calculation. Default is vector of all
  calculation types available for the specified country/ies.

## Value

A data frame in `tibble` format of corresponding PPI table/s matching
the search parameters. The data frame contains information on the
`region`, `country`, `description`, `survey year`, `release year`,
`calculation type`, and `filename` of the returned PPI table/s.

## Examples

``` r
## View the full data frame of all the PPI tables available through ppitables
find_table()
#> # A tibble: 116 × 7
#>    region            country survey_year release_year description type  filename
#>    <chr>             <chr>         <int>        <int> <chr>       <chr> <chr>   
#>  1 Asia              Afghan…        2007         2012 PPI for Af… sps   ppiAFG2…
#>  2 Africa            Angola         2008         2015 PPI for An… sps   ppiAGO2…
#>  3 Asia              Bangla…        2010         2013 PPI for Ba… sps   ppiBEN2…
#>  4 Africa            Benin          2010         2012 PPI for Be… sps   ppiBGD2…
#>  5 Africa            Benin          2018         2022 PPI for Be… ipa   ppiBEN2…
#>  6 Africa            Benin          2018         2022 PPI for Be… ipa   ppiBEN2…
#>  7 Latin American a… Bolivia        2013         2015 PPI for Bo… sps   ppiBOL2…
#>  8 Latin American a… Bolivia        2020         2023 PPI for Bo… ipa   ppiBOL2…
#>  9 Latin American a… Brazil         2008         2010 PPI for Br… sps   ppiBRA2…
#> 10 Africa            Burkin…        2003         2011 PPI for Bu… sps   ppiBFA2…
#> # ℹ 106 more rows
```
