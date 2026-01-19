# ppitables: Lookup Tables to Generate Poverty Likelihoods and Rates using the Poverty Probability Index (PPI)

Lookup tables for estimating the likelihood of poverty using the
`Poverty Probability Index` (previously called
`Progress out of Poverty Index`) or PPI from country-specific indicators
collected from cross-sectional surveys. These lookup tables are
extracted from documentation of the PPI found at
<https://www.povertyindex.org>.

## Installation

You can install [ppitables](https://github.com/katilingban/ppitables)
from [CRAN](https://cran.r-project.org) with:

``` r
install.packages("ppitables")
```

You can install the development version of
[ppitables](https://github.com/katilingban/ppitables) from
[GitHub](https://github.com/panukatan/bagyo) using `pak` with:

``` r
## Install pak as needed ----
## install.packages("pak")
pak::pak("katilingban/ppitables")
```

You can also install
[ppitables](https://github.com/katilingban/ppitables) from the
[Katilingban R Universe](https://katilingban.r-universe.dev):

``` r
install.packages(
  "ppitables",
  repos = c(
    'https://katilingban.r-universe.dev', 'https://cloud.r-project.org'
  )
)
```

## Usage

The [ppitables](https://github.com/katilingban/ppitables) package
contains PPI lookup tables for the 61 countries[¹](#fn1) where PPI can
currently be calculated. To be able to use the lookup tables in
[ppitables](https://github.com/katilingban/ppitables) appropriately, you
need to be aware of the naming syntax used for the tables for each
country. The name for each table will always have three fixed or
constant components as follows:

``` r
ppiXXXYYYY
```

The name of any of the PPI tables contains:

1.  `ppi` in lower case letters;
2.  `XXX` which is the the three letter `ISO code` of the country of
    interest (all capitals); and,
3.  `YYYY` which is the specific year at which the country PPI table was
    released.

These three components are joined together without any spaces or gaps.

Some country lookup tables may have additional components to their name
which are added after the year separated with an underscore. These
usually signify that a lookup table released on a particular year has a
subset table in which the poverty likelihoods for a given PPI score are
reported based on a different poverty definition or cut-off. This
additional component to the table name is usually a character value or
alphanumeric and is usually country-specific. To know more about what
this additional component to some PPI tables refer to, read the index
table below of the PPI tables available in this package.

Following are the available PPI country tables from the
[ppitables](https://github.com/katilingban/ppitables) package. This is
updated as at 12 March 2025 using information from the PPI
[website](https://www.povertyindex.org).

### List of PPI country tables

[TABLE]

This list of available PPI country tables can be retrieved in R using
the
[`find_table()`](https://katilingban.io/ppitables/dev/reference/find_table.md)
function. View the complete list using the following command in R:

``` r
find_table()
#> # A tibble: 116 × 7
#>    region            country survey_year release_year description type  filename
#>    <chr>             <chr>         <int>        <int> <chr>       <chr> <chr>   
#>  1 Asia              Afghan…        2007         2012 PPI for Af… sps   ppiAFG2…
#>  2 Africa            Angola         2008         2015 PPI for An… sps   ppiAGO2…
#>  3 Asia              Bangla…        2010         2013 PPI for Ba… sps   ppiBEN2…
#>  4 Africa            Benin          2010         2012 PPI for Be… sps   ppiBGD2…
#>  5 Africa            Benin          2018         2022 PPI for Be… ipa   ppiBEN2…
#>  6 Africa            Benin          2018         2022 PPI for Be… ipa   ppiBEN2…
#>  7 Latin American a… Bolivia        2013         2015 PPI for Bo… sps   ppiBOL2…
#>  8 Latin American a… Bolivia        2020         2023 PPI for Bo… ipa   ppiBOL2…
#>  9 Latin American a… Brazil         2008         2010 PPI for Br… sps   ppiBRA2…
#> 10 Africa            Burkin…        2003         2011 PPI for Bu… sps   ppiBFA2…
#> # ℹ 106 more rows
```

View the list of PPI country tables for Africa using the following
command in R:

``` r
find_table(region = "Africa")
#> # A tibble: 50 × 7
#>    region country       survey_year release_year description      type  filename
#>    <chr>  <chr>               <int>        <int> <chr>            <chr> <chr>   
#>  1 Africa Angola               2008         2015 PPI for Angola … sps   ppiAGO2…
#>  2 Africa Benin                2010         2012 PPI for Benin b… sps   ppiBGD2…
#>  3 Africa Benin                2018         2022 PPI for Benin b… ipa   ppiBEN2…
#>  4 Africa Benin                2018         2022 PPI for Benin b… ipa   ppiBEN2…
#>  5 Africa Burkina Faso         2003         2011 PPI for Burkina… sps   ppiBFA2…
#>  6 Africa Burkina Faso         2014         2017 PPI for Burkina… sps   ppiBFA2…
#>  7 Africa Burkina Faso         2014         2017 PPI for Burkina… ipa   ppiBFA2…
#>  8 Africa Burkina Faso         2018         2023 PPI for Burkina… ipa   ppiBFA2…
#>  9 Africa Cameroon             2007         2013 PPI for Cameroo… sps   ppiCMR2…
#> 10 Africa Cote d'Ivoire        2008         2013 PPI for Ivory C… sps   ppiCIV2…
#> # ℹ 40 more rows
```

View the list of PPI country tables in Zambia using the the following
command in R:

``` r
find_table(country = "Zambia")
#> # A tibble: 4 × 7
#>   region country survey_year release_year description             type  filename
#>   <chr>  <chr>         <int>        <int> <chr>                   <chr> <chr>   
#> 1 Africa Zambia         2010         2013 PPI for Zambia based o… sps   ppiZMB2…
#> 2 Africa Zambia         2010         2013 PPI for Zambia based o… sps   ppiZMB2…
#> 3 Africa Zambia         2015         2017 PPI for Zambia based o… sps   ppiZMB2…
#> 4 Africa Zambia         2015         2017 PPI for Zambia based o… ipa   ppiZMB2…
```

To extract the actual PPI tables, the
[`get_table()`](https://katilingban.io/ppitables/dev/reference/get_table.md)
function can be used. The
[`get_table()`](https://katilingban.io/ppitables/dev/reference/get_table.md)
function wraps around the
[`find_table()`](https://katilingban.io/ppitables/dev/reference/find_table.md)
function to make a search for a specific PPI table and then extracts the
table/s and puts them together into a tidy data frame.

For example, to get the actual PPI tables for all countries with PPI
tables, the following command can be used in R:

``` r
get_table()
#> # A tibble: 124,467 × 7
#>    country     release_year filename   type  score poverty_definition   ppi
#>    <chr>       <chr>        <chr>      <chr> <dbl> <chr>              <dbl>
#>  1 Afghanistan 2012         ppiAFG2012 sps       0 nl                   100
#>  2 Afghanistan 2012         ppiAFG2012 sps       0 nu150                100
#>  3 Afghanistan 2012         ppiAFG2012 sps       0 nu200                100
#>  4 Afghanistan 2012         ppiAFG2012 sps       0 extreme              100
#>  5 Afghanistan 2012         ppiAFG2012 sps       0 ppp125               100
#>  6 Afghanistan 2012         ppiAFG2012 sps       0 ppp250               100
#>  7 Afghanistan 2012         ppiAFG2012 sps       1 nl                   100
#>  8 Afghanistan 2012         ppiAFG2012 sps       1 nu150                100
#>  9 Afghanistan 2012         ppiAFG2012 sps       1 nu200                100
#> 10 Afghanistan 2012         ppiAFG2012 sps       1 extreme              100
#> # ℹ 124,457 more rows
```

To get the actual PPI tables for all countries with PPI tables in
Africa, the following command can be used in R:

``` r
get_table(region = "Africa")
#> # A tibble: 57,927 × 7
#>    country release_year filename   type  score poverty_definition   ppi
#>    <chr>   <chr>        <chr>      <chr> <dbl> <chr>              <dbl>
#>  1 Angola  2015         ppiAGO2015 sps       0 nl100              100  
#>  2 Angola  2015         ppiAGO2015 sps       0 nl150              100  
#>  3 Angola  2015         ppiAGO2015 sps       0 nl200              100  
#>  4 Angola  2015         ppiAGO2015 sps       0 half100             86.5
#>  5 Angola  2015         ppiAGO2015 sps       0 ppp125             100  
#>  6 Angola  2015         ppiAGO2015 sps       0 ppp200             100  
#>  7 Angola  2015         ppiAGO2015 sps       0 ppp250             100  
#>  8 Angola  2015         ppiAGO2015 sps       0 ppp500             100  
#>  9 Angola  2015         ppiAGO2015 sps       1 nl100              100  
#> 10 Angola  2015         ppiAGO2015 sps       1 nl150              100  
#> # ℹ 57,917 more rows
```

## Disclaimer

The [ppitables](https://github.com/katilingban/ppitables) package is an
independent development and is separate from and not recognised and
approved by the *[International Poverty Alliance
(IPA)](https://poverty-action.org/)*, the organisation that produces and
owns the copyright to the [Poverty Probability
Index](https://www.povertyindex.org). The author and maintainer of this
package is not affiliated with *[International Poverty Alliance
(IPA)](https://poverty-action.org/)* but is committed to ensuring that
the [ppitables](https://github.com/katilingban/ppitables) package is
compliant with the [Poverty Probability
Index](https://www.povertyindex.org)’s terms of use.

Any mistakes, problems and issues with the functionality and outputs of
the [ppitables](https://github.com/katilingban/ppitables) package are
that of the author and maintainer of the package and not of
*[International Poverty Alliance (IPA)](https://poverty-action.org/)*.
Hence any problems and issues to the usage, functionality and outputs of
the [ppitables](https://github.com/katilingban/ppitables) package should
be addressed directly to the author and maintainer
[here](https://github.com/katilingban/ppitables/issues).

## Citation

If you use the [ppitables](https://github.com/katilingban/ppitables)
package in your work, please cite both the
[ppitables](https://github.com/katilingban/ppitables) package and the
authors and creators of the **Poverty Probability Index** itself.

A suggested citation for both is provided by a call to the
[`citation()`](https://rdrr.io/r/utils/citation.html) function as
follows:

``` r
citation("ppitables")
#> To cite ppitables in publications use:
#> 
#>   Ernest Guevarra (2026). _ppitables: Lookup Tables to Generate Poverty
#>   Likelihoods and Rates using the Poverty Probability Index (PPI)_.
#>   doi:10.5281/zenodo.4129982 <https://doi.org/10.5281/zenodo.4129982>,
#>   R package version 0.6.1, <https://katilingban.io/ppitables/>.
#> 
#> To cite the Poverty Probability Index in publications use:
#> 
#>   Varun Kshirsagar, Jerzy Wieczorek, Sharada Ramanathan, Rachel Wells
#>   (2017). "Household poverty classification in data-scarce
#>   environments: a machine learning approach." 1711.06813,
#>   <https://arxiv.org/abs/1711.06813>.
#> 
#> To see these entries in BibTeX format, use 'print(<citation>,
#> bibtex=TRUE)', 'toBibtex(.)', or set
#> 'options(citation.bibtex.max=999)'.
```

## Community guidelines

Feedback, bug reports and feature requests are welcome; file issues or
seek support [here](https://github.com/katilingban/ppitables/issues). If
you would like to contribute to the package, please see our
[contributing
guidelines](https://katilingban.io/ppitables/CONTRIBUTING.html).

Please note that the
[ppitables](https://github.com/katilingban/ppitables) project is
released with a [Contributor Code of
Conduct](https://katilingban.io/ppitables/CODE_OF_CONDUCT.html). By
contributing to this project, you agree to abide by its terms.

  

------------------------------------------------------------------------

1.  Only 60 country PPI tables are shown here and available via the
    package. There is no lookup table for China because the China
    Poverty Scorecard is an expert-based scorecard. See
    [this](https://www.povertyindex.org/china-expert-based-poverty-scorecard)
    for further explanation.
