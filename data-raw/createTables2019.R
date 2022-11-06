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
