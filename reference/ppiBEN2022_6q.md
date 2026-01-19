# Poverty Probability Index (PPI) lookup table for Benin for 2022 for 6 questions score card

Poverty Probability Index (PPI) lookup table for Benin for 2022 for 6
questions score card

## Usage

``` r
ppiBEN2022_6q
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
  ppiBEN2022_6q
#> # A tibble: 101 × 14
#>    score nl100 nl150 nl200 ppp190 ppp320 ppp550 ppp215 ppp365 ppp685
#>    <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#>  1     0  87.7  96.8  99.0   57.4   91.5   98.9   59.7   92.7   99.3
#>  2     1  86.9  96.5  98.9   55.6   90.9   98.8   57.9   92.1   99.2
#>  3     2  86.0  96.3  98.8   53.7   90.2   98.7   56.0   91.6   99.2
#>  4     3  85.1  96.0  98.7   51.8   89.5   98.6   54.2   91.0   99.1
#>  5     4  84.1  95.7  98.6   49.9   88.8   98.5   52.3   90.3   99.0
#>  6     5  83.0  95.4  98.5   48.1   88.0   98.3   50.4   89.6   98.9
#>  7     6  81.9  95.1  98.4   46.2   87.2   98.2   48.5   88.9   98.9
#>  8     7  80.7  94.7  98.3   44.3   86.3   98.1   46.6   88.1   98.8
#>  9     8  79.5  94.4  98.2   42.5   85.4   97.9   44.7   87.2   98.7
#> 10     9  78.2  94.0  98.0   40.6   84.4   97.7   42.9   86.4   98.5
#> # ℹ 91 more rows
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiBEN2022_6q[ppiBEN2022_6q$score == ppiScore, ]
#> # A tibble: 1 × 14
#>   score nl100 nl150 nl200 ppp190 ppp320 ppp550 ppp215 ppp365 ppp685 percentile20
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50  13.5  44.1  66.9   3.01   19.3   63.7   3.26   21.2   70.4         12.4
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiBEN2022_6q, score == ppiScore)
#> # A tibble: 1 × 14
#>   score nl100 nl150 nl200 ppp190 ppp320 ppp550 ppp215 ppp365 ppp685 percentile20
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50  13.5  44.1  66.9   3.01   19.3   63.7   3.26   21.2   70.4         12.4
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiBEN2022_6q[ppiBEN2022_6q$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  13.5
```
