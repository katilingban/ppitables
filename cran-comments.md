## Release summary
This is the ninth CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Indonesia using the new PPI calculation approach developed
by the International Poverty Alliance (IPA) based on data from Indonesia's
SUSENA 2016

* updated `steer` data that serves as an index to the tables to include the new
Indonesia PPI tables

* general documentation updates and general checking updates

## Test environments
* local OS X install, R 4.0.2
* ubuntu 16.04.6 (on travis-ci), release, devel and oldrelease
* local ubuntu 16.04 install, R 18.04.5
* win-builder (devel, release and old release)
* windows (on appveyor), x64 release, i386 release
* github actions windows-latest, r: release
* github actions macOS-latest, r: release
* github actions ubuntu-20.04, r: release, devel
* rhub windows-latest r devel
* rhub ubuntu 16.04 r release
* rhub fedora r devel

## R CMD check results

0 errors | 0 warnings | 0 notes

## Reverse dependencies
`ppitables` doesn't have any downstream / reverse dependencies 
(see https://github.com/katilingban/ppitables/tree/master/revdep)
