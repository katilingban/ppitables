# Poverty Probability Index (PPI) lookup table for Honduras for 2023

Poverty Probability Index (PPI) lookup table for Honduras for 2023

## Usage

``` r
ppiHND2023
```

## Format

A data frame with 18 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

- `nl_extreme`:

  National poverty line (extreme)

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
  # Access Honduras PPI table
  ppiHND2023
#> # A tibble: 101 × 18
#>    score nl100 nl_extreme ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100 ppp1500
#>    <dbl> <dbl>      <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>   <dbl>
#>  1     0  88.7       68.4   32.2   56.5   82.8   94.8   96.7    99.0    99.6
#>  2     1  88.3       67.4   31.1   55.2   81.9   94.5   96.5    99.0    99.6
#>  3     2  87.9       66.4   30.1   53.8   81.0   94.1   96.3    98.9    99.6
#>  4     3  87.4       65.4   29.1   52.5   80.1   93.8   96.0    98.8    99.5
#>  5     4  86.9       64.4   28.1   51.2   79.2   93.4   95.8    98.7    99.5
#>  6     5  86.4       63.3   27.2   49.9   78.2   93.0   95.5    98.6    99.5
#>  7     6  85.9       62.3   26.2   48.6   77.2   92.5   95.3    98.5    99.4
#>  8     7  85.4       61.2   25.3   47.2   76.1   92.1   95.0    98.4    99.4
#>  9     8  84.8       60.1   24.4   45.9   75.0   91.6   94.7    98.3    99.3
#> 10     9  84.3       59.0   23.6   44.6   73.9   91.1   94.3    98.2    99.3
#> # ℹ 91 more rows
#> # ℹ 8 more variables: ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>, ppp500 <dbl>,
#> #   percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiHND2023[ppiHND2023$score == ppiScore, ]
#> # A tibble: 1 × 18
#>   score nl100 nl_extreme ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100 ppp1500
#>   <dbl> <dbl>      <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>   <dbl>
#> 1    50  48.1       18.4   4.13   8.41   20.1   42.6   55.9    76.3    87.4
#> # ℹ 8 more variables: ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>, ppp500 <dbl>,
#> #   percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiHND2023, score == ppiScore)
#> # A tibble: 1 × 18
#>   score nl100 nl_extreme ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100 ppp1500
#>   <dbl> <dbl>      <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>   <dbl>
#> 1    50  48.1       18.4   4.13   8.41   20.1   42.6   55.9    76.3    87.4
#> # ℹ 8 more variables: ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>, ppp500 <dbl>,
#> #   percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiHND2023[ppiHND2023$score == ppiScore, "nl_extreme"]
#> # A tibble: 1 × 1
#>   nl_extreme
#>        <dbl>
#> 1       18.4
```
