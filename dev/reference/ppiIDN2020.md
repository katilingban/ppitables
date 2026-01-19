# Poverty Probability Index (PPI) lookup table for Indonesia

Poverty Probability Index (PPI) lookup table for Indonesia

## Usage

``` r
ppiIDN2020
```

## Format

A data frame with 20 columns and 101 rows:

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

- `ppp800`:

  Below \$8.00 per day purchasing power parity (2011)

- `ppp1100`:

  Below \$11.00 per day purchasing power parity (2011)

- `ppp1500`:

  Below \$15.00 per day purchasing power parity (2011)

- `ppp2170`:

  Below \$21.70 per day purchasing power parity (2011)

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
  # Access Indonesia PPI table
  ppiIDN2020
#> # A tibble: 100 × 20
#>    score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>    <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#>  1     1  88.4    82.2  96.7  98.8   41.7   88.6   98.1   99.7  100.0   100.0
#>  2     2  87.6    80.8  96.4  98.7   38.3   87.7   97.9   99.7  100.0   100.0
#>  3     3  86.7    79.3  96.2  98.6   35.0   86.8   97.8   99.7  100.0   100.0
#>  4     4  85.8    77.8  95.9  98.5   31.8   85.8   97.6   99.7  100.0   100.0
#>  5     5  84.9    76.2  95.7  98.4   28.7   84.7   97.4   99.6  100.0   100.0
#>  6     6  83.9    74.5  95.4  98.3   25.9   83.5   97.2   99.6  100.0   100.0
#>  7     7  82.8    72.8  95.1  98.2   23.2   82.3   97.0   99.6  100.0   100.0
#>  8     8  81.7    70.9  94.8  98.1   20.8   81.0   96.8   99.6  100.0   100.0
#>  9     9  80.6    69.0  94.4  97.9   18.5   79.6   96.5   99.5  100.0   100.0
#> 10    10  79.3    67.1  94.1  97.8   16.5   78.2   96.3   99.5  100.0   100.0
#> # ℹ 90 more rows
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiIDN2020[ppiIDN2020$score == ppiScore, ]
#> # A tibble: 1 × 20
#>   score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>   <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#> 1    50  15.5    5.15  51.7  76.2 0.0635   10.1   57.6   90.0   98.0    99.5
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiIDN2020, score == ppiScore)
#> # A tibble: 1 × 20
#>   score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>   <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#> 1    50  15.5    5.15  51.7  76.2 0.0635   10.1   57.6   90.0   98.0    99.5
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiIDN2020[ppiIDN2020$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  15.5
```
