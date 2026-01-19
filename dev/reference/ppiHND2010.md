# Poverty Probability Index (PPI) lookup table for Honduras

Poverty Probability Index (PPI) lookup table for Honduras

## Usage

``` r
ppiHND2010
```

## Format

A data frame with 7 columns and 101 rows:

- `score`:

  PPI score

- `nl100`:

  National poverty line (100%)

- `nlFood`:

  Food poverty line

- `extreme`:

  USAID extreme poverty

- `ppp125`:

  Below \$1.25 per day purchasing power parity (2005)

- `ppp250`:

  Below \$2.50 per day purchasing power parity (2005)

- `ppp375`:

  Below \$3.75 per day purchasing power parity (2005)

## Source

<https://www.povertyindex.org>

## Examples

``` r
  # Access Honduras PPI table
  ppiHND2010
#>      score nl100 nlFood extreme ppp125 ppp250 ppp375
#> 1       NA  66.7   66.7    66.7   66.7   66.7   66.7
#> 2       NA  66.7   66.7    66.7   66.7   66.7   66.7
#> 3       NA  66.7   66.7    66.7   66.7   66.7   66.7
#> 4       NA  66.7   66.7    66.7   66.7   66.7   66.7
#> 5       NA  66.7   66.7    66.7   66.7   66.7   66.7
#> 6       NA 100.0  100.0    81.0   42.9   95.2  100.0
#> 7       NA 100.0  100.0    81.0   42.9   95.2  100.0
#> 8       NA 100.0  100.0    81.0   42.9   95.2  100.0
#> 9       NA 100.0  100.0    81.0   42.9   95.2  100.0
#> 10      NA 100.0  100.0    81.0   42.9   95.2  100.0
#> 11      NA  97.3   89.4    70.7   55.2   86.7   94.7
#> 12      NA  97.3   89.4    70.7   55.2   86.7   94.7
#> 13      NA  97.3   89.4    70.7   55.2   86.7   94.7
#> 14      NA  97.3   89.4    70.7   55.2   86.7   94.7
#> 15      NA  97.3   89.4    70.7   55.2   86.7   94.7
#> 16      NA  97.0   93.4    77.4   61.1   88.8   94.9
#> 17      NA  97.0   93.4    77.4   61.1   88.8   94.9
#> 18      NA  97.0   93.4    77.4   61.1   88.8   94.9
#> 19      NA  97.0   93.4    77.4   61.1   88.8   94.9
#> 20      NA  97.0   93.4    77.4   61.1   88.8   94.9
#> 21      NA  94.3   89.0    63.7   45.0   78.9   91.2
#> 22      NA  94.3   89.0    63.7   45.0   78.9   91.2
#> 23      NA  94.3   89.0    63.7   45.0   78.9   91.2
#> 24      NA  94.3   89.0    63.7   45.0   78.9   91.2
#> 25      NA  94.3   89.0    63.7   45.0   78.9   91.2
#> 26      NA  93.1   83.7    62.1   39.2   77.2   89.7
#> 27      NA  93.1   83.7    62.1   39.2   77.2   89.7
#> 28      NA  93.1   83.7    62.1   39.2   77.2   89.7
#> 29      NA  93.1   83.7    62.1   39.2   77.2   89.7
#> 30      NA  93.1   83.7    62.1   39.2   77.2   89.7
#> 31      NA  89.8   76.4    55.8   32.9   70.1   86.0
#> 32      NA  89.8   76.4    55.8   32.9   70.1   86.0
#> 33      NA  89.8   76.4    55.8   32.9   70.1   86.0
#> 34      NA  89.8   76.4    55.8   32.9   70.1   86.0
#> 35      NA  89.8   76.4    55.8   32.9   70.1   86.0
#> 36      NA  79.9   61.8    38.7   20.0   51.5   72.1
#> 37      NA  79.9   61.8    38.7   20.0   51.5   72.1
#> 38      NA  79.9   61.8    38.7   20.0   51.5   72.1
#> 39      NA  79.9   61.8    38.7   20.0   51.5   72.1
#> 40      NA  79.9   61.8    38.7   20.0   51.5   72.1
#> 41      NA  76.3   53.6    38.3   14.6   48.2   68.5
#> 42      NA  76.3   53.6    38.3   14.6   48.2   68.5
#> 43      NA  76.3   53.6    38.3   14.6   48.2   68.5
#> 44      NA  76.3   53.6    38.3   14.6   48.2   68.5
#> 45      NA  76.3   53.6    38.3   14.6   48.2   68.5
#> 46      NA  68.7   39.2    28.1   10.1   34.4   58.8
#> 47      NA  68.7   39.2    28.1   10.1   34.4   58.8
#> 48      NA  68.7   39.2    28.1   10.1   34.4   58.8
#> 49      NA  68.7   39.2    28.1   10.1   34.4   58.8
#> 50      NA  68.7   39.2    28.1   10.1   34.4   58.8
#> 51      NA  57.0   30.4    22.4    8.1   27.6   46.5
#> 52      NA  57.0   30.4    22.4    8.1   27.6   46.5
#> 53      NA  57.0   30.4    22.4    8.1   27.6   46.5
#> 54      NA  57.0   30.4    22.4    8.1   27.6   46.5
#> 55      NA  57.0   30.4    22.4    8.1   27.6   46.5
#> 56      NA  50.6   20.2    16.6    4.2   19.9   40.9
#> 57      NA  50.6   20.2    16.6    4.2   19.9   40.9
#> 58      NA  50.6   20.2    16.6    4.2   19.9   40.9
#> 59      NA  50.6   20.2    16.6    4.2   19.9   40.9
#> 60      NA  50.6   20.2    16.6    4.2   19.9   40.9
#> 61      NA  38.2   11.5    11.8    2.6   13.5   30.5
#> 62      NA  38.2   11.5    11.8    2.6   13.5   30.5
#> 63      NA  38.2   11.5    11.8    2.6   13.5   30.5
#> 64      NA  38.2   11.5    11.8    2.6   13.5   30.5
#> 65      NA  38.2   11.5    11.8    2.6   13.5   30.5
#> 66      NA  28.0    6.5     6.8    2.7    7.4   20.1
#> 67      NA  28.0    6.5     6.8    2.7    7.4   20.1
#> 68      NA  28.0    6.5     6.8    2.7    7.4   20.1
#> 69      NA  28.0    6.5     6.8    2.7    7.4   20.1
#> 70      NA  28.0    6.5     6.8    2.7    7.4   20.1
#> 71      NA  21.0    5.3     5.2    2.9    5.7   15.5
#> 72      NA  21.0    5.3     5.2    2.9    5.7   15.5
#> 73      NA  21.0    5.3     5.2    2.9    5.7   15.5
#> 74      NA  21.0    5.3     5.2    2.9    5.7   15.5
#> 75      NA  21.0    5.3     5.2    2.9    5.7   15.5
#> 76      NA  21.1    5.3     5.8    3.3    6.6   16.2
#> 77      NA  21.1    5.3     5.8    3.3    6.6   16.2
#> 78      NA  21.1    5.3     5.8    3.3    6.6   16.2
#> 79      NA  21.1    5.3     5.8    3.3    6.6   16.2
#> 80      NA  21.1    5.3     5.8    3.3    6.6   16.2
#> 81      NA  11.4    4.9     4.9    3.9    5.7    8.5
#> 82      NA  11.4    4.9     4.9    3.9    5.7    8.5
#> 83      NA  11.4    4.9     4.9    3.9    5.7    8.5
#> 84      NA  11.4    4.9     4.9    3.9    5.7    8.5
#> 85      NA  11.4    4.9     4.9    3.9    5.7    8.5
#> 86      NA   9.9    3.8     3.8    1.5    3.8    6.2
#> 87      NA   9.9    3.8     3.8    1.5    3.8    6.2
#> 88      NA   9.9    3.8     3.8    1.5    3.8    6.2
#> 89      NA   9.9    3.8     3.8    1.5    3.8    6.2
#> 90      NA   9.9    3.8     3.8    1.5    3.8    6.2
#> 91      NA  12.2   10.4    10.4    7.0   10.4   12.2
#> 92      NA  12.2   10.4    10.4    7.0   10.4   12.2
#> 93      NA  12.2   10.4    10.4    7.0   10.4   12.2
#> 94      NA  12.2   10.4    10.4    7.0   10.4   12.2
#> 95      NA  12.2   10.4    10.4    7.0   10.4   12.2
#> 96      NA   2.7    0.0     0.0    0.0    0.0    2.7
#> 97      NA   2.7    0.0     0.0    0.0    0.0    2.7
#> 98      NA   2.7    0.0     0.0    0.0    0.0    2.7
#> 99      NA   2.7    0.0     0.0    0.0    0.0    2.7
#> 100     NA   2.7    0.0     0.0    0.0    0.0    2.7
#> 1001    NA   2.7    0.0     0.0    0.0    0.0    2.7

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiHND2010[ppiHND2010$score == ppiScore, ]
#>        score nl100 nlFood extreme ppp125 ppp250 ppp375
#> NA        NA    NA     NA      NA     NA     NA     NA
#> NA.1      NA    NA     NA      NA     NA     NA     NA
#> NA.2      NA    NA     NA      NA     NA     NA     NA
#> NA.3      NA    NA     NA      NA     NA     NA     NA
#> NA.4      NA    NA     NA      NA     NA     NA     NA
#> NA.5      NA    NA     NA      NA     NA     NA     NA
#> NA.6      NA    NA     NA      NA     NA     NA     NA
#> NA.7      NA    NA     NA      NA     NA     NA     NA
#> NA.8      NA    NA     NA      NA     NA     NA     NA
#> NA.9      NA    NA     NA      NA     NA     NA     NA
#> NA.10     NA    NA     NA      NA     NA     NA     NA
#> NA.11     NA    NA     NA      NA     NA     NA     NA
#> NA.12     NA    NA     NA      NA     NA     NA     NA
#> NA.13     NA    NA     NA      NA     NA     NA     NA
#> NA.14     NA    NA     NA      NA     NA     NA     NA
#> NA.15     NA    NA     NA      NA     NA     NA     NA
#> NA.16     NA    NA     NA      NA     NA     NA     NA
#> NA.17     NA    NA     NA      NA     NA     NA     NA
#> NA.18     NA    NA     NA      NA     NA     NA     NA
#> NA.19     NA    NA     NA      NA     NA     NA     NA
#> NA.20     NA    NA     NA      NA     NA     NA     NA
#> NA.21     NA    NA     NA      NA     NA     NA     NA
#> NA.22     NA    NA     NA      NA     NA     NA     NA
#> NA.23     NA    NA     NA      NA     NA     NA     NA
#> NA.24     NA    NA     NA      NA     NA     NA     NA
#> NA.25     NA    NA     NA      NA     NA     NA     NA
#> NA.26     NA    NA     NA      NA     NA     NA     NA
#> NA.27     NA    NA     NA      NA     NA     NA     NA
#> NA.28     NA    NA     NA      NA     NA     NA     NA
#> NA.29     NA    NA     NA      NA     NA     NA     NA
#> NA.30     NA    NA     NA      NA     NA     NA     NA
#> NA.31     NA    NA     NA      NA     NA     NA     NA
#> NA.32     NA    NA     NA      NA     NA     NA     NA
#> NA.33     NA    NA     NA      NA     NA     NA     NA
#> NA.34     NA    NA     NA      NA     NA     NA     NA
#> NA.35     NA    NA     NA      NA     NA     NA     NA
#> NA.36     NA    NA     NA      NA     NA     NA     NA
#> NA.37     NA    NA     NA      NA     NA     NA     NA
#> NA.38     NA    NA     NA      NA     NA     NA     NA
#> NA.39     NA    NA     NA      NA     NA     NA     NA
#> NA.40     NA    NA     NA      NA     NA     NA     NA
#> NA.41     NA    NA     NA      NA     NA     NA     NA
#> NA.42     NA    NA     NA      NA     NA     NA     NA
#> NA.43     NA    NA     NA      NA     NA     NA     NA
#> NA.44     NA    NA     NA      NA     NA     NA     NA
#> NA.45     NA    NA     NA      NA     NA     NA     NA
#> NA.46     NA    NA     NA      NA     NA     NA     NA
#> NA.47     NA    NA     NA      NA     NA     NA     NA
#> NA.48     NA    NA     NA      NA     NA     NA     NA
#> NA.49     NA    NA     NA      NA     NA     NA     NA
#> NA.50     NA    NA     NA      NA     NA     NA     NA
#> NA.51     NA    NA     NA      NA     NA     NA     NA
#> NA.52     NA    NA     NA      NA     NA     NA     NA
#> NA.53     NA    NA     NA      NA     NA     NA     NA
#> NA.54     NA    NA     NA      NA     NA     NA     NA
#> NA.55     NA    NA     NA      NA     NA     NA     NA
#> NA.56     NA    NA     NA      NA     NA     NA     NA
#> NA.57     NA    NA     NA      NA     NA     NA     NA
#> NA.58     NA    NA     NA      NA     NA     NA     NA
#> NA.59     NA    NA     NA      NA     NA     NA     NA
#> NA.60     NA    NA     NA      NA     NA     NA     NA
#> NA.61     NA    NA     NA      NA     NA     NA     NA
#> NA.62     NA    NA     NA      NA     NA     NA     NA
#> NA.63     NA    NA     NA      NA     NA     NA     NA
#> NA.64     NA    NA     NA      NA     NA     NA     NA
#> NA.65     NA    NA     NA      NA     NA     NA     NA
#> NA.66     NA    NA     NA      NA     NA     NA     NA
#> NA.67     NA    NA     NA      NA     NA     NA     NA
#> NA.68     NA    NA     NA      NA     NA     NA     NA
#> NA.69     NA    NA     NA      NA     NA     NA     NA
#> NA.70     NA    NA     NA      NA     NA     NA     NA
#> NA.71     NA    NA     NA      NA     NA     NA     NA
#> NA.72     NA    NA     NA      NA     NA     NA     NA
#> NA.73     NA    NA     NA      NA     NA     NA     NA
#> NA.74     NA    NA     NA      NA     NA     NA     NA
#> NA.75     NA    NA     NA      NA     NA     NA     NA
#> NA.76     NA    NA     NA      NA     NA     NA     NA
#> NA.77     NA    NA     NA      NA     NA     NA     NA
#> NA.78     NA    NA     NA      NA     NA     NA     NA
#> NA.79     NA    NA     NA      NA     NA     NA     NA
#> NA.80     NA    NA     NA      NA     NA     NA     NA
#> NA.81     NA    NA     NA      NA     NA     NA     NA
#> NA.82     NA    NA     NA      NA     NA     NA     NA
#> NA.83     NA    NA     NA      NA     NA     NA     NA
#> NA.84     NA    NA     NA      NA     NA     NA     NA
#> NA.85     NA    NA     NA      NA     NA     NA     NA
#> NA.86     NA    NA     NA      NA     NA     NA     NA
#> NA.87     NA    NA     NA      NA     NA     NA     NA
#> NA.88     NA    NA     NA      NA     NA     NA     NA
#> NA.89     NA    NA     NA      NA     NA     NA     NA
#> NA.90     NA    NA     NA      NA     NA     NA     NA
#> NA.91     NA    NA     NA      NA     NA     NA     NA
#> NA.92     NA    NA     NA      NA     NA     NA     NA
#> NA.93     NA    NA     NA      NA     NA     NA     NA
#> NA.94     NA    NA     NA      NA     NA     NA     NA
#> NA.95     NA    NA     NA      NA     NA     NA     NA
#> NA.96     NA    NA     NA      NA     NA     NA     NA
#> NA.97     NA    NA     NA      NA     NA     NA     NA
#> NA.98     NA    NA     NA      NA     NA     NA     NA
#> NA.99     NA    NA     NA      NA     NA     NA     NA
#> NA.100    NA    NA     NA      NA     NA     NA     NA

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiHND2010, score == ppiScore)
#> [1] score   nl100   nlFood  extreme ppp125  ppp250  ppp375 
#> <0 rows> (or 0-length row.names)

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, the USAID
  # extreme poverty definition
  ppiScore <- 50
  ppiHND2010[ppiHND2010$score == ppiScore, "extreme"]
#>   [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
#>  [26] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
#>  [51] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
#>  [76] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
#> [101] NA
```
