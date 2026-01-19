# Poverty Probability Index (PPI) lookup table for Uganda 2022

Poverty Probability Index (PPI) lookup table for Uganda 2022

## Usage

``` r
ppiUGA2022
```

## Format

A data frame with 21 columns and 100 rows:

- `score`:

  PPI score

- `ppp100`:

  Below \$1.00 per day purchasing power parity (2011)

- `ppp190`:

  Below \$1.90 per day purchasing power parity (2011)

- `ppp320`:

  Below \$3.20 per day purchasing power parity (2011)

- `ppp550`:

  Below \$5.50 per day purchasing power parity (2011)

- `ppp800`:

  Below \$8.00 per day purchasing power parity (2011)

- `ppp1100`:

  Below \$11.00 per day purchasing power parity (2011)

- `ppp1500`:

  Below \$15.00 per day purchasing power parity (2011)

- `ppp2170`:

  Below \$21.70 per day purchasing power parity (2011)

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
  # Access Uganda PPI table
  ppiUGA2022
#> # A tibble: 100 × 13
#>    score ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100 ppp1500 ppp2170 percentile20
#>    <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>   <dbl>   <dbl>        <dbl>
#>  1     1   66.0   89.8   96.1   99.1   99.6    99.8    99.9    99.9         79.7
#>  2     2   63.9   89.1   95.9   99.1   99.6    99.7    99.8    99.9         78.5
#>  3     3   61.7   88.5   95.6   99.0   99.6    99.7    99.8    99.9         77.2
#>  4     4   59.5   87.8   95.4   99.0   99.6    99.7    99.8    99.9         75.9
#>  5     5   57.3   87.0   95.2   98.9   99.5    99.7    99.8    99.9         74.6
#>  6     6   55.0   86.2   94.9   98.8   99.5    99.7    99.8    99.9         73.2
#>  7     7   52.7   85.4   94.6   98.8   99.5    99.7    99.8    99.9         71.8
#>  8     8   50.4   84.6   94.3   98.7   99.5    99.7    99.8    99.9         70.3
#>  9     9   48.0   83.7   94.0   98.6   99.4    99.6    99.8    99.9         68.8
#> 10    10   45.7   82.7   93.7   98.5   99.4    99.6    99.8    99.9         67.2
#> # ℹ 90 more rows
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiUGA2022[ppiUGA2022$score == ppiScore, ]
#> # A tibble: 1 × 13
#>   score ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100 ppp1500 ppp2170 percentile20
#>   <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>   <dbl>   <dbl>        <dbl>
#> 1    50   2.02   24.6   61.4   86.8   94.3    96.9    98.3    99.4         10.2
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiUGA2022, score == ppiScore)
#> # A tibble: 1 × 13
#>   score ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100 ppp1500 ppp2170 percentile20
#>   <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>   <dbl>   <dbl>        <dbl>
#> 1    50   2.02   24.6   61.4   86.8   94.3    96.9    98.3    99.4         10.2
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the purchasing
  # power parity at $1.00
  ppiScore <- 50
  ppiUGA2022[ppiUGA2022$score == ppiScore, "ppp100"]
#> # A tibble: 1 × 1
#>   ppp100
#>    <dbl>
#> 1   2.02
```
