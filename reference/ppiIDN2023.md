# Poverty Probability Index (PPI) lookup table for Indonesia for 2023

Poverty Probability Index (PPI) lookup table for Indonesia for 2023

## Usage

``` r
ppiIDN2023
```

## Format

A data frame with 10 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

- `ppp365`:

  Below \$3.65 per day purchasing power parity (2017)

- `ppp685`:

  Below \$6.85 per day purchasing power parity (2017)

- `ppp320`:

  Below \$3.20 per day purchasing power parity (2011)

- `ppp550`:

  Below \$5.50 per day purchasing power parity (2011)

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
  # Access Indonesia PPI table
  ppiIDN2023
#> # A tibble: 101 × 10
#>    score nl100 ppp365 ppp685 ppp320 ppp550 percentile20 percentile40
#>    <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>        <dbl>
#>  1     0  84.3   84.7   97.0   80.8   94.6         84.7         93.1
#>  2     1  82.8   83.6   96.9   79.6   94.3         83.7         92.7
#>  3     2  81.2   82.6   96.7   78.3   93.9         82.7         92.2
#>  4     3  79.5   81.5   96.4   76.9   93.6         81.5         91.7
#>  5     4  77.6   80.3   96.2   75.4   93.2         80.4         91.2
#>  6     5  75.7   79.0   96.0   73.9   92.7         79.1         90.7
#>  7     6  73.6   77.8   95.7   72.4   92.3         77.9         90.1
#>  8     7  71.4   76.4   95.5   70.8   91.8         76.5         89.5
#>  9     8  69.1   75.0   95.2   69.1   91.4         75.1         88.9
#> 10     9  66.7   73.6   94.9   67.4   90.8         73.7         88.2
#> # ℹ 91 more rows
#> # ℹ 2 more variables: percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiIDN2023[ppiIDN2023$score == ppiScore, ]
#> # A tibble: 1 × 10
#>   score nl100 ppp365 ppp685 ppp320 ppp550 percentile20 percentile40 percentile60
#>   <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>        <dbl>        <dbl>
#> 1    50  2.17   10.9   57.4   7.40   42.4         11.0         34.1         60.3
#> # ℹ 1 more variable: percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiIDN2023, score == ppiScore)
#> # A tibble: 1 × 10
#>   score nl100 ppp365 ppp685 ppp320 ppp550 percentile20 percentile40 percentile60
#>   <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>        <dbl>        <dbl>        <dbl>
#> 1    50  2.17   10.9   57.4   7.40   42.4         11.0         34.1         60.3
#> # ℹ 1 more variable: percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiIDN2023[ppiIDN2023$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  2.17
```
