
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ppitables: Lookup tables to generate poverty likelihoods and rates using the Poverty Probability Index (PPI)

[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)
[![CRAN](https://img.shields.io/cran/v/ppitables.svg)](https://CRAN.R-project.org/package=ppitables)
[![CRAN](https://img.shields.io/cran/l/ppitables.svg)](https://github.com/validmeasures/ppitables/blob/master/LICENSE.md)
[![CRAN](http://cranlogs.r-pkg.org/badges/ppitables)](https://CRAN.R-project.org/package=ppitables)
[![Travis-CI Build
Status](https://travis-ci.org/validmeasures/ppitables.svg?branch=master)](https://travis-ci.org/validmeasures/ppitables)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/validmeasures/ppitables?branch=master&svg=true)](https://ci.appveyor.com/project/validmeasures/ppitables)

Lookup tables for estimating the likelihood of poverty using the
`Poverty Probability Index` (previously called `Progress out of Poverty
Index`) or `PPI` from country-specific indicators collected from
cross-sectional surveys. This lookup table is extracted from
documentation of the `PPI` found at <https://www.povertyindex.org>.

## Installation

You can install `ppitables` from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("validmeasures/ppitables")
library(ppitables)
```

## Usage

The `ppitables` package contains PPI lookup tables for 60 countries. To
be able to use the tables in the `ppitables` appropriately, you need to
be aware of the naming syntax used for the tables for each country. The
name for each table starts with `ppiMatrix` followed by the three letter
ISO code of the country of interest. So, for example, you can access the
PPI table for Bangladesh with:

``` r
# call PPI table for Bangladesh (ISO code - BGD)
# install.packages("washdata")
library(ppitables)
ppiMatrixBGD
```

Some PPI country table names are suffixed to indicate that they refer to
either a newer version of the lookup table for the particular country,
or a more localised table using country-specific poverty cutoffs.

Following are the available PPI country tables from the `ppitables`
package. This is updated as at 14 February 2018 using information from
the PPI [site](https://www.povertyindex.org).

### List of PPI country tables

1.  `ppiMatrixAFG` - PPI for Afghanistan based on 2007/8 National Risk
    and Vulnerability Survey (NRVA)

2.  `ppiMatrixAGO` - PPI for Angola based on the 2008/2009 Household
    Living Standards Survey

3.  `ppiMatrixBEN` - PPI for Benin based on 2010 data

4.  `ppiMatrixBFA` - PPI for Burkina Faso using Burkina Faso’s 2014
    Enquête Multisectorielle Continue (EMC) Survey

5.  `ppiMatrixBGD` - PPI for Bangladesh using Bangaldesh’s 2010 HIES
    Survey

6.  `ppiMatrixBOL` - PPI for Bolivia using Bolivia’s 2013 Household
    Survey

7.  `ppiMatrixBRA` - PPI for Brazil based on the 2008 PNAD

8.  `ppiMatrixCIV` - PPI for Ivory Coast using the Ivory Coast’s 2008
    Household Living Standards Survey

9.  `ppiMatrixCMR` - PPI for Cameroon using Cameroon’s 2007 Household
    Survey

10. `ppiMatrixCOL` - PPI for Colombia based on Colombia’s 2009 Encuesta
    Integrada de Hogares. This table uses the legacy poverty cutoffs.
    
    `ppiMatrixCOL_a` - PPI for Colombia based on Colombia’s 2009
    Encuesta Integrada de Hogares. This table uses the new poverty
    cutoffs for Colombia.

11. `ppiMatrixDOM` - PPI for Dominican Republic based on the 2007
    Encuesta Nacional de Ingresos y Gastos de los Hogares (ENIGH)

12. `ppiMatrixEGY` - PPI for Egypt based on the 2004/5 HIECS

13. `ppiMatrixETH` - PPI for Ethiopia based on Ethiopia’s 2010/11
    Household Consumption and Expenditure Survey

14. `ppiMatrixFJI` - PPI for Fiji based on Fiji’s 2008/9 Household
    Income and Expenditure Survey

15. `ppiMatrixGHA` - PPI for Ghana based on Ghana’s 2012/13 Living
    Standards Survey using legacy poverty lines
    
    `ppiMatrixGHA_a` - PPI for Ghana based on Ghana’s 2012/13 Living
    Standards Survey using the new-definition poverty lines deflated
    with Ghana’s CPI
    
    `ppiMatrixGHA_b` - PPI for Ghana based on Ghana’s 2012/13 Living
    Standards Survey using the new-definition poverty lines deflated
    with the change in 100% of national poverty line

16. `ppiMatrixGTM` - PPI for Guatemala based on Guatemala’s 2014
    Household Living Standards Survey

17. `ppiMatrixHND` - PPI for Honduras based on the 2007 EPHPM

18. `ppiMatrixHTI` - PPI for Haiti based on Haiti’s 2012 Post-Earthquake
    Living Standards Survey

19. `ppiMatrixIDN` - PPI for Indonesia based on data from 2010 using
    legacy poverty lines
    
    `ppiMatrixIDN` - PPI for Indonesia based on data from 2010 using new
    definition poverty lines

20. `ppiMatrixIND_r59` -
    
    `ppiMatrixIND_r62` -
    
    `ppiMatrixIND_r66` -
    
    `ppiMatrixIND_r68` -

21. `ppiMarixJOR` -

22.
