# Poverty Probability Index (PPI) lookup table for Kenya based on data from the 2021 Kenya Integrated Household Budget Survey (KIHBS)

Poverty Probability Index (PPI) lookup table for Kenya based on data
from the 2021 Kenya Integrated Household Budget Survey (KIHBS)

## Usage

``` r
ppiKEN2024
```

## Format

A data frame with 13 columns and 101 rows:

- `score`:

  PPI score

- `nlFood`:

  Food poverty line

- `nlAbsolute`:

  Absolute poverty line

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
  # Access Kenya PPI table
  ppiKEN2024
#> # A tibble: 101 × 13
#>    score nlFood nlAbsolute ppp190 ppp320 ppp550 ppp215 ppp365 ppp685
#>    <dbl>  <dbl>      <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#>  1     0   81.9       88.4   94.7   98.8   99.8   93.1   98.5   99.8
#>  2     1   81.1       87.8   94.3   98.7   99.8   92.5   98.4   99.8
#>  3     2   80.2       87.1   93.8   98.6   99.8   92.0   98.3   99.8
#>  4     3   79.4       86.4   93.4   98.5   99.8   91.4   98.2   99.8
#>  5     4   78.5       85.7   92.9   98.4   99.7   90.7   98.0   99.8
#>  6     5   77.6       85.0   92.4   98.3   99.7   90.0   97.9   99.7
#>  7     6   76.6       84.2   91.8   98.1   99.7   89.3   97.8   99.7
#>  8     7   75.6       83.4   91.3   98.0   99.7   88.5   97.6   99.7
#>  9     8   74.6       82.5   90.6   97.9   99.7   87.7   97.4   99.7
#> 10     9   73.6       81.6   90.0   97.7   99.7   86.8   97.2   99.7
#> # ℹ 91 more rows
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiKEN2024[ppiKEN2024$score == ppiScore, ]
#> # A tibble: 1 × 13
#>   score nlFood nlAbsolute ppp190 ppp320 ppp550 ppp215 ppp365 ppp685 percentile20
#>   <dbl>  <dbl>      <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50   23.8       27.5   28.7   71.8   94.9   20.6   66.4   95.3         10.5
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiKEN2024, score == ppiScore)
#> # A tibble: 1 × 13
#>   score nlFood nlAbsolute ppp190 ppp320 ppp550 ppp215 ppp365 ppp685 percentile20
#>   <dbl>  <dbl>      <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50   23.8       27.5   28.7   71.8   94.9   20.6   66.4   95.3         10.5
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiKEN2024[ppiKEN2024$score == ppiScore, "nlFood"]
#> # A tibble: 1 × 1
#>   nlFood
#>    <dbl>
#> 1   23.8
```
