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

## Ghana PPI

gha <- read_xlsx(path = "data-raw/sources/ghana2019.xlsx", sheet = "Look-up Tables", range = "A9:T110")

gha <- data.frame(gha)

gha[ , 2:ncol(gha)] <- round(gha[ , 2:ncol(gha)] * 100, digits = 1)

names(gha) <- c("score", "nl100", "extreme", "nl150", "nl200",
                "ppp100", "ppp190", "ppp320", "ppp550", "ppp800", "ppp1100", "ppp1500", "ppp2170",
                "ppp125", "ppp250", "ppp500",
                "percentile20", "percentile40", "percentile60", "percentile80")

ppiGHA2019 <- gha

usethis::use_data(ppiGHA2019, overwrite = TRUE)


