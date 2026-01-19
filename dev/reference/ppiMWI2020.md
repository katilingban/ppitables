# Poverty Probability Index (PPI) lookup table for Malawi

Poverty Probability Index (PPI) lookup table for Malawi

## Usage

``` r
ppiMWI2020
```

## Format

A data frame with 16 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

- `extreme`:

  Extreme poverty line

- `nl150`:

  National poverty line (150%)

- `nl200`:

  National poverty line (200%)

- `ppp100`:

  Below \$1.00 per day purchasing power parity (2011)

- `ppp190`:

  Below \$1.90 per day purchasing power parity (2011)

- `ppp320`:

  Below \$3.20 per day purchasing power parity (2011)

- `ppp550`:

  Below \$5.50 per day purchasing power parity (2011)

- `ppp125`:

  Below \$1.25 per day purchasing power parity (2005)

- `ppp250`:

  Below \$2.50 per day purchasing power parity (2005)

- `ppp500`:

  Below \$5.00 per day purchasing power parity (2005)

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
  ppiMWI2020
#> # A tibble: 100 × 16
#>    score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp125 ppp250
#>    <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#>  1     1  96.3    80.3  99.0  99.6   89.8   98.7   99.9  100.0   95.4   99.5
#>  2     2  95.9    78.6  98.9  99.6   88.8   98.6   99.9  100.0   94.9   99.5
#>  3     3  95.5    76.8  98.8  99.6   87.8   98.5   99.9  100.0   94.4   99.4
#>  4     4  95.1    74.8  98.7  99.6   86.6   98.4   99.9  100.0   93.9   99.4
#>  5     5  94.6    72.8  98.6  99.5   85.4   98.2   99.8  100.0   93.3   99.3
#>  6     6  94.1    70.7  98.5  99.5   84.1   98.1   99.8  100.0   92.7   99.3
#>  7     7  93.6    68.4  98.3  99.4   82.8   97.9   99.8  100.0   92.0   99.2
#>  8     8  93.0    66.1  98.2  99.4   81.3   97.7   99.8  100.0   91.3   99.2
#>  9     9  92.3    63.7  98.0  99.3   79.7   97.6   99.8  100.0   90.5   99.1
#> 10    10  91.6    61.2  97.9  99.3   78.0   97.3   99.8  100.0   89.6   99.0
#> # ℹ 90 more rows
#> # ℹ 5 more variables: ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiMWI2020[ppiMWI2020$score == ppiScore, ]
#> # A tibble: 1 × 16
#>   score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp125 ppp250
#>   <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50  19.4    2.27  62.3  83.3   6.00   56.1   92.4   99.3   15.2   79.7
#> # ℹ 5 more variables: ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiMWI2020, score == ppiScore)
#> # A tibble: 1 × 16
#>   score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp125 ppp250
#>   <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50  19.4    2.27  62.3  83.3   6.00   56.1   92.4   99.3   15.2   79.7
#> # ℹ 5 more variables: ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiMWI2020[ppiMWI2020$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  19.4
```
