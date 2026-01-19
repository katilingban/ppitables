# Poverty Probability Index (PPI) lookup table for Rwanda

Poverty Probability Index (PPI) lookup table for Rwanda

## Usage

``` r
ppiRWA2019
```

## Format

A data frame with 20 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100)

- `extreme`:

  National poverty line (150)

- `nl150`:

  National poverty line (200)

- `nl200`:

  Below \$1.90 per day purchasing power parity (2011)

- `ppp100`:

  Below \$3.20 per day purchasing power parity (2011)

- `ppp190`:

  Below \$5.50 per day purchasing power parity (2011)

- `ppp320`:

  Below \$8.00 per day purchasing power parity (2011)

- `ppp550`:

  Below \$11.00 per day purchasing power parity (2011)

- `ppp800`:

  Below \$15.00 per day purchasing power parity (2011)

- `ppp1100`:

  Below \$21.70 per day purchasing power parity (2011)

- `ppp1500`:

  Below 20th percentile poverty line

- `ppp2170`:

  Below 40th percentile poverty line

- `ppp125`:

  Below 50th percentile poverty line

- `ppp250`:

  Below 60th percentile poverty line

- `ppp500`:

  Below 80th percentile poverty line

- `percentile20`:

  NA

- `percentile40`:

  NA

- `percentile60`:

  NA

- `percentile80`:

  NA

## Source

<https://www.povertyindex.org>

## Examples

``` r
  # Access Rwanda PPI table
  ppiRWA2019
#> # A tibble: 101 × 20
#>    score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>    <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#>  1     1  95.3    83.9  98.8  99.7   86.2   98.1   99.8  100.0  100.0   100.0
#>  2     2  94.8    82.4  98.6  99.7   84.9   97.9   99.8  100.0  100.0   100.0
#>  3     3  94.3    80.9  98.5  99.6   83.6   97.7   99.7  100.0  100.0   100.0
#>  4     4  93.8    79.3  98.3  99.6   82.1   97.4   99.7  100.0  100.0   100.0
#>  5     5  93.2    77.5  98.2  99.6   80.6   97.2   99.7  100.0  100.0   100.0
#>  6     6  92.5    75.7  98.0  99.5   79.0   96.9   99.6  100.0  100.0   100.0
#>  7     7  91.8    73.7  97.8  99.5   77.2   96.6   99.6  100.0  100.0   100.0
#>  8     8  91.0    71.7  97.5  99.4   75.4   96.2   99.6  100.0  100.0   100.0
#>  9     9  90.1    69.6  97.3  99.3   73.5   95.8   99.5   99.9  100.0   100.0
#> 10    10  89.2    67.3  97.0  99.2   71.4   95.4   99.4   99.9  100.0   100.0
#> # ℹ 91 more rows
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiRWA2019[ppiRWA2019$score == ppiScore, ]
#> # A tibble: 1 × 20
#>   score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>   <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#> 1    50  12.9    3.27  37.1  65.5   4.17   28.1   69.9   95.7   99.1    99.6
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiRWA2019, score == ppiScore)
#> # A tibble: 1 × 20
#>   score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>   <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#> 1    50  12.9    3.27  37.1  65.5   4.17   28.1   69.9   95.7   99.1    99.6
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line is used
  ppiScore <- 50
  ppiRWA2019[ppiRWA2019$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  12.9
```
