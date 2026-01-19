# Poverty Probability Index (PPI) lookup table for Mexico based on data from Encuesta Nacional de Ingresos y Gastos de los Hogares (ENIGH) from 2022 produced by the Instituto Nacional de Estadística y Geografía (INEGI)

Poverty Probability Index (PPI) lookup table for Mexico based on data
from Encuesta Nacional de Ingresos y Gastos de los Hogares (ENIGH) from
2022 produced by the Instituto Nacional de Estadística y Geografía
(INEGI)

## Usage

``` r
ppiMEX2024
```

## Format

A data frame with 21 columns and 100 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

- `nl150`:

  National poverty line (150%)

- `nl200`:

  National poverty line (200%)

- `ppp550`:

  Below \$5.50 per day purchasing power parity (2011)

- `ppp800`:

  Below \$8.00 per day purchasing power parity (2011)

- `ppp1100`:

  Below \$11.00 per day purchasing power parity (2011)

- `ppp365`:

  Below \$3.65 per day purchasing power parity (2017)

- `ppp685`:

  Below \$6.85 per day purchasing power parity (2017)

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
  # Access Mexico PPI table
  ppiMEX2024
#> # A tibble: 101 × 13
#>    score nl100 nl150 nl200 ppp550 ppp800 ppp1100 ppp365 ppp685 percentile20
#>    <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>   <dbl>  <dbl>  <dbl>        <dbl>
#>  1     0  95.7  99.0  99.7   87.0   95.8    98.6   64.1   90.5         91.3
#>  2     1  95.4  98.9  99.6   85.9   95.4    98.4   62.0   89.7         90.6
#>  3     2  95.0  98.8  99.6   84.8   95.0    98.3   59.8   88.9         89.9
#>  4     3  94.6  98.7  99.6   83.7   94.6    98.1   57.6   88.1         89.1
#>  5     4  94.2  98.6  99.5   82.5   94.1    98.0   55.4   87.1         88.2
#>  6     5  93.7  98.4  99.5   81.2   93.6    97.8   53.1   86.1         87.3
#>  7     6  93.2  98.3  99.4   79.8   93.1    97.6   50.8   85.1         86.3
#>  8     7  92.6  98.2  99.4   78.3   92.5    97.4   48.5   84.0         85.3
#>  9     8  92.1  98.0  99.3   76.8   91.9    97.2   46.2   82.8         84.2
#> 10     9  91.4  97.8  99.3   75.2   91.2    96.9   44.0   81.5         83.0
#> # ℹ 91 more rows
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiMEX2024[ppiMEX2024$score == ppiScore, ]
#> # A tibble: 1 × 13
#>   score nl100 nl150 nl200 ppp550 ppp800 ppp1100 ppp365 ppp685 percentile20
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>   <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50  26.3  58.0  78.6   7.79   22.6    46.7   1.82   11.8         12.9
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiMEX2024, score == ppiScore)
#> # A tibble: 1 × 13
#>   score nl100 nl150 nl200 ppp550 ppp800 ppp1100 ppp365 ppp685 percentile20
#>   <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>   <dbl>  <dbl>  <dbl>        <dbl>
#> 1    50  26.3  58.0  78.6   7.79   22.6    46.7   1.82   11.8         12.9
#> # ℹ 3 more variables: percentile40 <dbl>, percentile60 <dbl>,
#> #   percentile80 <dbl>

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the purchasing
  # power parity at $1.00
  ppiScore <- 50
  ppiMEX2024[ppiMEX2024$score == ppiScore, "nl100"]
#> # A tibble: 1 × 1
#>   nl100
#>   <dbl>
#> 1  26.3
```
