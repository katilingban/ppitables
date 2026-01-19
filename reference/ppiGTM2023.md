# Poverty Probability Index (PPI) lookup table for Guatemala for 2023

Poverty Probability Index (PPI) lookup table for Guatemala for 2023

## Usage

``` r
ppiGTM2023
```

## Format

A data frame with 17 columns and 101 rows:

- `score`:

  PPI score

- `ppp190`:

  Below \$1.90 per day purchasing power parity (2011)

- `ppp320`:

  Below \$3.20 per day purchasing power parity (2011)

- `ppp550`:

  Below \$5.50 per day purchasing power parity (2011)

- `ppp215`:

  Below \$2.15 per day purchasing power parity (2017)

- `ppp365`:

  Below \$3.65 per day purchasing power parity (2017)

- `ppp685`:

  Below \$6.85 per day purchasing power parity (2017)

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
  # Access Guatemala PPI table
  ppiGTM2023
#> # A tibble: 101 × 11
#>    score ppp190 ppp320 ppp550 ppp215 ppp365 ppp685 percentile20 percentile40
#>    <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>        <dbl>
#>  1     0   75.5   81.1   92.3   71.0   85.1   96.1         79.8         91.9
#>  2     1   73.7   80.1   91.9   69.5   84.3   95.9         78.7         91.5
#>  3     2   71.9   79.1   91.5   68.0   83.5   95.7         77.6         91.0
#>  4     3   70.0   78.0   91.1   66.5   82.7   95.5         76.5         90.6
#>  5     4   68.1   76.9   90.6   64.9   81.9   95.2         75.4         90.1
#>  6     5   66.1   75.7   90.1   63.3   81.0   94.9         74.2         89.5
#>  7     6   64.0   74.5   89.6   61.7   80.1   94.7         72.9         89.0
#>  8     7   61.8   73.3   89.1   60.0   79.1   94.4         71.6         88.5
#>  9     8   59.7   72.0   88.5   58.4   78.1   94.1         70.3         87.9
#> 10     9   57.4   70.7   87.9   56.7   77.1   93.7         69.0         87.3
#> # ℹ 91 more rows
#> # ℹ 2 more variables: percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiGTM2023[ppiGTM2023$score == ppiScore, ]
#> # A tibble: 1 × 11
#>   score ppp190 ppp320 ppp550 ppp215 ppp365 ppp685 percentile20 percentile40
#>   <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>        <dbl>
#> 1    50   3.06   14.7   42.3   7.05   23.2   60.0         14.2         40.8
#> # ℹ 2 more variables: percentile60 <dbl>, percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiGTM2023, score == ppiScore)
#> # A tibble: 1 × 11
#>   score ppp190 ppp320 ppp550 ppp215 ppp365 ppp685 percentile20 percentile40
#>   <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>        <dbl>
#> 1    50   3.06   14.7   42.3   7.05   23.2   60.0         14.2         40.8
#> # ℹ 2 more variables: percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line definition
  ppiScore <- 50
  ppiGTM2023[ppiGTM2023$score == ppiScore, "ppp190"]
#> # A tibble: 1 × 1
#>   ppp190
#>    <dbl>
#> 1   3.06
```
