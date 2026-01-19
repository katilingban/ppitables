# Poverty Probability Index (PPI) lookup table for Papua New Guinea 2023

Poverty Probability Index (PPI) lookup table for Papua New Guinea 2023

## Usage

``` r
ppiPNG2023
```

## Format

A data frame with 9 columns and 101 rows:

- `score`:

  PPI score

- `percentile20_wi`:

  Below 20th percentile wealth index

- `percentile40_wi`:

  Below 40th percentile wealth index

- `percentile60_wi`:

  Below 60th percentile wealth index

- `percentile80_wi`:

  Below 80th percentile wealth index

- `percentile20_wi_ur`:

  Below 20th percentile wealth index urban/rural

- `percentile40_wi_ur`:

  Below 40th percentile wealth index urban/rural

- `percentile60_wi_ur`:

  Below 60th percentile wealth index urban/rural

- `percentile80_wi_ur`:

  Below 80th percentile wealth index urban/rural

## Source

<https://www.povertyindex.org>

## Examples

``` r
  # Access Papua New Guinea PPI table
  ppiPNG2023
#> # A tibble: 101 × 9
#>    score percentile20_wi percentile40_wi percentile60_wi percentile80_wi
#>    <dbl>           <dbl>           <dbl>           <dbl>           <dbl>
#>  1     0            93.5            99.5            99.9           100.0
#>  2     1            90.8            99.3            99.9           100.0
#>  3     2            87.2            99.0            99.9           100.0
#>  4     3            82.3            98.7            99.9           100.0
#>  5     4            76.1            98.1            99.9           100.0
#>  6     5            68.6            97.4            99.8           100.0
#>  7     6            60.0            96.3            99.8           100.0
#>  8     7            50.7            94.9            99.8           100.0
#>  9     8            41.3            93.0            99.7           100.0
#> 10     9            32.6            90.4            99.7           100.0
#> # ℹ 91 more rows
#> # ℹ 4 more variables: percentile20_wi_ur <dbl>, percentile40_wi_ur <dbl>,
#> #   percentile60_wi_ur <dbl>, percentile80_wi_ur <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiPNG2023[ppiPNG2023$score == ppiScore, ]
#> # A tibble: 1 × 9
#>   score percentile20_wi percentile40_wi percentile60_wi percentile80_wi
#>   <dbl>           <dbl>           <dbl>           <dbl>           <dbl>
#> 1    50      0.00000912        0.000715            5.65            90.3
#> # ℹ 4 more variables: percentile20_wi_ur <dbl>, percentile40_wi_ur <dbl>,
#> #   percentile60_wi_ur <dbl>, percentile80_wi_ur <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiPNG2023, score == ppiScore)
#> # A tibble: 1 × 9
#>   score percentile20_wi percentile40_wi percentile60_wi percentile80_wi
#>   <dbl>           <dbl>           <dbl>           <dbl>           <dbl>
#> 1    50      0.00000912        0.000715            5.65            90.3
#> # ℹ 4 more variables: percentile20_wi_ur <dbl>, percentile40_wi_ur <dbl>,
#> #   percentile60_wi_ur <dbl>, percentile80_wi_ur <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiPNG2023[ppiPNG2023$score == ppiScore, "percentile20_wi"]
#> # A tibble: 1 × 1
#>   percentile20_wi
#>             <dbl>
#> 1      0.00000912
```
