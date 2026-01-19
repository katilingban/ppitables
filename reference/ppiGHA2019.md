# Poverty Probability Index (PPI) lookup table for Ghana

Poverty Probability Index (PPI) lookup table for Ghana

## Usage

``` r
ppiGHA2019
```

## Format

A data frame with 20 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

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
  # Access Ghana PPI table
  ppiGHA2019
#> # A tibble: 101 × 20
#>    score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>    <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#>  1     0  89.7    62.4  95.7  98.0   31.4   64.9   89.5   95.6   99.1    99.5
#>  2     1  88.9    60.0  95.3  97.9   28.1   62.4   88.7   95.3   99.0    99.4
#>  3     2  88.0    57.5  95.0  97.7   25.0   59.8   87.8   94.9   99.0    99.4
#>  4     3  87.1    55.0  94.6  97.5   22.2   57.1   86.9   94.6   98.9    99.4
#>  5     4  86.1    52.4  94.3  97.3   19.6   54.4   85.9   94.2   98.8    99.3
#>  6     5  85.0    49.9  93.8  97.1   17.3   51.7   84.8   93.9   98.7    99.3
#>  7     6  83.9    47.3  93.4  96.8   15.1   49.0   83.6   93.5   98.6    99.2
#>  8     7  82.8    44.8  92.9  96.6   13.2   46.3   82.4   93.0   98.5    99.2
#>  9     8  81.5    42.3  92.4  96.3   11.5   43.6   81.2   92.6   98.4    99.1
#> 10     9  80.2    39.8  91.9  96.0   10.0   41.0   79.8   92.1   98.2    99.1
#> # ℹ 91 more rows
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiGHA2019[ppiGHA2019$score == ppiScore, ]
#> # A tibble: 1 × 20
#>   score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>   <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#> 1    50  11.3   0.999  35.0  46.7 0.0181  0.797   10.5   41.1   70.4    88.1
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiGHA2019, score == ppiScore)
#> # A tibble: 1 × 20
#>   score nl100 extreme nl150 nl200 ppp100 ppp190 ppp320 ppp550 ppp800 ppp1100
#>   <dbl> <dbl>   <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
#> 1    50  11.3   0.999  35.0  46.7 0.0181  0.797   10.5   41.1   70.4    88.1
#> # ℹ 9 more variables: ppp1500 <dbl>, ppp2170 <dbl>, ppp125 <dbl>, ppp250 <dbl>,
#> #   ppp500 <dbl>, percentile20 <dbl>, percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line is used
  ppiScore <- 50
  ppiGHA2019[ppiGHA2019$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  11.3
```
