# Poverty Probability Index (PPI) lookup table for Malawi using legacy poverty definitions

Poverty Probability Index (PPI) lookup table for Malawi using legacy
poverty definitions

## Usage

``` r
ppiMWI2015
```

## Format

A data frame with 3 columns and 101 rows:

- `score`:

  PPI score

- `ppp125`:

  Below \$1.25 per day purchasing power parity (2005)

- `ppp250`:

  Below \$2.50 per day purchasing power parity (2005)

## Source

<https://www.povertyindex.org>

## Examples

``` r
  # Access Malawi PPI table
  ppiMWI2015
#>     score ppp125 ppp250
#> 0       0  100.0  100.0
#> 1       1  100.0  100.0
#> 2       2  100.0  100.0
#> 3       3  100.0  100.0
#> 4       4  100.0  100.0
#> 5       5   99.7  100.0
#> 6       6   99.7  100.0
#> 7       7   99.7  100.0
#> 8       8   99.7  100.0
#> 9       9   99.7  100.0
#> 10     10   98.6  100.0
#> 11     11   98.6  100.0
#> 12     12   98.6  100.0
#> 13     13   98.6  100.0
#> 14     14   98.6  100.0
#> 15     15   98.5  100.0
#> 16     16   98.5  100.0
#> 17     17   98.5  100.0
#> 18     18   98.5  100.0
#> 19     19   98.5  100.0
#> 20     20   95.8   99.9
#> 21     21   95.8   99.9
#> 22     22   95.8   99.9
#> 23     23   95.8   99.9
#> 24     24   95.8   99.9
#> 25     25   93.9   99.6
#> 26     26   93.9   99.6
#> 27     27   93.9   99.6
#> 28     28   93.9   99.6
#> 29     29   93.9   99.6
#> 30     30   93.4   99.6
#> 31     31   93.4   99.6
#> 32     32   93.4   99.6
#> 33     33   93.4   99.6
#> 34     34   93.4   99.6
#> 35     35   89.1   99.6
#> 36     36   89.1   99.6
#> 37     37   89.1   99.6
#> 38     38   89.1   99.6
#> 39     39   89.1   99.6
#> 40     40   81.0   99.2
#> 41     41   81.0   99.2
#> 42     42   81.0   99.2
#> 43     43   81.0   99.2
#> 44     44   81.0   99.2
#> 45     45   73.9   97.5
#> 46     46   73.9   97.5
#> 47     47   73.9   97.5
#> 48     48   73.9   97.5
#> 49     49   73.9   97.5
#> 50     50   54.6   93.0
#> 51     51   54.6   93.0
#> 52     52   54.6   93.0
#> 53     53   54.6   93.0
#> 54     54   54.6   93.0
#> 55     55   47.5   88.5
#> 56     56   47.5   88.5
#> 57     57   47.5   88.5
#> 58     58   47.5   88.5
#> 59     59   47.5   88.5
#> 60     60   42.7   84.1
#> 61     61   42.7   84.1
#> 62     62   42.7   84.1
#> 63     63   42.7   84.1
#> 64     64   42.7   84.1
#> 65     65   32.2   78.2
#> 66     66   32.2   78.2
#> 67     67   32.2   78.2
#> 68     68   32.2   78.2
#> 69     69   32.2   78.2
#> 70     70   20.9   63.7
#> 71     71   20.9   63.7
#> 72     72   20.9   63.7
#> 73     73   20.9   63.7
#> 74     74   20.9   63.7
#> 75     75   16.5   54.1
#> 76     76   16.5   54.1
#> 77     77   16.5   54.1
#> 78     78   16.5   54.1
#> 79     79   16.5   54.1
#> 80     80   10.8   47.4
#> 81     81   10.8   47.4
#> 82     82   10.8   47.4
#> 83     83   10.8   47.4
#> 84     84   10.8   47.4
#> 85     85    3.7   23.9
#> 86     86    3.7   23.9
#> 87     87    3.7   23.9
#> 88     88    3.7   23.9
#> 89     89    3.7   23.9
#> 90     90    2.1   16.2
#> 91     91    2.1   16.2
#> 92     92    2.1   16.2
#> 93     93    2.1   16.2
#> 94     94    2.1   16.2
#> 95     95    0.0   12.9
#> 96     96    0.0   12.9
#> 97     97    0.0   12.9
#> 98     98    0.0   12.9
#> 99     99    0.0   12.9
#> 100   100    0.0   12.9

  # Given a specific PPI score (from 0 - 100), get the row of poverty
  # probabilities from PPI table it corresponds to
  ppiScore <- 50
  ppiMWI2015[ppiMWI2015$score == ppiScore, ]
#>    score ppp125 ppp250
#> 50    50   54.6     93

  # Use subset() function to get the row of poverty probabilities corresponding
  # to specific PPI score
  ppiScore <- 50
  subset(ppiMWI2015, score == ppiScore)
#>    score ppp125 ppp250
#> 50    50   54.6     93

  # Given a specific PPI score (from 0 - 100), get a poverty probability
  # based on a specific poverty definition. In this example, below $1.25
  # purchasing power parity (2005)
  ppiScore <- 50
  ppiMWI2015[ppiMWI2015$score == ppiScore, "ppp125"]
#> [1] 54.6
```
