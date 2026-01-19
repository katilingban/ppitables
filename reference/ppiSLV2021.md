# Poverty Probability Index (PPI) lookup table for El Salvador for 2021

Poverty Probability Index (PPI) lookup table for El Salvador for 2021

## Usage

``` r
ppiSLV2021
```

## Format

A data frame with 21 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

- `nl_extreme`:

  National poverty line (extreme)

- `ppp215`:

  Below \$2.15 per day purchasing power parity (2017)

- `ppp365`:

  Below \$3.65 per day purchasing power parity (2017)

- `ppp685`:

  Below \$6.85 per day purchasing power parity (2017)

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

  Below 60th percentile poverty line

- `percentile80`:

  Below 80th percentile poverty line

## Source

<https://www.povertyindex.org>

## Examples

``` r
  # Access El Salvador PPI table
  ppiSLV2021
#> # A tibble: 101 × 21
#>    score nl100 nl_extreme ppp215 ppp365 ppp685 ppp100 ppp190 ppp320 ppp550
#>    <dbl> <dbl>      <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#>  1     0  71.6       31.0   38.1   65.2   90.2  10.5    35.3   62.9   87.3
#>  2     1  70.5       29.8   36.0   63.3   89.6   9.47   33.4   61.0   86.6
#>  3     2  69.3       28.6   34.1   61.3   89.0   8.50   31.5   59.1   85.7
#>  4     3  68.2       27.4   32.2   59.4   88.3   7.63   29.7   57.1   84.9
#>  5     4  67.0       26.3   30.3   57.4   87.6   6.83   27.9   55.1   84.0
#>  6     5  65.8       25.1   28.5   55.3   86.8   6.12   26.3   53.1   83.0
#>  7     6  64.6       24.0   26.8   53.3   86.0   5.47   24.6   51.1   82.0
#>  8     7  63.3       23.0   25.2   51.2   85.2   4.89   23.1   49.1   81.0
#>  9     8  62.1       22.0   23.6   49.1   84.3   4.37   21.6   47.1   79.9
#> 10     9  60.8       21.0   22.0   47.1   83.4   3.90   20.2   45.1   78.8
#> # ℹ 91 more rows
#> # ℹ 11 more variables: ppp800 <dbl>, ppp1100 <dbl>, ppp1500 <dbl>,
#> #   ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>, ppp500 <dbl>,
#> #   percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiSLV2021[ppiSLV2021$score == ppiScore, ]
#> # A tibble: 1 × 21
#>   score nl100 nl_extreme ppp215 ppp365 ppp685 ppp100 ppp190 ppp320 ppp550 ppp800
#>   <dbl> <dbl>      <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50  14.5       2.34  0.820   2.90   24.2 0.0320  0.752   2.95   18.1   42.4
#> # ℹ 10 more variables: ppp1100 <dbl>, ppp1500 <dbl>, ppp2170 <dbl>,
#> #   ppp125 <dbl>, ppp250 <dbl>, ppp500 <dbl>, percentile20 <dbl>,
#> #   percentile40 <dbl>, percentile60 <dbl>, percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiSLV2021, score == ppiScore)
#> # A tibble: 1 × 21
#>   score nl100 nl_extreme ppp215 ppp365 ppp685 ppp100 ppp190 ppp320 ppp550 ppp800
#>   <dbl> <dbl>      <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50  14.5       2.34  0.820   2.90   24.2 0.0320  0.752   2.95   18.1   42.4
#> # ℹ 10 more variables: ppp1100 <dbl>, ppp1500 <dbl>, ppp2170 <dbl>,
#> #   ppp125 <dbl>, ppp250 <dbl>, ppp500 <dbl>, percentile20 <dbl>,
#> #   percentile40 <dbl>, percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiSLV2021[ppiSLV2021$score == ppiScore, "nl_extreme"]
#> # A tibble: 1 × 1
#>   nl_extreme
#>        <dbl>
#> 1       2.34
```
