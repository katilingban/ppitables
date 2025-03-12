################################################################################
#
# Load libraries to use for data extraction from PDF lookup tables from PPI
#
################################################################################

library(readxl)
library(stringr)
library(tibble)

################################################################################
#
# PPI tables are now provided as Excel files. This started with Ghana PPI
#
################################################################################

## Ghana PPI ###################################################################

gha <- read_xlsx(path = "data-raw/sources/ghana2019.xlsx",
                 sheet = "Look-up Tables",
                 range = "A9:T110")

gha <- data.frame(gha)

gha[ , 2:ncol(gha)] <- gha[ , 2:ncol(gha)] * 100

names(gha) <- c("score", "nl100", "extreme", "nl150", "nl200",
                "ppp100", "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100",
                "ppp1500", "ppp2170", "ppp125", "ppp250", "ppp500",
                "percentile20", "percentile40", "percentile60", "percentile80")

ppiGHA2019 <- tibble::tibble(gha)

usethis::use_data(ppiGHA2019, overwrite = TRUE)

## Mozambique PPI ##############################################################

moz <- read_xlsx(path = "data-raw/sources/mozambique2019.xlsx",
                 sheet = "Look-up Tables",
                 range = "A9:O110")

moz <- data.frame(moz)

moz[ , 2:ncol(moz)] <- moz[ , 2:ncol(moz)] * 100

names(moz) <- c("score", "nl100", "nl150", "nl200",
                "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100",
                "ppp1500", "ppp2170", "percentile20", "percentile40",
                "percentile60", "percentile80")

ppiMOZ2019 <- tibble::tibble(moz)

usethis::use_data(ppiMOZ2019, overwrite = TRUE)

## Myanmar 2019 ################################################################

mmr <- read_xlsx(path = "data-raw/sources/myanmar2019.xlsx",
                 sheet = "Look-up Tables",
                 range = "A9:T110")

mmr <- data.frame(mmr)

mmr[ , 2:ncol(mmr)] <- mmr[ , 2:ncol(mmr)] * 100

names(mmr) <- c("score", "nl100", "extreme", "nl150", "nl200",
                "ppp100", "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100",
                "ppp1500", "ppp2170", "ppp125", "ppp250", "ppp500",
                "percentile20", "percentile40", "percentile60", "percentile80")

ppiMMR2019 <- tibble::tibble(mmr)

usethis::use_data(ppiMMR2019, overwrite = TRUE)

## Rwanda 2019 #################################################################

rwa <- read_xlsx(path = "data-raw/sources/rwanda2019.xlsx",
                 sheet = "Look-up Tables",
                 range = "A10:T111")

rwa <- data.frame(rwa)

rwa[ , 2:ncol(rwa)] <- rwa[ , 2:ncol(rwa)] * 100

names(rwa) <- c("score", "nl100", "extreme", "nl150", "nl200",
                "ppp100", "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100",
                "ppp1500", "ppp2170", "ppp125", "ppp250", "ppp500",
                "percentile20", "percentile40", "percentile60", "percentile80")

ppiRWA2019 <- tibble::tibble(rwa)

usethis::use_data(ppiRWA2019, overwrite = TRUE)

## Malawi 2020 #################################################################

mwi <- read_xlsx(path = "data-raw/sources/malawi2020.xlsx",
                 sheet = "Look-up Tables",
                 range = "B10:Q110")

mwi <- data.frame(mwi)

mwi[ , 2:ncol(mwi)] <- mwi[ , 2:ncol(mwi)] * 100

names(mwi) <- c("score", "nl100", "extreme", "nl150", "nl200",
                "ppp100", "ppp190", "ppp320", "ppp550",
                "ppp125", "ppp250", "ppp500",
                "percentile20", "percentile40", "percentile60", "percentile80")

ppiMWI2020 <- tibble::tibble(mwi)

usethis::use_data(ppiMWI2020, overwrite = TRUE)

