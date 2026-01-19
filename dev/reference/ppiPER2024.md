# Poverty Probability Index (PPI) lookup table for Peru based on data from the 2022 Encuesta Nacional de Hogares (ENAHO)

Poverty Probability Index (PPI) lookup table for Peru based on data from
the 2022 Encuesta Nacional de Hogares (ENAHO)

## Usage

``` r
ppiPER2024
```

## Format

A data frame with 15 columns and 101 rows:

- `score`:

  PPI score

- `nlFood`:

  Food poverty line

- `nl100`:

  National poverty line (100%)

- `nl150`:

  National poverty line (150%)

- `nl200`:

  National poverty line (200%)

- `ppp215`:

  Below \$2.15 per day purchasing power parity (2017)

- `ppp365`:

  Below \$3.65 per day purchasing power parity (2017)

- `ppp685`:

  Below \$6.85 per day purchasing power parity (2017)

- `ppp190`:

  Below \$1.90 per day purchasing power parity (2011)

- `ppp320`:

  Below \$3.20 per day purchasing power parity (2011)

- `ppp550`:

  Below \$5.50 per day purchasing power parity (2011)

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
  # Access Peru PPI table
  ppiPER2024
#> # A tibble: 101 × 15
#>    score nlFood nl100 nl150 nl200 ppp215 ppp365 ppp685 ppp190 ppp320 ppp550
#>    <dbl>  <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#>  1     0   67.0  37.9  87.7  95.5   16.1   45.4   80.6  10.7    36.1   69.2
#>  2     1   66.0  35.9  87.3  95.3   15.3   43.8   79.6  10.2    34.6   67.5
#>  3     2   64.9  33.9  86.8  95.1   14.5   42.3   78.5   9.69   33.2   65.8
#>  4     3   63.9  32.0  86.3  94.9   13.8   40.7   77.3   9.21   31.8   64.0
#>  5     4   62.8  30.1  85.8  94.7   13.1   39.1   76.2   8.75   30.5   62.2
#>  6     5   61.8  28.3  85.3  94.5   12.4   37.6   75.0   8.31   29.1   60.4
#>  7     6   60.7  26.6  84.8  94.3   11.8   36.1   73.7   7.89   27.8   58.6
#>  8     7   59.6  24.9  84.2  94.0   11.2   34.6   72.4   7.49   26.6   56.7
#>  9     8   58.5  23.4  83.6  93.8   10.6   33.2   71.1   7.11   25.4   54.8
#> 10     9   57.4  21.8  83.1  93.6   10.0   31.8   69.7   6.75   24.2   52.9
#> # ℹ 91 more rows
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiPER2024[ppiPER2024$score == ppiScore, ]
#> # A tibble: 1 × 15
#>   score nlFood nl100 nl150 nl200 ppp215 ppp365 ppp685 ppp190 ppp320 ppp550
#>   <dbl>  <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50   17.4 0.785  46.6  72.8  0.936   3.20   13.5  0.714   2.32   4.56
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiPER2024, score == ppiScore)
#> # A tibble: 1 × 15
#>   score nlFood nl100 nl150 nl200 ppp215 ppp365 ppp685 ppp190 ppp320 ppp550
#>   <dbl>  <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50   17.4 0.785  46.6  72.8  0.936   3.20   13.5  0.714   2.32   4.56
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiPER2024[ppiPER2024$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1 0.785
```
