# Poverty Probability Index (PPI) lookup table for Dominican Republic based on data from the 2022 Encuesta Continua de Fuerza de Trabajo - ENCFT conducted by the National Statistics Office (ONE)

Poverty Probability Index (PPI) lookup table for Dominican Republic
based on data from the 2022 Encuesta Continua de Fuerza de Trabajo -
ENCFT conducted by the National Statistics Office (ONE)

## Usage

``` r
ppiDOM2024
```

## Format

A data frame with 9 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

- `nl150`:

  National poverty line (150%)

- `nl200`:

  National poverty line (200%)

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
  # Access Dominican Republic PPI table
  ppiDOM2024
#> # A tibble: 101 × 9
#>    score nl100 nl150 nl200 ppp685 percentile20 percentile40 percentile60
#>    <dbl> <dbl> <dbl> <dbl>  <dbl>        <dbl>        <dbl>        <dbl>
#>  1     0  88.1  95.3  98.3   78.0         88.3         91.9         98.5
#>  2     1  87.3  95.0  98.1   76.6         87.5         91.4         98.4
#>  3     2  86.4  94.7  98.0   75.0         86.5         90.9         98.2
#>  4     3  85.5  94.3  97.9   73.4         85.5         90.4         98.1
#>  5     4  84.5  93.9  97.7   71.8         84.5         89.9         98.0
#>  6     5  83.5  93.5  97.6   70.0         83.4         89.3         97.8
#>  7     6  82.4  93.1  97.4   68.3         82.2         88.7         97.6
#>  8     7  81.2  92.6  97.2   66.4         80.9         88.1         97.5
#>  9     8  80.0  92.2  97.0   64.5         79.6         87.4         97.3
#> 10     9  78.7  91.6  96.8   62.6         78.2         86.7         97.1
#> # ℹ 91 more rows
#> # ℹ 1 more variable: percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiDOM2024[ppiDOM2024$score == ppiScore, ]
#> # A tibble: 1 × 9
#>   score nl100 nl150 nl200 ppp685 percentile20 percentile40 percentile60
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>        <dbl>        <dbl>        <dbl>
#> 1    50  13.4  39.1  64.5   5.18         10.7         34.0         59.3
#> # ℹ 1 more variable: percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiDOM2024, score == ppiScore)
#> # A tibble: 1 × 9
#>   score nl100 nl150 nl200 ppp685 percentile20 percentile40 percentile60
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>        <dbl>        <dbl>        <dbl>
#> 1    50  13.4  39.1  64.5   5.18         10.7         34.0         59.3
#> # ℹ 1 more variable: percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiDOM2024[ppiDOM2024$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  13.4
```