## Indonesia 2020 ##############################################################

idn <- read_xlsx(path = "data-raw/sources/indonesia2020.xlsx",
                 sheet = "Look-up Tables",
                 range = "B10:U110")

idn <- data.frame(idn)

idn[ , 2:ncol(idn)] <- idn[ , 2:ncol(idn)] * 100

names(idn) <- c("score", "nl100", "extreme", "nl150", "nl200",
                "ppp100", "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100", "ppp1500", "ppp2170",
                "ppp125", "ppp250", "ppp500",
                "percentile20", "percentile40", "percentile60", "percentile80")

ppiIDN2020 <- tibble::tibble(idn)

usethis::use_data(ppiIDN2020, overwrite = TRUE)

## Tanzania 2022 ###############################################################

tza <- read_xlsx(path = "data-raw/sources/tanzania2022.xlsx",
                 sheet = "Look-up Tables",
                 range = "A10:U110")

tza <- data.frame(tza)

tza[ , 2:ncol(tza)] <- tza[ , 2:ncol(tza)] * 100

names(tza) <- c("score", "nl_upper", "nl_lower", "extreme", "nl150", "nl200",
                "ppp100", "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100",
                "ppp1500", "ppp2170", "ppp125", "ppp250", "ppp500",
                "percentile20", "percentile40", "percentile60", "percentile80")

ppiTZA2022 <- tibble::tibble(tza)

usethis::use_data(ppiTZA2022, overwrite = TRUE)

## Uganda 2022 ###############################################################

uga <- read_xlsx(path = "data-raw/sources/uganda2022.xlsx",
                 sheet = "Look-up Tables",
                 range = "B11:N111")

uga <- data.frame(uga)

uga[ , 2:ncol(uga)] <- uga[ , 2:ncol(uga)] * 100

names(uga) <- c("score", "ppp100", "ppp190", "ppp320", "ppp550", "ppp800",
                "ppp1100", "ppp1500", "ppp2170",
                "percentile20", "percentile40", "percentile60", "percentile80")

ppiUGA2022 <- tibble::tibble(uga)

usethis::use_data(ppiUGA2022, overwrite = TRUE)


## Benin PPI ###################################################################

