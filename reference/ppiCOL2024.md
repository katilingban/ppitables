# Poverty Probability Index (PPI) lookup table for Colombia based on data from the 2022 Gran Encuesta Integrada de Hogares (GEIH).

Poverty Probability Index (PPI) lookup table for Colombia based on data
from the 2022 Gran Encuesta Integrada de Hogares (GEIH).

## Usage

``` r
ppiCOL2024
```

## Format

A data frame with 16 columns and 101 rows:

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
  # Access Colombia PPI table
  ppiCOL2024
#> # A tibble: 101 × 15
#>    score nl100 nl_extreme nl150 nl200 ppp215 ppp365 ppp685 ppp190 ppp320 ppp550
#>    <dbl> <dbl>      <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#>  1     0  98.6       93.4  99.7  99.9   88.9   94.3   99.5   86.6   93.9   99.0
#>  2     1  98.5       92.8  99.7  99.9   88.0   93.8   99.4   85.6   93.4   98.9
#>  3     2  98.4       92.2  99.7  99.9   87.1   93.3   99.3   84.6   92.8   98.8
#>  4     3  98.2       91.6  99.6  99.9   86.1   92.7   99.3   83.5   92.2   98.6
#>  5     4  98.1       90.9  99.6  99.8   85.0   92.0   99.2   82.3   91.5   98.5
#>  6     5  97.9       90.2  99.6  99.8   83.9   91.3   99.1   81.1   90.8   98.3
#>  7     6  97.7       89.4  99.5  99.8   82.7   90.6   99.0   79.8   90.0   98.2
#>  8     7  97.5       88.5  99.5  99.8   81.5   89.7   98.9   78.5   89.1   98.0
#>  9     8  97.3       87.6  99.4  99.8   80.2   88.9   98.8   77.0   88.2   97.8
#> 10     9  97.0       86.6  99.3  99.7   78.8   87.9   98.7   75.6   87.2   97.6
#> # ℹ 91 more rows
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiCOL2024[ppiCOL2024$score == ppiScore, ]
#> # A tibble: 1 × 15
#>   score nl100 nl_extreme nl150 nl200 ppp215 ppp365 ppp685 ppp190 ppp320 ppp550
#>   <dbl> <dbl>      <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50  45.8       15.9  69.6  82.3   10.2   14.5   52.0   9.62   14.2   44.5
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiCOL2024, score == ppiScore)
#> # A tibble: 1 × 15
#>   score nl100 nl_extreme nl150 nl200 ppp215 ppp365 ppp685 ppp190 ppp320 ppp550
#>   <dbl> <dbl>      <dbl> <dbl> <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
#> 1    50  45.8       15.9  69.6  82.3   10.2   14.5   52.0   9.62   14.2   44.5
#> # ℹ 4 more variables: percentile20 <dbl>, percentile40 <dbl>,
#> #   percentile60 <dbl>, percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiCOL2024[ppiCOL2024$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  45.8
```
