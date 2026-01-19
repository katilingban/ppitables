# Poverty Probability Index (PPI) lookup table for Burkina Faso for 2023

Poverty Probability Index (PPI) lookup table for Burkina Faso for 2023

## Usage

``` r
ppiBFA2023
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

- `ppp215`:

  Below \$1.25 per day purchasing power parity (2017)

- `ppp365`:

  Below \$2.50 per day purchasing power parity (2017)

- `ppp685`:

  Below \$5.00 per day purchasing power parity (2017)

- `ppp190`:

  Below \$1.00 per day purchasing power parity (2011)

- `ppp320`:

  Below \$1.90 per day purchasing power parity (2011)

- `ppp550`:

  Below \$3.20 per day purchasing power parity (2011)

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
  # Access Burkina Faso PPI table
  ppiBFA2023
#> # A tibble: 101 × 14
#>    score nl100 nl150 nl200 ppp215 ppp365 ppp685 ppp190 ppp320 ppp550
#>    <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#>  1     0  91.0  98.4  99.7   86.8   98.4   99.9   89.7   98.8   99.9
#>  2     1  90.1  98.3  99.7   85.4   98.3   99.9   88.6   98.7   99.9
#>  3     2  89.2  98.1  99.7   83.9   98.0   99.9   87.4   98.5   99.9
#>  4     3  88.1  97.9  99.6   82.3   97.8   99.9   86.1   98.3   99.9
#>  5     4  87.0  97.6  99.6   80.5   97.5   99.9   84.6   98.1   99.9
#>  6     5  85.8  97.4  99.5   78.6   97.3   99.9   83.1   97.9   99.9
#>  7     6  84.6  97.1  99.5   76.6   96.9   99.9   81.4   97.6   99.8
#>  8     7  83.2  96.8  99.4   74.5   96.6   99.9   79.6   97.3   99.8
#>  9     8  81.7  96.4  99.4   72.2   96.2   99.8   77.7   97.0   99.8
#> 10     9  80.1  96.1  99.3   69.8   95.7   99.8   75.6   96.6   99.8
#> # ℹ 91 more rows
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiBFA2023[ppiBFA2023$score == ppiScore, ]
#> # A tibble: 1 × 14
#>   score nl100 nl150 nl200 ppp215 ppp365 ppp685 ppp190 ppp320 ppp550 percentile20
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50  5.85  24.9  64.6   1.96   16.2   80.2   2.75   18.6   80.1         1.26
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiBFA2023, score == ppiScore)
#> # A tibble: 1 × 14
#>   score nl100 nl150 nl200 ppp215 ppp365 ppp685 ppp190 ppp320 ppp550 percentile20
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50  5.85  24.9  64.6   1.96   16.2   80.2   2.75   18.6   80.1         1.26
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line definition
  ppiScore <- 50
  ppiBFA2023[ppiBFA2023$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  5.85
```
