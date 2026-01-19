# Poverty Probability Index (PPI) lookup table for Malawi for 2023

Poverty Probability Index (PPI) lookup table for Malawi for 2023

## Usage

``` r
ppiMWI2023
```

## Format

A data frame with 13 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

- `food`:

  Food poverty line

- `ppp215`:

  Below \$2.15 per day purchasing power parity (2017)

- `ppp365`:

  Below \$3.65 per day purchasing power parity (2017)

- `ppp685`:

  Below \$6.85 per day purchasing power parity (2017)

- `ppp190`:

  Below \$1.90 per day purchasing power parity (2011)

- `ppp320`:

  Below \$3.20 per day purchasing power parity (2011)

- `ppp550`:

  Below \$5.50 per day purchasing power parity (2011)

- `percentile20`:

  Below 20th percentile poverty line

- `percentile40`:

  Below 40th percentile poverty line

- `percentile60`:

  Below 50th percentile poverty line

- `percentile80`:

  Below 60th percentile poverty line

## Source

<https://www.povertyindex.org>

## Examples

``` r
  # Access Malawi PPI table
  ppiMWI2023
#> # A tibble: 101 × 13
#>    score nl100  food ppp215 ppp365 ppp685 ppp190 ppp320 ppp550 percentile20
#>    <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#>  1     0  95.1  69.6   99.1   99.9  100.0   98.6   99.9  100.0         75.0
#>  2     1  94.6  67.0   99.0   99.9  100.0   98.5   99.9  100.0         72.8
#>  3     2  94.0  64.4   98.9   99.9  100.0   98.3   99.9  100.0         70.5
#>  4     3  93.4  61.7   98.8   99.9  100.0   98.1   99.9  100.0         68.1
#>  5     4  92.8  58.9   98.6   99.9  100.0   97.9   99.8  100.0         65.6
#>  6     5  92.0  56.0   98.5   99.9  100.0   97.7   99.8  100.0         63.0
#>  7     6  91.2  53.1   98.3   99.9  100.0   97.4   99.8  100.0         60.3
#>  8     7  90.3  50.1   98.1   99.8  100.0   97.1   99.8  100.0         57.6
#>  9     8  89.4  47.2   97.9   99.8  100.0   96.8   99.7  100.0         54.8
#> 10     9  88.3  44.3   97.6   99.8  100.0   96.4   99.7  100.0         52.0
#> # ℹ 91 more rows
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiMWI2023[ppiMWI2023$score == ppiScore, ]
#> # A tibble: 1 × 13
#>   score nl100  food ppp215 ppp365 ppp685 ppp190 ppp320 ppp550 percentile20
#>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50  9.27 0.638   28.4   78.5   96.7   22.2   70.3   94.3         1.05
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiMWI2023, score == ppiScore)
#> # A tibble: 1 × 13
#>   score nl100  food ppp215 ppp365 ppp685 ppp190 ppp320 ppp550 percentile20
#>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50  9.27 0.638   28.4   78.5   96.7   22.2   70.3   94.3         1.05
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiMWI2023[ppiMWI2023$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  9.27
```
