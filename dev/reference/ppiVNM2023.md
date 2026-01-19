# Poverty Probability Index (PPI) lookup table for Vietnam for 2023

Poverty Probability Index (PPI) lookup table for Vietnam for 2023

## Usage

``` r
ppiVNM2023
```

## Format

A data frame with 8 columns and 101 rows:

- `score`:

  PPI score

- `percentile20`:

  Below 20th percentile poverty line

- `percentile40`:

  Below 40th percentile poverty line

- `percentile60`:

  Below 60th percentile poverty line

- `percentile80`:

  Below 80th percentile poverty line

## Source

<https://www.povertyindex.org>

## Examples

``` r
  # Access Vietnam PPI table
  ppiVNM2023
#> # A tibble: 101 × 5
#>    score percentile20 percentile40 percentile60 percentile80
#>    <dbl>        <dbl>        <dbl>        <dbl>        <dbl>
#>  1     0        100.0        100.0        100.0        100.0
#>  2     1        100.0        100.0        100.0        100.0
#>  3     2        100.0        100.0        100.0        100.0
#>  4     3        100.0        100.0        100.0        100.0
#>  5     4        100.0        100.0        100.0        100.0
#>  6     5        100.0        100.0        100.0        100.0
#>  7     6        100.0        100.0        100.0        100.0
#>  8     7        100.0        100.0        100.0        100.0
#>  9     8        100.0        100.0        100.0        100.0
#> 10     9        100.0        100.0        100.0        100.0
#> # ℹ 91 more rows

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiVNM2023[ppiVNM2023$score == ppiScore, ]
#> # A tibble: 1 × 5
#>   score percentile20 percentile40 percentile60 percentile80
#>   <dbl>        <dbl>        <dbl>        <dbl>        <dbl>
#> 1    50         64.9         97.7         99.1        100.0

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiVNM2023, score == ppiScore)
#> # A tibble: 1 × 5
#>   score percentile20 percentile40 percentile60 percentile80
#>   <dbl>        <dbl>        <dbl>        <dbl>        <dbl>
#> 1    50         64.9         97.7         99.1        100.0

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line definition
  ppiScore <- 50
  ppiVNM2023[ppiVNM2023$score == ppiScore, "percentile20"]
#> # A tibble: 1 × 1
#>   percentile20
#>          <dbl>
#> 1         64.9
```
