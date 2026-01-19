# Poverty Probability Index (PPI) lookup table for Mozambique

This PPI was created in April 2019 using Mozambique’s 2014/15 Inquérito
Sobre Orçamento Familiar Survey and was released in May 2019.

## Usage

``` r
ppiMOZ2019
```

## Format

A data frame with 15 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100)

- `nl150`:

  National poverty line (150)

- `nl200`:

  National poverty line (200)

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
  # Access Mozambique PPI table
  ppiMOZ2019
#> # A tibble: 101 × 15
#>    score nl100 nl150 nl200 ppp190 ppp320 ppp550 ppp800 ppp1100 ppp1500 ppp2170
#>    <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>   <dbl>   <dbl>
#>  1     0  91    96.9  98.6   95.4   98.6   99.8   99.9     100     100     100
#>  2     1  90.3  96.6  98.5   95     98.5   99.8   99.9     100     100     100
#>  3     2  89.5  96.3  98.4   94.6   98.4   99.7   99.9     100     100     100
#>  4     3  88.7  96    98.2   94.1   98.2   99.7   99.9     100     100     100
#>  5     4  87.8  95.6  98     93.6   98.1   99.7   99.9     100     100     100
#>  6     5  86.9  95.2  97.8   93.1   97.9   99.6   99.9     100     100     100
#>  7     6  85.9  94.8  97.7   92.5   97.7   99.6   99.9     100     100     100
#>  8     7  84.8  94.3  97.4   91.8   97.5   99.6   99.9     100     100     100
#>  9     8  83.6  93.8  97.2   91.2   97.3   99.5   99.9     100     100     100
#> 10     9  82.4  93.3  96.9   90.4   97     99.5   99.9     100     100     100
#> # ℹ 91 more rows
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiMOZ2019[ppiMOZ2019$score == ppiScore, ]
#> # A tibble: 1 × 15
#>   score nl100 nl150 nl200 ppp190 ppp320 ppp550 ppp800 ppp1100 ppp1500 ppp2170
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>   <dbl>   <dbl>
#> 1    50  12.2  26.2  43.2   20.3     46   81.1     92    97.6    98.2    99.3
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiMOZ2019, score == ppiScore)
#> # A tibble: 1 × 15
#>   score nl100 nl150 nl200 ppp190 ppp320 ppp550 ppp800 ppp1100 ppp1500 ppp2170
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>   <dbl>   <dbl>
#> 1    50  12.2  26.2  43.2   20.3     46   81.1     92    97.6    98.2    99.3
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line is used
  ppiScore <- 50
  ppiMOZ2019[ppiMOZ2019$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  12.2
```
