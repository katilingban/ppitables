################################################################################
#
# Load libraries to use for data extraction from PDF lookup tables from PPI
#
################################################################################

library(readxl)
library(stringr)

################################################################################
#
# PPI tables are now provided as Excel files. This started with Ghana PPI
#
################################################################################

#################################### Ghana PPI #################################

gha <- read_xlsx(path = "data-raw/sources/ghana2019.xlsx",
                 sheet = "Look-up Tables",
                 range = "A9:T110")

gha <- data.frame(gha)

gha[ , 2:ncol(gha)] <- gha[ , 2:ncol(gha)] * 100

names(gha) <- c("score", "nl100", "extreme", "nl150", "nl200",
                "ppp100", "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100",
                "ppp1500", "ppp2170", "ppp125", "ppp250", "ppp500",
                "percentile20", "percentile40", "percentile60", "percentile80")

ppiGHA2019 <- gha

usethis::use_data(ppiGHA2019, overwrite = TRUE)

################################## Mozambique PPI ##############################

moz <- read_xlsx(path = "data-raw/sources/mozambique2019.xlsx",
                 sheet = "Look-up Tables",
                 range = "A9:O110")

moz <- data.frame(moz)

moz[ , 2:ncol(moz)] <- moz[ , 2:ncol(moz)] * 100

names(moz) <- c("score", "nl100", "nl150", "nl200",
                "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100",
                "ppp1500", "ppp2170", "percentile20", "percentile40",
                "percentile60", "percentile80")

ppiMOZ2019 <- moz

usethis::use_data(ppiMOZ2019, overwrite = TRUE)

################################ Myanmar 2019 ##################################

mmr <- read_xlsx(path = "data-raw/sources/myanmar2019.xlsx",
                 sheet = "Look-up Tables",
                 range = "A9:T110")

mmr <- data.frame(mmr)

mmr[ , 2:ncol(mmr)] <- mmr[ , 2:ncol(mmr)] * 100

names(mmr) <- c("score", "nl100", "extreme", "nl150", "nl200",
                "ppp100", "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100",
                "ppp1500", "ppp2170", "ppp125", "ppp250", "ppp500",
                "percentile20", "percentile40", "percentile60", "percentile80")

ppiMMR2019 <- mmr

usethis::use_data(ppiMMR2019, overwrite = TRUE)

