## Release summary
This is the eighth CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Malawi using the new PPI calculation approach developed
by the International Poverty Alliance (IPA) based on data from Malawi's 2016/2017
Fourth Integrated Household Survey (IHS4)

* updated `steer` data that serves as an index to the tables to include the new
Malawi PPI tables

* updated `get_table()` to deal with steering file values not being converted
into factors anymore in newest R version

* updated `get_table()` and `find_table()` to deal with deprecation of
`tibble::as.tibble` and `tidyr::gather`

* general documentation updates and general checking updates

* converted tables for countries with the new PPI definitions into tibble format

## Test environments
* local OS X install, R 4.0.2
* ubuntu 16.04.6 (on travis-ci), release, devel and oldrelease
* local ubuntu 16.04 install, R 18.04.5
* win-builder (devel, release and old release)
* windows (on appveyor), x64 release, i386 release
* github actions windows-latest, r: release
* github actions macOS-latest, r: release
* github actions ubuntu-20.04, r: release, devel

## R CMD check results

0 errors | 0 warnings | 0 notes

## Reverse dependencies
`ppitables` doesn't have any downstream / reverse dependencies 
(see https://github.com/katilingban/ppitables/tree/master/revdep)
