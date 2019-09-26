## Release summary
This is the sixth CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Mozambique using the new PPI calculation 
approach developed by the International Poverty Alliance (IPA) based on data 
from the 2014 Inquérito Sobre Orçamento Familiar (IOF) Survey

* new PPI tables for Myanmar using the new PPI calculation 
approach developed by the International Poverty Alliance (IPA) based on data 
from the 2015 Poverty and Living Conditions Survey

* updated `steer` data that serves as an index to the tables to include the new
PPI tables

## Test environments
* local OS X install, R 3.6.0
* ubuntu 14.04.5 (on travis-ci), release, devel and oldrelease
* local ubuntu 16.04 install, R 3.6.0
* win-builder (devel and release)
* windows (on appveyor), x64 release and devel, i386 release and devel

## R CMD check results

0 errors | 0 warnings | 0 notes

## Reverse dependencies
`ppitables` doesn't have any downstream / reverse dependencies 
(see https://github.com/validmeasures/ppitables/tree/master/revdep)
