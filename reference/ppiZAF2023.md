# Poverty Probability Index (PPI) lookup table for South Africa for 2023

Poverty Probability Index (PPI) lookup table for South Africa for 2023

## Usage

``` r
ppiZAF2023
```

## Format

A data frame with 6 columns and 101 rows:

- `score`:

  PPI score

- `wealth_index`:

  Wealth index poverty line

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
  # Access South Africa PPI table
  ppiZAF2023
#> # A tibble: 101 × 6
#>    score wealth_index percentile20 percentile40 percentile60 percentile80
#>    <dbl>        <dbl>        <dbl>        <dbl>        <dbl>        <dbl>
#>  1     0         99.8         22.7         59.2         83.1         96.6
#>  2     1         99.7         22.6         58.9         82.8         96.5
#>  3     2         99.7         22.6         58.5         82.5         96.4
#>  4     3         99.7         22.5         58.2         82.3         96.3
#>  5     4         99.6         22.4         57.9         82.0         96.2
#>  6     5         99.5         22.4         57.6         81.7         96.1
#>  7     6         99.5         22.3         57.2         81.4         96.0
#>  8     7         99.4         22.2         56.9         81.1         95.9
#>  9     8         99.3         22.2         56.6         80.8         95.8
#> 10     9         99.2         22.1         56.3         80.5         95.7
#> # ℹ 91 more rows

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiZAF2023[ppiZAF2023$score == ppiScore, ]
#> # A tibble: 1 × 6
#>   score wealth_index percentile20 percentile40 percentile60 percentile80
#>   <dbl>        <dbl>        <dbl>        <dbl>        <dbl>        <dbl>
#> 1    50         39.7         19.6         42.8         65.3         87.3

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiZAF2023, score == ppiScore)
#> # A tibble: 1 × 6
#>   score wealth_index percentile20 percentile40 percentile60 percentile80
#>   <dbl>        <dbl>        <dbl>        <dbl>        <dbl>        <dbl>
#> 1    50         39.7         19.6         42.8         65.3         87.3

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line definition
  ppiScore <- 50
  ppiZAF2023[ppiZAF2023$score == ppiScore, "wealth_index"]
#> # A tibble: 1 × 1
#>   wealth_index
#>          <dbl>
#> 1         39.7
```
