# Poverty Probability Index (PPI) lookup table for Tanzania 2022

Poverty Probability Index (PPI) lookup table for Tanzania 2022

## Usage

``` r
ppiTZA2022
```

## Format

A data frame with 21 columns and 100 rows:

- `score`:

  PPI score

- `nl_upper`:

  National upper poverty line

- `nl_lower`:

  National lower poverty line

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
  # Access Tanzania PPI table
  ppiTZA2022
#> # A tibble: 100 × 21
#>    score nl_upper nl_lower extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550
#>    <dbl>    <dbl>    <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#>  1     1     87.8     85.3    59.7  97.2  98.7   61.1   95.1   98.7   99.7
#>  2     2     86.9     84.2    57.4  97.0  98.6   58.9   94.7   98.6   99.7
#>  3     3     85.9     83.1    55.1  96.8  98.6   56.8   94.3   98.5   99.7
#>  4     4     85.0     81.8    52.7  96.5  98.4   54.6   93.8   98.4   99.7
#>  5     5     83.9     80.5    50.4  96.3  98.3   52.3   93.4   98.3   99.7
#>  6     6     82.8     79.2    48.1  96.0  98.2   50.1   92.8   98.2   99.6
#>  7     7     81.7     77.8    45.7  95.7  98.1   47.9   92.3   98.0   99.6
#>  8     8     80.4     76.3    43.4  95.3  98.0   45.7   91.7   97.9   99.6
#>  9     9     79.2     74.7    41.1  95.0  97.8   43.5   91.0   97.8   99.6
#> 10    10     77.8     73.1    38.9  94.6  97.7   41.3   90.3   97.6   99.5
#> # ℹ 90 more rows
#> # ℹ 11 more variables: ppp800 <dbl>, ppp1100 <dbl>, ppp1500 <dbl>,
#> #   ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>, ppp500 <dbl>,
#> #   percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiTZA2022[ppiTZA2022$score == ppiScore, ]
#> # A tibble: 1 × 21
#>   score nl_upper nl_lower extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800
#>   <dbl>    <dbl>    <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50     12.8     8.41    1.46  44.6  72.3   1.94   26.2   69.9   92.6   96.4
#> # ℹ 10 more variables: ppp1100 <dbl>, ppp1500 <dbl>, ppp2170 <dbl>,
#> #   ppp125 <dbl>, ppp250 <dbl>, ppp500 <dbl>, percentile20 <dbl>,
#> #   percentile40 <dbl>, percentile60 <dbl>, percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiTZA2022, score == ppiScore)
#> # A tibble: 1 × 21
#>   score nl_upper nl_lower extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800
#>   <dbl>    <dbl>    <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50     12.8     8.41    1.46  44.6  72.3   1.94   26.2   69.9   92.6   96.4
#> # ℹ 10 more variables: ppp1100 <dbl>, ppp1500 <dbl>, ppp2170 <dbl>,
#> #   ppp125 <dbl>, ppp250 <dbl>, ppp500 <dbl>, percentile20 <dbl>,
#> #   percentile40 <dbl>, percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiTZA2022[ppiTZA2022$score == ppiScore, "extreme"]
#> # A tibble: 1 × 1
#>   extreme
#>     <dbl>
#> 1    1.46
```