ben11 <- read_xlsx(
  path = "data-raw/sources/benin2022.xlsx",
  sheet = "Look-up Tables 11Q",
  range = "A9:N110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(ben11) <- c(
  "score", "nl100", "nl150", "nl200",
  "ppp190", "ppp320", "ppp550", "ppp215", "ppp365", "ppp685",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiBEN2022_11q <- ben11

usethis::use_data(ppiBEN2022_11q, overwrite = TRUE, compress = "xz")


ben6 <- read_xlsx(
  path = "data-raw/sources/benin2022.xlsx",
  sheet = "Look-up Tables 6Q",
  range = "A9:N110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(ben6) <- c(
  "score", "nl100", "nl150", "nl200",
  "ppp190", "ppp320", "ppp550", "ppp215", "ppp365", "ppp685",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiBEN2022_6q <- ben6

usethis::use_data(ppiBEN2022_6q, overwrite = TRUE, compress = "xz")


## Bolivia PPI #################################################################

bol <- read_xlsx(
  path = "data-raw/sources/bolivia2023.xlsx",
  sheet = "Look-up Table",
  range = "B9:P110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(bol) <- c(
  "score", "nl100", "nl_extreme", "nl150", "nl200",
  "ppp190", "ppp320", "ppp550", "ppp215", "ppp365", "ppp685",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiBOL2023 <- bol

usethis::use_data(ppiBOL2023, overwrite = TRUE, compress = "xz")


## Burkina Faso PPI ############################################################

bfa <- read_xlsx(
  path = "data-raw/sources/burkinafaso2023.xlsx",
  sheet = "Look-up Table",
  range = "B9:O110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(bfa) <- c(
  "score", "nl100", "nl150", "nl200",
  "ppp215", "ppp365", "ppp685", "ppp190", "ppp320", "ppp550",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiBFA2023 <- bfa

usethis::use_data(ppiBFA2023, overwrite = TRUE, compress = "xz")


## Cambodia PPI ################################################################

khm <- read_xlsx(
  path = "data-raw/sources/cambodia2023.xlsx",
  sheet = "Look-up Tables",
  range = "A9:N110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(khm) <- c(
  "score", "nl100", "nl150", "nl200",
  "ppp550", "ppp800", "ppp1100", "ppp1500", "ppp2170", "ppp685",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiKHM2023 <- khm

usethis::use_data(ppiKHM2023, overwrite = TRUE, compress = "xz")


## Ecuador PPI #################################################################

ecu <- read_xlsx(
  path = "data-raw/sources/ecuador2022.xlsx",
  sheet = "Look-up Table (10Q)",
  range = "A9:T110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Lines`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(ecu) <- c(
  "score", "nl100", "nl_extreme", "nl150", "nl200",
  "ppp215", "ppp365", "ppp685", "ppp100", "ppp190", "ppp320", "ppp550",
  "ppp800", "ppp1100", "ppp1500", "ppp2170",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiECU2022 <- ecu

usethis::use_data(ppiECU2022, overwrite = TRUE, compress = "xz")


## El Salvador PPI #############################################################

slv <- read_xlsx(
  path = "data-raw/sources/elsalvador2021.xlsx",
  sheet = "Look-up Tables (10Q)",
  range = "B9:V110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(slv) <- c(
  "score", "nl100", "nl_extreme",
  "ppp215", "ppp365", "ppp685", "ppp100", "ppp190", "ppp320", "ppp550",
  "ppp800", "ppp1100", "ppp1500", "ppp2170", "ppp125", "ppp250", "ppp500",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiSLV2021 <- slv

usethis::use_data(ppiSLV2021, overwrite = TRUE, compress = "xz")


## Ethiopia PPI ################################################################

eth <- read_xlsx(
  path = "data-raw/sources/ethiopia2023.xlsx",
  sheet = "Look-up Tables",
  range = "A9:T110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(eth) <- c(
  "score", "nl100", "nl_extreme", "nl150", "nl200",
  "ppp100", "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100", "ppp1500",
  "ppp2170", "ppp125", "ppp250", "ppp500",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiETH2023 <- eth

usethis::use_data(ppiETH2023, overwrite = TRUE, compress = "xz")


## Guatemala PPI ###############################################################

gtm <- read_xlsx(
  path = "data-raw/sources/guatemala2023.xlsx",
  sheet = "Look-up Tables",
  range = "B9:L110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `$1.90/day 2011 PPP \r\n(Bottom 7th Percentile)*`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(gtm) <- c(
  "score", "ppp190", "ppp320", "ppp550", "ppp215", "ppp365", "ppp685",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiGTM2023 <- gtm

usethis::use_data(ppiGTM2023, overwrite = TRUE, compress = "xz")


## Honduras PPI ################################################################

hnd <- read_xlsx(
  path = "data-raw/sources/honduras2023.xlsx",
  sheet = "Look-up Table",
  range = "B9:S110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(hnd) <- c(
  "score", "nl100", "nl_extreme",
  "ppp100", "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100", "ppp1500",
  "ppp2170", "ppp125", "ppp250", "ppp500",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiHND2023 <- hnd

usethis::use_data(ppiHND2023, overwrite = TRUE, compress = "xz")


## Indonesia PPI ###############################################################

idn <- read_xlsx(
  path = "data-raw/sources/indonesia2023.xlsx",
  sheet = "Look-up Table",
  range = "A9:J110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(idn) <- c(
  "score", "nl100", "ppp365", "ppp685", "ppp320", "ppp550",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiIDN2023 <- idn

usethis::use_data(ppiIDN2023, overwrite = TRUE, compress = "xz")


## Papua New Guinea PPI ########################################################

png <- read_xlsx(
  path = "data-raw/sources/papuanewguinea2023.xlsx",
  sheet = "Look-up Tables",
  range = "B9:J110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `Bottom 20th percentile WI`:`Bottom 80th percentile WI Urban/Rural`,
      .fns = ~.x * 100
    )
  )

names(png) <- c(
  "score",
  "percentile20_wi", "percentile40_wi", "percentile60_wi", "percentile80_wi",
  "percentile20_wi_ur", "percentile40_wi_ur", "percentile60_wi_ur",
  "percentile80_wi_ur"
)

ppiPNG2023 <- png

usethis::use_data(ppiPNG2023, overwrite = TRUE, compress = "xz")


## Papua New Guinea PPI ########################################################

phl <- read_xlsx(
  path = "data-raw/sources/philippines2023.xlsx",
  sheet = "Look-up Table",
  range = "B9:N110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(phl) <- c(
  "score",
  "nl100", "food", "ppp215", "ppp365", "ppp685", "ppp190", "ppp320", "ppp550",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiPHL2023 <- phl

usethis::use_data(ppiPHL2023, overwrite = TRUE, compress = "xz")


## South Africa PPI ############################################################

zaf <- read_xlsx(
  path = "data-raw/sources/southafrica2023.xlsx",
  sheet = "Look-up Tables",
  range = "B9:G110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `Wealth Index Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(zaf) <- c(
  "score",
  "wealth_index", "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiZAF2023 <- zaf

usethis::use_data(ppiZAF2023, overwrite = TRUE, compress = "xz")


## Togo PPI ####################################################################

tgo <- read_xlsx(
  path = "data-raw/sources/togo2023.xlsx",
  sheet = "Look-up Table",
  range = "A9:N110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(tgo) <- c(
  "score",
  "nl100", "nl150", "nl200",
  "ppp215", "ppp365", "ppp685", "ppp190", "ppp320", "ppp550",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiTGO2023 <- tgo

usethis::use_data(ppiTGO2023, overwrite = TRUE, compress = "xz")


## Vietnam PPI #################################################################

vnm <- read_xlsx(
  path = "data-raw/sources/vietnam2023.xlsx",
  sheet = "Look-up Table",
  range = "B9:F110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `Bottom 20th Percentile`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(vnm) <- c(
  "score",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiVNM2023 <- vnm

usethis::use_data(ppiVNM2023, overwrite = TRUE, compress = "xz")


## Malawi PPI ##################################################################

mwi <- read_xlsx(
  path = "data-raw/sources/malawi2023.xlsx",
  sheet = "Look-up Tables",
  range = "A9:M110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `National Poverty Line`:`Bottom 80th Percentile`,
      .fns = ~.x * 100
    )
  )

names(mwi) <- c(
  "score", "nl100", "food",
  "ppp215", "ppp365", "ppp685", "ppp190", "ppp320", "ppp550",
  "percentile20", "percentile40", "percentile60", "percentile80"
)

ppiMWI2023 <- mwi

usethis::use_data(ppiMWI2023, overwrite = TRUE, compress = "xz")


## Mozambique PPI ##############################################################

moz <- read_xlsx(
  path = "data-raw/sources/mozambique2024.xlsx",
  sheet = "Look-up Tables 10Q",
  range = "B9:G110"
) |>
  dplyr::mutate(
    dplyr::across(
      .cols = `Bottom 20th percentile Wealth Index`:`Bottom 80th percentile Wealth Index`,
      .fns = ~.x * 100
    )
  )

names(moz) <- c(
  "score",
  "percentile20", "percentile40", "percentile50", "percentile60", "percentile80"
)

ppiMOZ2024 <- moz

usethis::use_data(ppiMOZ2024, overwrite = TRUE, compress = "xz")


