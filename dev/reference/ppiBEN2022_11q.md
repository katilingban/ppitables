# Poverty Probability Index (PPI) lookup table for Benin for 2022 for 11 questions score card

Poverty Probability Index (PPI) lookup table for Benin for 2022 for 11
questions score card

## Usage

``` r
ppiBEN2022_11q
```

## Format

A data frame with 14 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

- `nl150`:

  National poverty line (150%)

- `nl200`:

  National poverty line (200%)

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
  # Access Benin PPI table
  ppiBEN2022_11q
#> # A tibble: 101 × 14
#>    score nl100 nl150 nl200 ppp190 ppp320 ppp550 ppp215 ppp365 ppp685
#>    <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#>  1     0  92.3  97.7  99.3   70.9   94.7   99.2   71.7   95.4   99.6
#>  2     1  91.6  97.6  99.3   69.0   94.2   99.1   69.9   95.0   99.6
#>  3     2  90.9  97.4  99.2   67.0   93.7   99.0   68.0   94.6   99.6
#>  4     3  90.1  97.2  99.1   65.0   93.2   98.9   66.0   94.1   99.5
#>  5     4  89.3  96.9  99.0   62.9   92.6   98.8   63.9   93.6   99.5
#>  6     5  88.4  96.7  99.0   60.8   92.0   98.8   61.8   93.1   99.4
#>  7     6  87.4  96.4  98.9   58.6   91.3   98.6   59.7   92.5   99.4
#>  8     7  86.4  96.2  98.8   56.3   90.6   98.5   57.5   91.9   99.3
#>  9     8  85.3  95.9  98.7   54.1   89.9   98.4   55.3   91.2   99.2
#> 10     9  84.1  95.5  98.6   51.8   89.0   98.3   53.1   90.5   99.2
#> # ℹ 91 more rows
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiBEN2022_11q[ppiBEN2022_11q$score == ppiScore, ]
#> # A tibble: 1 × 14
#>   score nl100 nl150 nl200 ppp190 ppp320 ppp550 ppp215 ppp365 ppp685 percentile20
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50  11.1  46.6  69.3   2.52   19.0   66.4   2.77   21.8   73.5         11.2
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiBEN2022_11q, score == ppiScore)
#> # A tibble: 1 × 14
#>   score nl100 nl150 nl200 ppp190 ppp320 ppp550 ppp215 ppp365 ppp685 percentile20
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50  11.1  46.6  69.3   2.52   19.0   66.4   2.77   21.8   73.5         11.2
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiBEN2022_11q[ppiBEN2022_11q$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  11.1
```
