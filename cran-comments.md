## Release summary
This is the second CRAN release of `ppitables`. In this release, I added:

* updates to documentation

* new PPI tables for Ivory Coast, Togo, Philippines and Peru using the new
PPI calculation approach developed by the International Poverty Alliance (IPA)

* update PPI tables for Colombia, Burkina Faso and Zambia

* added `find_table()` which allows user to do a search query for specific PPI
tables

* added `get_table()` which creates a tidy format data frame of user-specified
PPI tables.

## Test environments
* local OS X install, R 3.5.0
* ubuntu 14.04.5 (on travis-ci), release, devel and oldrelease
* local ubuntu 16.04 install, R 3.5.0
* win-builder (devel and release)
* windows (on appveyor), x64 release and devel, i386 release and devel

## R CMD check results

0 errors | 0 warnings | 0 notes

## Reverse dependencies
`ppitables` doesn't have any downstream / reverse dependencies 
(see https://github.com/validmeasures/ppitables/tree/master/revdep)
