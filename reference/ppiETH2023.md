# Poverty Probability Index (PPI) lookup table for Ethiopia for 2023

Poverty Probability Index (PPI) lookup table for Ethiopia for 2023

## Usage

``` r
ppiETH2023
```

## Format

A data frame with 20 columns and 101 rows:

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
  # Access Ethiopia PPI table
  ppiETH2023
#> # A tibble: 101 × 20
#>    score nl100 nl_extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>    <dbl> <dbl>      <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#>  1     0  79.4       45.5  88.1  95.0   53.6   81.5   95.2   98.7   99.5    99.6
#>  2     1  78.2       43.3  87.4  94.7   51.7   80.4   94.9   98.7   99.5    99.6
#>  3     2  76.8       41.1  86.7  94.4   49.7   79.3   94.6   98.6   99.5    99.6
#>  4     3  75.4       39.0  85.9  94.0   47.7   78.1   94.3   98.5   99.4    99.6
#>  5     4  73.9       36.9  85.1  93.7   45.7   76.9   93.9   98.4   99.4    99.6
#>  6     5  72.4       34.8  84.3  93.3   43.7   75.7   93.5   98.4   99.4    99.5
#>  7     6  70.8       32.8  83.4  92.9   41.8   74.4   93.2   98.3   99.3    99.5
#>  8     7  69.2       30.9  82.5  92.5   39.9   73.0   92.7   98.2   99.3    99.5
#>  9     8  67.5       29.0  81.6  92.0   38.0   71.6   92.3   98.1   99.3    99.5
#> 10     9  65.8       27.2  80.6  91.6   36.1   70.2   91.8   98.0   99.2    99.4
#> # ℹ 91 more rows
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiETH2023[ppiETH2023$score == ppiScore, ]
#> # A tibble: 1 × 20
#>   score nl100 nl_extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>   <dbl> <dbl>      <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#> 1    50  7.35      0.960  22.9  46.3   2.12   12.1   46.1   83.3   93.0    96.5
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiETH2023, score == ppiScore)
#> # A tibble: 1 × 20
#>   score nl100 nl_extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>   <dbl> <dbl>      <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#> 1    50  7.35      0.960  22.9  46.3   2.12   12.1   46.1   83.3   93.0    96.5
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line definition
  ppiScore <- 50
  ppiETH2023[ppiETH2023$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  7.35
```
