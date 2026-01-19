# Poverty Probability Index (PPI) lookup table for Mozambique

The latest version of the PPI for Mozambique was created in June 2024 by
Innovations for Poverty Action (IPA) based on data from the 2022
Demographic and Health Survey (DHS).

## Usage

``` r
ppiMOZ2024
```

## Format

A data frame with 6 columns and 101 rows:

- `score`:

  PPI score

- `percentile20`:

  Below 20th percentile poverty line

- `percentile40`:

  Below 40th percentile poverty line

- `percentile50`:

  Below 50th percentile poverty line

- `percentile60`:

  Below 60th percentile poverty line

- `percentile80`:

  Below 80th percentile poverty line

## Source

<https://www.povertyindex.org>

## Examples

``` r
  # Access Mozambique PPI table
  ppiMOZ2024
#> # A tibble: 101 × 6
#>    score percentile20 percentile40 percentile50 percentile60 percentile80
#>    <dbl>        <dbl>        <dbl>        <dbl>        <dbl>        <dbl>
#>  1     0         88.7         98.0         99.5         99.9        100.0
#>  2     1         86.2         97.3         99.3         99.9        100.0
#>  3     2         83.3         96.4         99.2         99.9        100.0
#>  4     3         80.0         95.3         99.0         99.9        100.0
#>  5     4         76.2         93.7         98.7         99.9        100.0
#>  6     5         72.0         91.8         98.3         99.8        100.0
#>  7     6         67.3         89.2         97.9         99.8        100.0
#>  8     7         62.2         86.0         97.4         99.7        100.0
#>  9     8         56.8         82.1         96.7         99.7        100.0
#> 10     9         51.3         77.3         95.9         99.6        100.0
#> # ℹ 91 more rows

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiMOZ2024[ppiMOZ2024$score == ppiScore, ]
#> # A tibble: 1 × 6
#>   score percentile20 percentile40 percentile50 percentile60 percentile80
#>   <dbl>        <dbl>        <dbl>        <dbl>        <dbl>        <dbl>
#> 1    50       0.0114      0.00178        0.164         10.3         99.0

  # Use subset() function to get the row of poverty probabilities
  # corresponding to specific PPI score
  ppiScore <- 50
  subset(ppiMOZ2024, score == ppiScore)
#> # A tibble: 1 × 6
#>   score percentile20 percentile40 percentile50 percentile60 percentile80
#>   <dbl>        <dbl>        <dbl>        <dbl>        <dbl>        <dbl>
#> 1    50       0.0114      0.00178        0.164         10.3         99.0

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the national
  # poverty line is used
  ppiScore <- 50
  ppiMOZ2024[ppiMOZ2024$score == ppiScore, "percentile80"]
#> # A tibble: 1 × 1
#>   percentile80
#>          <dbl>
#> 1         99.0
```
