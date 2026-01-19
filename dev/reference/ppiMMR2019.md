# Poverty Probability Index (PPI) lookup table for Myanmar

Poverty Probability Index (PPI) lookup table for Myanmar

## Usage

``` r
ppiMMR2019
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
  # Access Myanmar PPI table
  ppiMMR2019
#> # A tibble: 101 × 20
#>    score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>    <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#>  1     0  95.2    84.1  98.6  99.6  11.6    80.9   93.7   99.2   99.6    99.9
#>  2     1  94.8    82.8  98.5  99.6  10.8    79.4   93.2   99.2   99.6    99.9
#>  3     2  94.4    81.5  98.4  99.6  10.00   77.8   92.7   99.1   99.6    99.9
#>  4     3  93.9    80.1  98.3  99.5   9.27   76.0   92.1   99.0   99.5    99.9
#>  5     4  93.4    78.5  98.1  99.5   8.59   74.2   91.5   98.9   99.5    99.8
#>  6     5  92.9    77.0  98.0  99.5   7.95   72.3   90.9   98.8   99.4    99.8
#>  7     6  92.3    75.3  97.8  99.4   7.36   70.3   90.2   98.7   99.4    99.8
#>  8     7  91.7    73.5  97.7  99.4   6.81   68.2   89.5   98.6   99.4    99.8
#>  9     8  91.1    71.7  97.5  99.3   6.30   66.1   88.7   98.5   99.3    99.8
#> 10     9  90.4    69.8  97.3  99.2   5.82   63.8   87.9   98.4   99.3    99.8
#> # ℹ 91 more rows
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiMMR2019[ppiMMR2019$score == ppiScore, ]
#> # A tibble: 1 × 20
#>   score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>   <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#> 1    50  24.5    5.01  58.9  79.9  0.199   3.13   21.3   70.2   85.4    94.5
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiMMR2019, score == ppiScore)
#> # A tibble: 1 × 20
#>   score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>   <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#> 1    50  24.5    5.01  58.9  79.9  0.199   3.13   21.3   70.2   85.4    94.5
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiMMR2019[ppiMMR2019$score == ppiScore, "extreme"]
#> # A tibble: 1 × 1
#>   extreme
#>     <dbl>
#> 1    5.01
```
