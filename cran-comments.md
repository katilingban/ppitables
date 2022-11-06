## Release summary

This is the tenth CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Uganda using the new PPI calculation approach developed
by the International Poverty Alliance (IPA) based on data from the Uganda
National Panel Survey of 2020

* new PPI tables for Tanzania using the new PPI calculation approach developed
by the International Poverty Alliance (IPA) based on data from the Tanzania
Household Budget Survey of 2017/2018

* updated `steer` data that serves as an index to the tables to include the new
Indonesia PPI tables

* general documentation updates and general checking updates

## Test environments
* local OS X install, R 4.2.2
* local ubuntu 22.04 install, R 4.2.2
* win-builder (devel, release and old release)
* github actions windows-latest, r: release
* github actions macOS-latest, r: release
* github actions ubuntu-latest, r: release, devel, old release
* rhub windows-latest r devel
* rhub ubuntu 16.04 r release
* rhub fedora r devel

## R CMD check results

0 errors | 0 warnings | 0 notes

## Reverse dependencies
`ppitables` doesn't have any downstream / reverse dependencies 
(see https://github.com/katilingban/ppitables/tree/master/revdep)
