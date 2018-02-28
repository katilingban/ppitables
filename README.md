
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ppitables: Lookup tables to generate poverty likelihoods and rates using the Poverty Probability Index (PPI)

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
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

The `ppitables` package contains PPI lookup tables for the 60 countries
where PPI can currently be calculated. To be able to use the lookup
tables in `ppitables` appropriately, you need to be aware of the naming
syntax used for the tables for each country. The name for each table
will always have three fixed or constant components as follows:

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
package. This is updated as at 27 February 2018 using information from
the PPI [site](https://www.povertyindex.org).

### List of PPI country tables

<table style="width:100%;">
<colgroup>
<col style="width: 28%" />
<col style="width: 50%" />
<col style="width: 21%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>PPI Country Table Name</strong></th>
<th><strong>Description</strong></th>
<th><strong>PPI Release Date</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol type="1">
<li><code>ppiMatrixAFG</code></li>
</ol></td>
<td>PPI for Afghanistan based on 2007/8 National Risk and Vulnerability Survey (NRVA)</td>
<td>2012</td>
</tr>
<tr class="even">
<td><ol start="2" type="1">
<li><code>ppiMatrixAGO</code></li>
</ol></td>
<td>PPI for Angola based on the 2008/2009 Household Living Standards Survey</td>
<td>2015</td>
</tr>
<tr class="odd">
<td><ol start="3" type="1">
<li><code>ppiMatrixBEN</code></li>
</ol></td>
<td>PPI for Benin based on 2010 data</td>
<td>2012</td>
</tr>
<tr class="even">
<td><ol start="4" type="1">
<li><code>ppiMatrixBFA</code></li>
</ol></td>
<td>PPI for Burkina Faso using Burkina Faso’s 2014 Enquête Multisectorielle Continue (EMC) Survey</td>
<td>2017</td>
</tr>
<tr class="odd">
<td><ol start="5" type="1">
<li><code>ppiMatrixBGD</code></li>
</ol></td>
<td>PPI for Bangladesh using Bangaldesh’s 2010 HIES Survey</td>
<td>2013</td>
</tr>
<tr class="even">
<td><ol start="6" type="1">
<li><code>ppiMatrixBOL</code></li>
</ol></td>
<td>PPI for Bolivia using Bolivia’s 2013 Household Survey</td>
<td>2015</td>
</tr>
<tr class="odd">
<td><ol start="7" type="1">
<li><code>ppiMatrixBRA</code></li>
</ol></td>
<td>PPI for Brazil based on the 2008 PNAD</td>
<td>2010</td>
</tr>
<tr class="even">
<td><ol start="8" type="1">
<li><code>ppiMatrixCIV</code></li>
</ol></td>
<td>PPI for Ivory Coast using the Ivory Coast’s 2008 Household Living Standards Survey</td>
<td>2013</td>
</tr>
<tr class="odd">
<td><ol start="9" type="1">
<li><code>ppiMatrixCMR</code></li>
</ol></td>
<td>PPI for Cameroon using Cameroon’s 2007 Household Survey</td>
<td>2013</td>
</tr>
<tr class="even">
<td><ol start="10" type="1">
<li><code>ppiMatrixCOL</code></li>
</ol></td>
<td>PPI for Colombia based on Colombia’s 2009 Encuesta Integrada de Hogares. This table uses the legacy poverty cutoffs.</td>
<td>2018</td>
</tr>
<tr class="odd">
<td><code>ppiMatrixCOL_a</code></td>
<td>PPI for Colombia based on Colombia’s 2009 Encuesta Integrada de Hogares. This table uses the new poverty cutoffs for Colombia.</td>
<td>2018</td>
</tr>
<tr class="even">
<td><ol start="11" type="1">
<li><code>ppiMatrixDOM</code></li>
</ol></td>
<td>PPI for Dominican Republic based on the 2007 Encuesta Nacional de Ingresos y Gastos de los Hogares (ENIGH)</td>
<td>2010</td>
</tr>
<tr class="odd">
<td><ol start="12" type="1">
<li><code>ppiMatrixEGY</code></li>
</ol></td>
<td>PPI for Egypt based on the 2004/5 HIECS</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="13" type="1">
<li><code>ppiMatrixETH</code></li>
</ol></td>
<td>PPI for Ethiopia based on Ethiopia’s 2010/11 Household Consumption and Expenditure Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="14" type="1">
<li><code>ppiMatrixFJI</code></li>
</ol></td>
<td>PPI for Fiji based on Fiji’s 2008/9 Household Income and Expenditure Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="15" type="1">
<li><code>ppiMatrixGHA</code></li>
</ol></td>
<td>PPI for Ghana based on Ghana’s 2012/13 Living Standards Survey using legacy poverty lines</td>
<td></td>
</tr>
<tr class="odd">
<td><pre><code>`ppiMatrixGHA_a`</code></pre></td>
<td>PPI for Ghana based on Ghana’s 2012/13 Living Standards Survey using the new-definition poverty lines deflated with Ghana’s CPI</td>
<td></td>
</tr>
<tr class="even">
<td><pre><code>`ppiMatrixGHA_b`</code></pre></td>
<td>PPI for Ghana based on Ghana’s 2012/13 Living Standards Survey using the new-definition poverty lines deflated with the change in 100% of national poverty line</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="16" type="1">
<li><code>ppiMatrixGTM</code></li>
</ol></td>
<td>PPI for Guatemala based on Guatemala’s 2014 Household Living Standards Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="17" type="1">
<li><code>ppiMatrixHND</code></li>
</ol></td>
<td>PPI for Honduras based on the 2007 EPHPM</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="18" type="1">
<li><code>ppiMatrixHTI</code></li>
</ol></td>
<td>PPI for Haiti based on Haiti’s 2012 Post-Earthquake Living Standards Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="19" type="1">
<li><code>ppiMatrixIDN</code></li>
</ol></td>
<td>PPI for Indonesia based on data from 2010 using legacy poverty lines</td>
<td></td>
</tr>
<tr class="odd">
<td><pre><code>`ppiMatrixIDN`</code></pre></td>
<td>PPI for Indonesia based on data from 2010 using new definition poverty lines</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="20" type="1">
<li><code>ppiMatrixIND_r59</code></li>
</ol></td>
<td>PPI for India using India’s 2011/12 Socio-Economic using the R59 legacy poverty lines using MRP consumption</td>
<td></td>
</tr>
<tr class="odd">
<td><pre><code>`ppiMatrixIND_r62`</code></pre></td>
<td>PPI for India using India’s 2011/12 Socio-Economic using the R59 legacy poverty lines using MRP consumption</td>
<td></td>
</tr>
<tr class="even">
<td><pre><code>`ppiMatrixIND_r66`</code></pre></td>
<td>PPI for India using India’s 2011/12 Socio-Economic using the R66 legacy poverty lines using MRP consumption</td>
<td></td>
</tr>
<tr class="odd">
<td><pre><code>`ppiMatrixIND_r68`</code></pre></td>
<td>PPI for India using India’s 2011/12 Socio-Economic using the R68 new poverty lines using MRP consumption</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="21" type="1">
<li><code>ppiMarixJOR</code></li>
</ol></td>
<td>PPI for Jordan using Jordan’s 2006 Household Income and Expenditure Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="22" type="1">
<li><code>ppiMatrixKEN</code></li>
</ol></td>
<td>PPI for Kenya using Kenya’s 2005/06 Integrated Household Budget Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="23" type="1">
<li><code>ppiMatrixKGZ</code></li>
</ol></td>
<td>PPI for Kyrgyzstan Kyrgyz Republic’s 2012 Integrated Household Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="24" type="1">
<li><code>ppiMatrixKHM</code></li>
</ol></td>
<td>PPI for Cambodia using Cambodia’s 2011 Socio-Economic Survey based using legacy poverty lines</td>
<td></td>
</tr>
<tr class="even">
<td><pre><code>`ppiMatrixKHM_gov`</code></pre></td>
<td>PPI for Cambodia using Cambodia’s 2011 Socio-Economic Survey based using government definition poverty lines</td>
<td></td>
</tr>
<tr class="odd">
<td><pre><code>`ppiMatrixKHM_wb`</code></pre></td>
<td>PPI for Cambodia using Cambodia’s 2011 Socio-Economic Survey based using World Bank definition poverty lines</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="25" type="1">
<li><code>ppiMatrixLKA</code></li>
</ol></td>
<td>PPI for Sri Lanka using Sri Lanka’s 2012/13 Household Income and Expenditure Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="26" type="1">
<li><code>ppiMatrixMAR</code></li>
</ol></td>
<td>PPI for Morocco based on Morocco’s 2007 Households Living Standards Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="27" type="1">
<li><code>ppiMatrixMDG</code></li>
</ol></td>
<td>PPI for Madagascar based on Madagascar’s 2010 Periodic Household Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="28" type="1">
<li><code>ppiMatrixMEX</code></li>
</ol></td>
<td>PPI for Mexico based on Mexico’s Encuesta Nacional de Ingresos y Gastos de los Hogares de 2014 using legacy definitions of poverty</td>
<td></td>
</tr>
<tr class="even">
<td><pre><code>`ppiMatrixMEX_a`</code></pre></td>
<td>PPI for Mexico based on Mexico’s Encuesta Nacional de Ingresos y Gastos de los Hogares de 2014 using new definitions of poverty</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="29" type="1">
<li><code>ppiMatrixMLI</code></li>
</ol></td>
<td>PPI for Mali based on Mali’s 2001 Poverty Evalution Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="30" type="1">
<li><code>ppiMatrixMMR</code></li>
</ol></td>
<td>PPI for Myanmar based on Myanmar’s 2009/10 Integrated Household Living Conditions Assessment</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="31" type="1">
<li><code>ppiMatrixMNG</code></li>
</ol></td>
<td>PPI for Mongolia based on Mongolia’s 2014 Household Socio-Economic Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="32" type="1">
<li><code>ppiMatrixMOZ</code></li>
</ol></td>
<td>PPI for Mozambique based on 2008/9 Household Budget Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="33" type="1">
<li><code>ppiMatrixMWI</code></li>
</ol></td>
<td>PPI for Malawi based on Malawi’s 2010/11 Integrated Household Survey using legacy poverty definitions</td>
<td></td>
</tr>
<tr class="even">
<td><pre><code>`ppiMatrixMWI_gov`</code></pre></td>
<td>PPI for Malawi based on Malawi’s 2010/11 Integrated Household Survey using government poverty definitions</td>
<td></td>
</tr>
<tr class="odd">
<td><pre><code>`ppiMatrixMWI_pbm`</code></pre></td>
<td>PPI for Malawi based on Malawi’s 2010/11 Integrated Household Survey using PBM poverty definitions</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="34" type="1">
<li><code>ppiMatrixNAM</code></li>
</ol></td>
<td>PPI for Namibia based on Namibia’s 2009/10 Household Income and Expenditure Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="35" type="1">
<li><code>ppiMatrixNER</code></li>
</ol></td>
<td>PPI for Niger based on Niger’s 2007/8 National Household Budget and Expenditure Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="36" type="1">
<li><code>ppiMatrixNGA</code></li>
</ol></td>
<td>PPI for Nigeria based on Nigeria’s 2012/13 General Household Panel Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="37" type="1">
<li><code>ppiMatrixNIC</code></li>
</ol></td>
<td>PPI for Nicaragua based on Nicaragua’s 2009 Living Standards Measurement Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="38" type="1">
<li><code>ppiMatrixNPL</code></li>
</ol></td>
<td>PPI for Nepal using legacy poverty definition lines</td>
<td></td>
</tr>
<tr class="odd">
<td><pre><code>`ppiMatrixNPL_a`</code></pre></td>
<td>PPI for Nepal using new poverty definition lines</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="39" type="1">
<li><code>ppiMatrixPER</code></li>
</ol></td>
<td>PPI for Peru based on Peru’s 2010 National Household Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="40" type="1">
<li><code>ppiMatrixPHL</code></li>
</ol></td>
<td>PPI for the Philippines based on Philippines 2009 FIES/LFS.</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="41" type="1">
<li><code>ppiMatrixPRY</code></li>
</ol></td>
<td>PPI for Paraguay based on Paraguay’s 2011 EPH</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="42" type="1">
<li><code>ppiMatrixPSE</code></li>
</ol></td>
<td>PPI for Palestine based on Palestine’s 2011 Expenditure and Consumption Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="43" type="1">
<li><code>ppiMatrixROU</code></li>
</ol></td>
<td>PPI for Romania based on the 2007 HBS</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="44" type="1">
<li><code>ppiMatrixRUS</code></li>
</ol></td>
<td>PPI for Russia based on 2007 HBS</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="45" type="1">
<li><code>ppiMatrixRWA</code></li>
</ol></td>
<td>PPI for Rwanda based on Rwanda’s 2010/11 Integrated Household Living Standards Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="46" type="1">
<li><code>ppiMatrixSEN</code></li>
</ol></td>
<td>PPI for Senegal based on Senegal’s 2005/6 Enquête de Suivi de la Pauvreté au Sénégal (ESPS)</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="47" type="1">
<li><code>ppiMatrixSLE</code></li>
</ol></td>
<td>PPI for Sierra Leone based on Sierra Leone’s 2003/4 HIS</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="48" type="1">
<li><code>ppiMatrixSLV</code></li>
</ol></td>
<td>PPI for El Salvador based on the 2008 EHPM</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="49" type="1">
<li><code>ppiMatrixSYR</code></li>
</ol></td>
<td>PPI for Syria based on Syria’s 2006/7 Household Income and Expenditure Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="50" type="1">
<li><code>ppiMatrixTJK</code></li>
</ol></td>
<td>PPI for Tajikistan based on 2007 data</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="51" type="1">
<li><code>ppiMatrixTLS</code></li>
</ol></td>
<td>PPI for Timor Leste based on Timor-Leste’s 2007 Survey of Living Standards</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="52" type="1">
<li><code>ppiMatrixTZA</code></li>
</ol></td>
<td>PPI for Tanzania based on Tanzania’s 2011/12 Household Budget Survey</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="53" type="1">
<li><code>ppiMatrixUGA</code></li>
</ol></td>
<td>PPI for Uganda based on Uganda’s 2012/13 National Household Survey</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="54" type="1">
<li><code>ppiMatrixVNM</code></li>
</ol></td>
<td>PPI for Vietnam based on the 2006 VHLSS</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="55" type="1">
<li><code>ppiMatrixYEM</code></li>
</ol></td>
<td>PPI for Yemen based on 2005/06 HBS</td>
<td></td>
</tr>
<tr class="odd">
<td><ol start="56" type="1">
<li><code>ppiMatrixZAF</code></li>
</ol></td>
<td>PPI for South Africa based on the 2005/6 IES</td>
<td></td>
</tr>
<tr class="even">
<td><ol start="57" type="1">
<li><code>ppiMatrixZMB</code></li>
</ol></td>
<td>PPIi for Zambia based on Zambia’s 2015 Living Conditions Monitoring Survey (LCMS)</td>
<td></td>
</tr>
</tbody>
</table>
