# Poverty Probability Index (PPI) lookup table for Cambodia for 2023

Poverty Probability Index (PPI) lookup table for Cambodia for 2023

## Usage

``` r
ppiKHM2023
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

- `ppp550`:

  Below \$3.20 per day purchasing power parity (2011)

- `ppp800`:

  Below \$3.20 per day purchasing power parity (2011)

- `ppp1100`:

  Below \$11.00 per day purchasing power parity (2011)

- `ppp1500`:

  Below \$15.00 per day purchasing power parity (2011)

- `ppp2170`:

  Below \$21.70 per day purchasing power parity (2011)

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
  # Access Cambodia PPI table
  ppiKHM2023
#> # A tibble: 101 × 14
#>    score nl100 nl150 nl200 ppp550 ppp800 ppp1100 ppp1500 ppp2170 ppp685
#>    <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>   <dbl>   <dbl>   <dbl>  <dbl>
#>  1     0  91.0  95.2  98.1   90.6   93.1    97.6    99.2    99.9   91.3
#>  2     1  90.2  94.8  97.9   89.7   92.6    97.4    99.1    99.9   90.4
#>  3     2  89.2  94.4  97.7   88.7   92.0    97.2    99.0    99.9   89.4
#>  4     3  88.1  93.9  97.6   87.7   91.4    96.9    98.9    99.8   88.4
#>  5     4  87.0  93.3  97.3   86.6   90.7    96.7    98.9    99.8   87.3
#>  6     5  85.8  92.8  97.1   85.4   90.0    96.4    98.8    99.8   86.0
#>  7     6  84.4  92.2  96.9   84.1   89.2    96.1    98.7    99.8   84.7
#>  8     7  83.0  91.5  96.6   82.7   88.4    95.8    98.6    99.8   83.3
#>  9     8  81.5  90.8  96.4   81.2   87.5    95.5    98.4    99.8   81.8
#> 10     9  79.8  90.0  96.1   79.7   86.5    95.1    98.3    99.7   80.2
#> # ℹ 91 more rows
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiKHM2023[ppiKHM2023$score == ppiScore, ]
#> # A tibble: 1 × 14
#>   score nl100 nl150 nl200 ppp550 ppp800 ppp1100 ppp1500 ppp2170 ppp685
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>   <dbl>   <dbl>   <dbl>  <dbl>
#> 1    50  5.13  19.6  45.3   6.28   17.4    42.8    68.9    89.9   5.06
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiKHM2023, score == ppiScore)
#> # A tibble: 1 × 14
#>   score nl100 nl150 nl200 ppp550 ppp800 ppp1100 ppp1500 ppp2170 ppp685
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>   <dbl>   <dbl>   <dbl>  <dbl>
#> 1    50  5.13  19.6  45.3   6.28   17.4    42.8    68.9    89.9   5.06
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line definition
  ppiScore <- 50
  ppiKHM2023[ppiKHM2023$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  5.13
```
