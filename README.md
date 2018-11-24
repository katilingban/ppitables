
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ppitables: Lookup tables to generate poverty likelihoods and rates using the Poverty Probability Index (PPI)

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![CRAN](https://img.shields.io/cran/v/ppitables.svg)](https://CRAN.R-project.org/package=ppitables)
[![CRAN](https://img.shields.io/cran/l/ppitables.svg)](https://github.com/validmeasures/ppitables/blob/master/LICENSE.md)
[![CRAN](http://cranlogs.r-pkg.org/badges/ppitables)](https://CRAN.R-project.org/package=ppitables)
[![CRAN](http://cranlogs.r-pkg.org/badges/grand-total/ppitables)](https://CRAN.R-project.org/package=ppitables)
[![Travis-CI Build
Status](https://travis-ci.org/validmeasures/ppitables.svg?branch=master)](https://travis-ci.org/validmeasures/ppitables)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/validmeasures/ppitables?branch=master&svg=true)](https://ci.appveyor.com/project/validmeasures/ppitables)
[![Coverage
Status](https://img.shields.io/codecov/c/github/validmeasures/ppitables/master.svg)](https://codecov.io/github/validmeasures/ppitables?branch=master)
[![DOI - All
Versions](https://zenodo.org/badge/DOI/10.5281/zenodo.1188982.svg)](https://doi.org/10.5281/zenodo.1188982)

Lookup tables for estimating the likelihood of poverty using the
`Poverty Probability Index` (previously called `Progress out of Poverty
Index`) or `PPI` from country-specific indicators collected from
cross-sectional surveys. This lookup table is extracted from
documentation of the `PPI` found at <https://www.povertyindex.org>.

## Installation

You can install `ppitables` from CRAN with:

``` r
install.packages("ppitables")
library(ppitables)
```

You can install `ppitables` from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("validmeasures/ppitables")
library(ppitables)
```

## Usage

The `ppitables` package contains PPI lookup tables for the 61
countries\[1\] where PPI can currently be calculated. To be able to use
the lookup tables in `ppitables` appropriately, you need to be aware of
the naming syntax used for the tables for each country. The name for
each table will always have three fixed or constant components as
follows:

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
subset table in which the poverty likelihoods for a given `PPI` score
are reported based on a different poverty definition or cut-off. This
additional component to the table name is usually a character value or
alphanumeric and is usually country-specific. To know more about what
this additional component to some `PPI` tables refer to, read the index
table below of the `PPI` tables available in this package.

Following are the available PPI country tables from the `ppitables`
package. This is updated as at 23 November 2018 using information from
the PPI [site](https://www.povertyindex.org).

### List of PPI country tables

<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 18%" />
<col style="width: 56%" />
<col style="width: 18%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: right;"></th>
<th><strong>PPI Country Table Name</strong></th>
<th><strong>Description</strong></th>
<th style="text-align: center;"><strong>PPI Release Date</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: right;"><ol type="1">
<li></li>
</ol></td>
<td><code>ppiAFG2012</code></td>
<td>PPI for Afghanistan based on 2007/8 National Risk and Vulnerability Survey (NRVA)</td>
<td style="text-align: center;">2012</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="2" type="1">
<li></li>
</ol></td>
<td><code>ppiAGO2015</code></td>
<td>PPI for Angola based on the 2008/2009 Household Living Standards Survey</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="3" type="1">
<li></li>
</ol></td>
<td><code>ppiBEN2012</code></td>
<td>PPI for Benin based on 2010 data</td>
<td style="text-align: center;">2012</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="4" type="1">
<li></li>
</ol></td>
<td><code>ppiBFA2011</code></td>
<td>PPI for Burkina Faso using Burkina Faso’s 2003 Household Living Standards Survey</td>
<td style="text-align: center;">2011</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiBFA2014</code></td>
<td>PPI for Burkina Faso using Burkina Faso’s 2014 Permanent Multi-Sector Survey</td>
<td style="text-align: center;">2017</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiBFA2017</code></td>
<td>PPI for Burkina Faso using Burkina Faso’s 2014 Enquête Multisectorielle Continue (EMC) based on IPA’s new approach to PPI calculation</td>
<td style="text-align: center;">2017</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="5" type="1">
<li></li>
</ol></td>
<td><code>ppiBGD2013</code></td>
<td>PPI for Bangladesh using Bangaldesh’s 2010 HIES Survey</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="6" type="1">
<li></li>
</ol></td>
<td><code>ppiBOL2015</code></td>
<td>PPI for Bolivia using Bolivia’s 2013 Household Survey</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="7" type="1">
<li></li>
</ol></td>
<td><code>ppiBRA2010</code></td>
<td>PPI for Brazil based on the 2008 PNAD</td>
<td style="text-align: center;">2010</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="8" type="1">
<li></li>
</ol></td>
<td><code>ppiCIV2013</code></td>
<td>PPI for Ivory Coast using the Ivory Coast’s 2008 Household Living Standards Survey</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiCIV2018</code></td>
<td>PPI for Ivory Coast using the Ivory Coast’s 2015 Enquête sur le Niveau de Vie des Ménages</td>
<td style="text-align: center;">2018</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="9" type="1">
<li></li>
</ol></td>
<td><code>ppiCMR2013</code></td>
<td>PPI for Cameroon using Cameroon’s 2007 Household Survey</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="10" type="1">
<li></li>
</ol></td>
<td><code>ppiCOL2012</code></td>
<td>PPI for Colombia based on Colombia’s 2009 Encuesta Integrada de Hogares. This table uses the old poverty definitions.</td>
<td style="text-align: center;">2012</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiCOL2012_a</code></td>
<td>PPI for Colombia based on Colombia’s 2009 Encuesta Integrada de Hogares. This table uses the new poverty definitions for Colombia.</td>
<td style="text-align: center;">2012</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiCOL2018</code></td>
<td>PPI for Colombia based on Colombia’s 2016 Gran Encuesta Integrada de Hogares (GEIH)</td>
<td style="text-align: center;">2018</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="11" type="1">
<li></li>
</ol></td>
<td><code>ppiDOM2010</code></td>
<td>PPI for Dominican Republic based on the 2007 Encuesta Nacional de Ingresos y Gastos de los Hogares (ENIGH)</td>
<td style="text-align: center;">2010</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="12" type="1">
<li></li>
</ol></td>
<td><code>ppiECU2015</code></td>
<td>PPI for Ecuador based on the 2013 Living Standards Survey</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="13" type="1">
<li></li>
</ol></td>
<td><code>ppiEGY2010</code></td>
<td>PPI for Egypt based on the 2004/5 HIECS</td>
<td style="text-align: center;">2010</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="14" type="1">
<li></li>
</ol></td>
<td><code>ppiETH2016</code></td>
<td>PPI for Ethiopia based on Ethiopia’s 2010/11 Household Consumption and Expenditure Survey</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="15" type="1">
<li></li>
</ol></td>
<td><code>ppiFJI2014</code></td>
<td>PPI for Fiji based on Fiji’s 2008/9 Household Income and Expenditure Survey</td>
<td style="text-align: center;">2014</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="16" type="1">
<li></li>
</ol></td>
<td><code>ppiGHA2015</code></td>
<td>PPI for Ghana based on Ghana’s 2012/13 Living Standards Survey using legacy poverty lines</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiGHA2015_a</code></td>
<td>PPI for Ghana based on Ghana’s 2012/13 Living Standards Survey using the new-definition poverty lines deflated with Ghana’s CPI</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiGHA2015_b</code></td>
<td>PPI for Ghana based on Ghana’s 2012/13 Living Standards Survey using the new-definition poverty | lines deflated with the change in 100% of national poverty line</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="17" type="1">
<li></li>
</ol></td>
<td><code>ppiGTM2016</code></td>
<td>PPI for Guatemala based on Guatemala’s 2014 Household Living Standards Survey</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="18" type="1">
<li></li>
</ol></td>
<td><code>ppiHND2010</code></td>
<td>PPI for Honduras based on the 2007 EPHPM</td>
<td style="text-align: center;">2010</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="19" type="1">
<li></li>
</ol></td>
<td><code>ppiHTI2016</code></td>
<td>PPI for Haiti based on Haiti’s 2012 Post-Earthquake Living Standards Survey</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="20" type="1">
<li></li>
</ol></td>
<td><code>ppiIDN2012</code></td>
<td>PPI for Indonesia based on data from 2010 using legacy poverty lines</td>
<td style="text-align: center;">2012</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiIDN2012_a</code></td>
<td>PPI for Indonesia based on data from 2010 using new definition poverty lines</td>
<td style="text-align: center;">2012</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="21" type="1">
<li></li>
</ol></td>
<td><code>ppiIND2016_r59</code></td>
<td>PPI for India using India’s 2011/12 Socio-Economic using the R59 legacy poverty lines using MRP consumption</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiIND2016_r62</code></td>
<td>PPI for India using India’s 2011/12 Socio-Economic using the R59 legacy poverty lines using MRP consumption</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiIND2016_r66</code></td>
<td>PPI for India using India’s 2011/12 Socio-Economic using the R66 legacy poverty lines using MRP consumption</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiIND2016_r68</code></td>
<td>PPI for India using India’s 2011/12 Socio-Economic using the R68 new poverty lines using MRP consumption</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="22" type="1">
<li></li>
</ol></td>
<td><code>ppiJOR2010</code></td>
<td>PPI for Jordan using Jordan’s 2006 Household Income and Expenditure Survey</td>
<td style="text-align: center;">2010</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="23" type="1">
<li></li>
</ol></td>
<td><code>ppiKEN2011</code></td>
<td>PPI for Kenya using Kenya’s 2005/06 Integrated Household Budget Survey</td>
<td style="text-align: center;">2011</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiKEN2018</code></td>
<td>PPI for Kenya using Kenya’s 2015 Integrated Household Budget Survey</td>
<td style="text-align: center;">2018</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="24" type="1">
<li></li>
</ol></td>
<td><code>ppiKGZ2015</code></td>
<td>PPI for Kyrgyzstan Kyrgyz Republic’s 2012 Integrated Household Survey</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="25" type="1">
<li></li>
</ol></td>
<td><code>ppiKHM2105</code></td>
<td>PPI for Cambodia using Cambodia’s 2011 Socio-Economic Survey based using legacy poverty lines</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiKHM2015_gov</code></td>
<td>PPI for Cambodia using Cambodia’s 2011 Socio-Economic Survey based using government definition poverty lines</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiKHM2015_wb</code></td>
<td>PPI for Cambodia using Cambodia’s 2011 Socio-Economic Survey based using World Bank definition poverty lines</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="26" type="1">
<li></li>
</ol></td>
<td><code>ppiLKA2016</code></td>
<td>PPI for Sri Lanka using Sri Lanka’s 2012/13 Household Income and Expenditure Survey</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="27" type="1">
<li></li>
</ol></td>
<td><code>ppiMAR2013</code></td>
<td>PPI for Morocco based on Morocco’s 2007 Households Living Standards Survey</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="28" type="1">
<li></li>
</ol></td>
<td><code>ppiMDG2015</code></td>
<td>PPI for Madagascar based on Madagascar’s 2010 Periodic Household Survey</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="29" type="1">
<li></li>
</ol></td>
<td><code>ppiMEX2017</code></td>
<td>PPI for Mexico based on Mexico’s Encuesta Nacional de Ingresos y Gastos de los Hogares de 2014 using legacy definitions of poverty</td>
<td style="text-align: center;">2017</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiMEX2017_a</code></td>
<td>PPI for Mexico based on Mexico’s Encuesta Nacional de Ingresos y Gastos de los Hogares de 2014 using new definitions of poverty</td>
<td style="text-align: center;">2017</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="30" type="1">
<li></li>
</ol></td>
<td><code>ppiMLI2010</code></td>
<td>PPI for Mali based on Mali’s 2001 Poverty Evalution Survey</td>
<td style="text-align: center;">2010</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="31" type="1">
<li></li>
</ol></td>
<td><code>ppiMMR2012</code></td>
<td>PPI for Myanmar based on Myanmar’s 2009/10 Integrated Household Living Conditions Assessment</td>
<td style="text-align: center;">2012</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="32" type="1">
<li></li>
</ol></td>
<td><code>ppiMNG2016</code></td>
<td>PPI for Mongolia based on Mongolia’s 2014 Household Socio-Economic Survey</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="33" type="1">
<li></li>
</ol></td>
<td><code>ppiMOZ2013</code></td>
<td>PPI for Mozambique based on 2008/9 Household Budget Survey</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="34" type="1">
<li></li>
</ol></td>
<td><code>ppiMWI2015</code></td>
<td>PPI for Malawi based on Malawi’s 2010/11 Integrated Household Survey using legacy poverty definitions</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiMWI2015_gov</code></td>
<td>PPI for Malawi based on Malawi’s 2010/11 Integrated Household Survey using government poverty definitions</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiMWI2015_pbm</code></td>
<td>PPI for Malawi based on Malawi’s 2010/11 Integrated Household Survey using PBM poverty definitions</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="35" type="1">
<li></li>
</ol></td>
<td><code>ppiNAM2013</code></td>
<td>PPI for Namibia based on Namibia’s 2009/10 Household Income and Expenditure Survey</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="36" type="1">
<li></li>
</ol></td>
<td><code>ppiNER2013</code></td>
<td>PPI for Niger based on Niger’s 2007/8 National Household Budget and Expenditure Survey</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="37" type="1">
<li></li>
</ol></td>
<td><code>ppiNGA2015</code></td>
<td>PPI for Nigeria based on Nigeria’s 2012/13 General Household Panel Survey</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="38" type="1">
<li></li>
</ol></td>
<td><code>ppiNIC2013</code></td>
<td>PPI for Nicaragua based on Nicaragua’s 2009 Living Standards Measurement Survey</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="39" type="1">
<li></li>
</ol></td>
<td><code>ppiNPL2013</code></td>
<td>PPI for Nepal using legacy poverty definition lines</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiNPL2013_a</code></td>
<td>PPI for Nepal using new poverty definition lines</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="40" type="1">
<li></li>
</ol></td>
<td><code>ppiPAK2009</code></td>
<td>PPI for Pakistan using Pakistan 2005/6 Social and Living Standards Measurement Survey</td>
<td style="text-align: center;">2009</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="41" type="1">
<li></li>
</ol></td>
<td><code>ppiPER2012</code></td>
<td>PPI for Peru based on Peru’s 2010 National Household Survey</td>
<td style="text-align: center;">2012</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiPER2018</code></td>
<td>PPI for Peru based on Peru’s 2016 Encuesta Nacional de Hogares sobre Condiciones de Vida y Pobreza (ENAHO)</td>
<td style="text-align: center;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="42" type="1">
<li></li>
</ol></td>
<td><code>ppiPHL2014</code></td>
<td>PPI for the Philippines based on Philippines’ 2009 FIES/LFS.</td>
<td style="text-align: center;">2014</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiPHL2018</code></td>
<td>PPI for the Philippines based on Philippines’ 2015 Family Income and Expenditure Survey (FIES)</td>
<td style="text-align: center;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="43" type="1">
<li></li>
</ol></td>
<td><code>ppiPRY2012</code></td>
<td>PPI for Paraguay based on Paraguay’s 2011 EPH</td>
<td style="text-align: center;">2012</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="44" type="1">
<li></li>
</ol></td>
<td><code>ppiPSE2014</code></td>
<td>PPI for Palestine based on Palestine’s 2011 Expenditure and Consumption Survey</td>
<td style="text-align: center;">2014</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="45" type="1">
<li></li>
</ol></td>
<td><code>ppiROU2009</code></td>
<td>PPI for Romania based on the 2007 HBS</td>
<td style="text-align: center;">2009</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="46" type="1">
<li></li>
</ol></td>
<td><code>ppiRUS2010</code></td>
<td>PPI for Russia based on 2007 HBS</td>
<td style="text-align: center;">2010</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="47" type="1">
<li></li>
</ol></td>
<td><code>ppiRWA2016</code></td>
<td>PPI for Rwanda based on Rwanda’s 2010/11 Integrated Household Living Standards Survey</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="48" type="1">
<li></li>
</ol></td>
<td><code>ppiSEN2009</code></td>
<td>PPI for Senegal based on Senegal’s 2005/6 Enquête de Suivi de la Pauvreté au Sénégal (ESPS)</td>
<td style="text-align: center;">2009</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiSEN2018</code></td>
<td>PPI for Senegal based on Senegal’s 2011 Enquête de Suivi de la Pauvreté au Sénégal (ESPS)</td>
<td style="text-align: center;">2018</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="49" type="1">
<li></li>
</ol></td>
<td><code>ppiSLE2011</code></td>
<td>PPI for Sierra Leone based on Sierra Leone’s 2003/4 HIS</td>
<td style="text-align: center;">2011</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="50" type="1">
<li></li>
</ol></td>
<td><code>ppiSLV2010</code></td>
<td>PPI for El Salvador based on the 2008 EHPM</td>
<td style="text-align: center;">2010</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="51" type="1">
<li></li>
</ol></td>
<td><code>ppiSYR2010</code></td>
<td>PPI for Syria based on Syria’s 2006/7 Household Income and Expenditure Survey</td>
<td style="text-align: center;">2010</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="52" type="1">
<li></li>
</ol></td>
<td><code>ppiTJK2015</code></td>
<td>PPI for Tajikistan based on 2007 data</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="53" type="1">
<li></li>
</ol></td>
<td><code>ppiTLS2013</code></td>
<td>PPI for Timor Leste based on Timor-Leste’s 2007 Survey of Living Standards</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="54" type="1">
<li></li>
</ol></td>
<td><code>ppiTZA2016</code></td>
<td>PPI for Tanzania based on Tanzania’s 2011/12 Household Budget Survey</td>
<td style="text-align: center;">2016</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="55" type="1">
<li></li>
</ol></td>
<td><code>ppiTGO2018</code></td>
<td>PPI for Togo based on Togo’s 2015 Questionnaire des Indicateurs de Base du Bien-être (QUIBB)</td>
<td style="text-align: center;">2018</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="56" type="1">
<li></li>
</ol></td>
<td><code>ppiUGA2015</code></td>
<td>PPI for Uganda based on Uganda’s 2012/13 National Household Survey</td>
<td style="text-align: center;">2015</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="57" type="1">
<li></li>
</ol></td>
<td><code>ppiVNM2009</code></td>
<td>PPI for Vietnam based on the 2006 VHLSS</td>
<td style="text-align: center;">2009</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="58" type="1">
<li></li>
</ol></td>
<td><code>ppiYEM2009</code></td>
<td>PPI for Yemen based on 2005/06 HBS</td>
<td style="text-align: center;">2009</td>
</tr>
<tr class="even">
<td style="text-align: right;"><ol start="59" type="1">
<li></li>
</ol></td>
<td><code>ppiZAF2009</code></td>
<td>PPI for South Africa based on the 2005/6 IES</td>
<td style="text-align: center;">2009</td>
</tr>
<tr class="odd">
<td style="text-align: right;"><ol start="60" type="1">
<li></li>
</ol></td>
<td><code>ppiZMB2013_got</code></td>
<td>PPI for Zambia based on Zambia’s 2010 Living Conditions Monitoring Survey (LCMS) using Göttingen poverty definitions</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiZMB2013_cso</code></td>
<td>PPI for Zambia based on Zambia’s 2010 Living Conditions Monitoring Survey (LCMS) using CSO poverty definitions</td>
<td style="text-align: center;">2013</td>
</tr>
<tr class="odd">
<td style="text-align: right;"></td>
<td><code>ppiZMB2017</code></td>
<td>PPI for Zambia based on Zambia’s 2015 Living Conditions Monitoring Survey (LCMS) using legacy poverty definitions</td>
<td style="text-align: center;">2017</td>
</tr>
<tr class="even">
<td style="text-align: right;"></td>
<td><code>ppiZMB2017_a</code></td>
<td>PPI for Zambia based on Zambia’s 2015 Living Conditions Monitoring Survey (LCMS) using new PPI calculation approach</td>
<td style="text-align: center;">2017</td>
</tr>
</tbody>
</table>

This list of available PPI country tables can be retrieved in R using
the `find_table()` function. View the complete list using the following
command in R:

``` r
find_table()
#> # A tibble: 82 x 7
#>    region   country survey_year release_year description    type  filename
#>  * <fct>    <fct>         <int>        <int> <fct>          <fct> <fct>   
#>  1 Asia     Afghan…        2007         2012 PPI for Afgha… sps   ppiAFG2…
#>  2 Africa   Angola         2008         2015 PPI for Angol… sps   ppiAGO2…
#>  3 Asia     Bangla…        2010         2013 PPI for Benin… sps   ppiBEN2…
#>  4 Africa   Benin          2010         2012 "PPI for Bang… sps   ppiBGD2…
#>  5 Latin A… Bolivia        2013         2015 "PPI for Boli… sps   ppiBOL2…
#>  6 Latin A… Brazil         2008         2010 PPI for Brazi… sps   ppiBRA2…
#>  7 Africa   Burkin…        2003         2011 "PPI for Burk… sps   ppiBFA2…
#>  8 Africa   Burkin…        2014         2017 "PPI for Burk… sps   ppiBFA2…
#>  9 Africa   Burkin…        2014         2017 "PPI for Burk… ipa   ppiBFA2…
#> 10 Asia     Cambod…        2011         2015 "PPI for Camb… sps   ppiKHM2…
#> # ... with 72 more rows
```

View the list of PPI country tables for Africa using the following
command in R:

``` r
find_table(region = "Africa")
#> # A tibble: 33 x 7
#>    region country  survey_year release_year description     type  filename
#>  * <fct>  <fct>          <int>        <int> <fct>           <fct> <fct>   
#>  1 Africa Angola          2008         2015 PPI for Angola… sps   ppiAGO2…
#>  2 Africa Benin           2010         2012 "PPI for Bangl… sps   ppiBGD2…
#>  3 Africa Burkina…        2003         2011 "PPI for Burki… sps   ppiBFA2…
#>  4 Africa Burkina…        2014         2017 "PPI for Burki… sps   ppiBFA2…
#>  5 Africa Burkina…        2014         2017 "PPI for Burki… ipa   ppiBFA2…
#>  6 Africa Cameroon        2007         2013 "PPI for Camer… sps   ppiCMR2…
#>  7 Africa "C\x99t…        2008         2013 "PPI for Ivory… sps   ppiCIV2…
#>  8 Africa "C\x99t…        2015         2018 "PPI for Ivory… ipa   ppiCIV2…
#>  9 Africa Ethiopia        2010         2016 "PPI for Ethio… sps   ppiETH2…
#> 10 Africa Ghana           2012         2015 "PPI for Ghana… sps   ppiGHA2…
#> # ... with 23 more rows
```

View the list of PPI country tables in Zambia using the the following
command in R:

``` r
find_table(country = "Zambia")
#> # A tibble: 4 x 7
#>   region country survey_year release_year description       type  filename
#> * <fct>  <fct>         <int>        <int> <fct>             <fct> <fct>   
#> 1 Africa Zambia         2010         2013 "PPI for Zambia … sps   ppiZMB2…
#> 2 Africa Zambia         2010         2013 "PPI for Zambia … sps   ppiZMB2…
#> 3 Africa Zambia         2015         2017 "PPI for Zambia … sps   ppiZMB2…
#> 4 Africa Zambia         2015         2017 "PPI for Zambia … ipa   ppiZMB2…
```

To extract the actual PPI tables, the `get_table()` function can be
used. The `get_table()` function wraps around the `find_table()`
function to make a search for a specific PPI table and then extracts the
table/s and puts them together into a tidy data frame.

For example, to get the actual PPI tables for all countries with PPI
tables, the following command can be used in R:

``` r
get_table()
#> # A tibble: 77,871 x 7
#>    country     release_year filename   type  score poverty_definition   ppi
#>    <fct>       <fct>        <fct>      <fct> <dbl> <chr>              <dbl>
#>  1 Afghanistan 2012         ppiAFG2012 sps       0 nl                 100  
#>  2 Afghanistan 2012         ppiAFG2012 sps       1 nl                 100  
#>  3 Afghanistan 2012         ppiAFG2012 sps       2 nl                 100  
#>  4 Afghanistan 2012         ppiAFG2012 sps       3 nl                 100  
#>  5 Afghanistan 2012         ppiAFG2012 sps       4 nl                 100  
#>  6 Afghanistan 2012         ppiAFG2012 sps       5 nl                  68.8
#>  7 Afghanistan 2012         ppiAFG2012 sps       6 nl                  68.8
#>  8 Afghanistan 2012         ppiAFG2012 sps       7 nl                  68.8
#>  9 Afghanistan 2012         ppiAFG2012 sps       8 nl                  68.8
#> 10 Afghanistan 2012         ppiAFG2012 sps       9 nl                  68.8
#> # ... with 77,861 more rows
```

To get the actual PPI tables for all countries with PPI tables in
Africa, the following command can be used in R:

``` r
get_table(region = "Africa")
#> # A tibble: 34,239 x 7
#>    country release_year filename   type  score poverty_definition   ppi
#>    <fct>   <fct>        <fct>      <fct> <dbl> <chr>              <dbl>
#>  1 Angola  2015         ppiAGO2015 sps       0 nl100                100
#>  2 Angola  2015         ppiAGO2015 sps       1 nl100                100
#>  3 Angola  2015         ppiAGO2015 sps       2 nl100                100
#>  4 Angola  2015         ppiAGO2015 sps       3 nl100                100
#>  5 Angola  2015         ppiAGO2015 sps       4 nl100                100
#>  6 Angola  2015         ppiAGO2015 sps       5 nl100                100
#>  7 Angola  2015         ppiAGO2015 sps       6 nl100                100
#>  8 Angola  2015         ppiAGO2015 sps       7 nl100                100
#>  9 Angola  2015         ppiAGO2015 sps       8 nl100                100
#> 10 Angola  2015         ppiAGO2015 sps       9 nl100                100
#> # ... with 34,229 more rows
```

### Notes

1.  Only 60 country PPI tables are shown here and available via the
    package. There is no lookup table for China because the China
    Poverty Scorecard is an expert-based scorecard. See
    [this](https://www.povertyindex.org/china-expert-based-poverty-scorecard)
    for futher explanation.
