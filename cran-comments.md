## Release summary
This is the seventh CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Rwands using the new PPI calculation approach developed
by the International Poverty Alliance (IPA) based on data from Rwanda's 2016/2017
Integrated Household Living Conditions Survey (EICV5) produced by the National
Institute of Statistics Rwanda (NISR) and the Ministry of Finance and Economic
Planning

* corrected URL source for Rwanda PPI tables

* updated `steer` data that serves as an index to the tables to include the new
Rwanda PPI tables

## Test environments
* local OS X install, R 3.6.2
* ubuntu 16.04.6 (on travis-ci), release, devel and oldrelease
* local ubuntu 16.04 install, R 3.6.2
* win-builder (devel, release and old release)
* windows (on appveyor), x64 release and devel, i386 release and devel

## R CMD check results

0 errors | 0 warnings | 0 notes

## Reverse dependencies
`ppitables` doesn't have any downstream / reverse dependencies 
(see https://github.com/validmeasures/ppitables/tree/master/revdep)
