## Resubmission - 2 March 2018
This is resubmission. In this version, the following changes have been made based
on CRAN comments made to previous submission:

* "this country-specific references for the PPI will change over time, right? 
In this case you should add the year when these references were calculated."

I have changed nomenclature of PPI tables in the package as suggested. I have
also added the naming syntax in the README to describe the nomenclature
accordingly

* Perhaps you can also add these 10 questions to your package and a function that 
is able to compute the PPI score.

Thank you for the suggestion. I had this in mind initially but decided to create
a separate package that computes the PPI score for the following reasons:

    - The 10 questions used to provide data to create a PPI score and to which
    the reference tables can be used to get the poverty probability is
    country-specific so the functions I am currently making requires
    country-specific calculations. I have completed 20 of the 60 country
    calculation functions already and aiming to complete all but thought that
    having the tables available for other separately can facilitate immediate
    usage without having to wait for the calculation functions.
    
    - As mentioned in the previous CRAN comments, the PPI tables will most
    likely change quite often whilst the functions to calculate will be very much
    the same over time. I felt it would be more straighforward to maintain a
    separate package for the tables as it requires more updating as compared to
    the calculation functions.
    
    - Finally, I wanted to be able to clearly demarcate LICENSE for the PPI tables
    as being CCO (I have made a mistake with the earlier submission and have put
    the PPI tables as MIT license which I have meant for the calculation package) 
    as specified by the developers of the tables.
    
I am aiming to finish the calculation package in the next week which will have a
dependency on the tables package.

I am hoping this is acceptable and sensible approach?

* "Please add a reference for the PPI in the 'Description' field of your DESCRIPTION file in the form
authors (year) <doi:...>
authors (year) <arXiv:...>
authors (year, ISBN:...)
with no space after 'doi:', 'arXiv:' and angle brackets for auto-linking."

The PPI doesn't have publications per se but instead a website by the maintainers
which is the International Poverty Action (IPA). Hence, I referenced their website
on the DESCRIPTION.

I have also made additional updates and changes from previous version based on some
editorial mistakes I've made from previous version:

* I missed adding Ecuador and Pakistan PPI tables. They are now included.

* I cleaned up documentation of each country table to become very informative to
user

* I have changed LICENSE from MIT to CC0 which is more appropriate

I have run checks given all these changes with results below:


## Test environments
* local OS X install, R 3.4.3
* ubuntu 12.04 (on travis-ci), R 3.4.2
* local ubuntu 16.04 install, R 3.4.3
* win-builder (devel and release)
* windows (on appveyor), R 3.4.3

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

## Reverse dependencies
This is a new release, so there are no reverse/downstream dependencies.
