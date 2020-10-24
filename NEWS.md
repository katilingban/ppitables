# ppitables 0.5.4

This is the ninth CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Indonesia using the new PPI calculation approach developed
by the International Poverty Alliance (IPA) based on data from Indonesia's
SUSENA 2016

* updated `steer` data that serves as an index to the tables to include the new
Indonesia PPI tables

* general documentation updates and general checking updates

# ppitables 0.5.3

This is the eighth CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Malawi using the new PPI calculation approach developed
by the International Poverty Alliance (IPA) based on data from Malawi's 2016/2017
Fourth Integrated Household Survey (IHS4)

* updated `steer` data that serves as an index to the tables to include the new
Malawi PPI tables

* updated `get_table()` to deal with steering file values not being converted
into factors in newest R version

* updated `get_table()` and `find_table()` to deal with deprecation of
`tibble::as.tibble` and `tidyr::gather`

* general documentation updates and general checking updates

* converted tables for countries with the new PPI definitions into tibble format

# ppitables 0.5.2

This is the seventh CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Rwanda using the new PPI calculation approach developed
by the International Poverty Alliance (IPA) based on data from Rwanda's 2016/2017
Integrated Household Living Conditions Survey (EICV5) produced by the National
Institute of Statistics Rwanda (NISR) and the Ministry of Finance and Economic
Planning

* updated `steer` data that serves as an index to the tables to include the new
Rwanda PPI tables

# ppitables 0.5.1

This is the sixth CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Mozambique using the new PPI calculation approach developed
by the International Poverty Alliance (IPA) based on data from the 2014
Inquérito Sobre Orçamento Familiar (IOF) Survey

* new PPI tables for Myanmar using the new PPI calculation 
approach developed by the International Poverty Alliance (IPA) based on data 
from the 2015 Poverty and Living Conditions Survey

* updated `steer` data that serves as an index to the tables to include the new
PPI tables

# ppitables 0.5.0

This is the fifth CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Ghana using the new PPI calculation approach developed by 
the International Poverty Alliance (IPA) based on data from the 2016/2017 Ghana
Living Standards Survey.

* updated `steer` data that serves as an index to the tables to include the new
PPI tables

# ppitables 0.4.0

This is the fourth CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Dominican Republic using the new PPI calculation approach
developed by the International Poverty Alliance (IPA) based on data from the
Encuesta Nacional de Fuerza de Trabajo (ENFT)

* new package hex sticker

* updated `steer` data that serves as an index to the tables to include the new
PPI tables

# ppitables 0.3.0

This is the third CRAN release of `ppitables`. In this release, I added:

* new PPI tables for Kenya and Senegal using the new PPI calculation approach 
developed by the International Poverty Alliance (IPA)

* changed license to MIT

* updated `steer` data that serves as an index to the tables to include the new
PPI tables


# ppitables 0.2.0

This is the second CRAN release of `ppitables`. In this release, I added:

* updates to documentation

* new PPI tables for Ivory Coast, Togo, Philippines and Peru using the new
PPI calculation approach developed by the Innovations for Poverty Action (IPA)

* updated PPI tables for Colombia, Burkina Faso and Zambia

* `find_table()` which allows user to do a search query for specific PPI
tables

* `get_table()` which creates a tidy format data frame of user-specified
PPI tables.


# ppitables 0.1.2
This is an updated release of `ppitables` as part of the CRAN submission process. In this release, I have added examples of usage for each of the country PPI table.

# ppitables 0.1.1
This is an updated release of `ppitables` as part of the CRAN submission process. I have implemented the following changes:

* I have changed nomenclature of PPI tables in the package as suggested. I have also added the naming syntax in the README to describe the nomenclature
accordingly

* I referenced the IPA website in the DESCRIPTION as the developers and maintainers of the PPI tables.

* I missed adding Ecuador and Pakistan PPI tables. They are now included.

* I cleaned up documentation of each country table to become very informative to user

* I have changed LICENSE from MIT to CC0 which is more appropriate

# ppitables 0.1.0
This is the first release of `ppitables`

