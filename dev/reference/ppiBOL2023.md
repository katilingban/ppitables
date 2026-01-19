# Poverty Probability Index (PPI) lookup table for Bolivia for 2023

Poverty Probability Index (PPI) lookup table for Bolivia for 2023

## Usage

``` r
ppiBOL2023
```

## Format

A data frame with 15 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

- `nl_extreme`:

  National poverty line (extreme)

- `nl150`:

  National poverty line (150%)

- `nl200`:

  National poverty line (200%)

- `ppp190`:

  Below \$1.25 per day purchasing power parity (2011)

- `ppp320`:

  Below \$1.25 per day purchasing power parity (2011)

- `ppp550`:

  Below \$2.00 per day purchasing power parity (2011)

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
  # Access Bolivia PPI table
  ppiBOL2023
#> # A tibble: 101 × 15
#>    score nl100 nl_extreme nl150 nl200 ppp190 ppp320 ppp550 ppp215 ppp365 ppp685
#>    <dbl> <dbl>      <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#>  1     0  96.6       91.1  98.9  99.5   90.9   93.5   97.1   88.1   92.6   96.0
#>  2     1  96.4       90.4  98.8  99.4   90.0   92.9   96.9   87.0   91.8   95.7
#>  3     2  96.1       89.7  98.7  99.4   89.0   92.2   96.7   85.8   91.1   95.3
#>  4     3  95.8       88.9  98.6  99.3   87.9   91.5   96.4   84.5   90.2   95.0
#>  5     4  95.5       88.0  98.5  99.3   86.8   90.8   96.1   83.2   89.3   94.5
#>  6     5  95.2       87.1  98.3  99.2   85.6   90.0   95.8   81.7   88.3   94.1
#>  7     6  94.9       86.1  98.2  99.1   84.2   89.1   95.4   80.2   87.2   93.6
#>  8     7  94.5       85.1  98.1  99.1   82.8   88.2   95.0   78.6   86.1   93.1
#>  9     8  94.1       84.0  97.9  99.0   81.3   87.2   94.6   76.8   84.8   92.5
#> 10     9  93.6       82.9  97.8  98.9   79.7   86.1   94.2   75.0   83.5   91.9
#> # ℹ 91 more rows
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiBOL2023[ppiBOL2023$score == ppiScore, ]
#> # A tibble: 1 × 15
#>   score nl100 nl_extreme nl150 nl200 ppp190 ppp320 ppp550 ppp215 ppp365 ppp685
#>   <dbl> <dbl>      <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50  40.8       13.7  64.7  77.9   5.38   12.0   35.6   4.70   7.76   27.0
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiBOL2023, score == ppiScore)
#> # A tibble: 1 × 15
#>   score nl100 nl_extreme nl150 nl200 ppp190 ppp320 ppp550 ppp215 ppp365 ppp685
#>   <dbl> <dbl>      <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50  40.8       13.7  64.7  77.9   5.38   12.0   35.6   4.70   7.76   27.0
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the food
  # poverty line definition
  ppiScore <- 50
  ppiBOL2023[ppiBOL2023$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  40.8
```
