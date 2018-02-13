################################################################################
#
# Load libraries to use for data extraction from PDF lookup tables from PPI
#
################################################################################

library(pdftools)
library(stringr)

################################################################################
#
# Function for extracting data
#
################################################################################

get_ppi_table <- function(pdf, n, limits, expand = TRUE) {

  ppi <- pdf_text(pdf = pdf)
  temp <- str_split(ppi[n], pattern = "\n")
  temp <- temp[[1]][limits]

  ppiDF <- NULL

  if(expand == TRUE) {
    for(i in 1:length(temp)) {
      temp_row <- str_replace(temp[i], pattern = " - ", replacement = "-")
      temp_row <- str_replace_all(temp[i], pattern = "%", replacement = "")
      x <- str_split(temp_row, pattern = " ", simplify = TRUE)
      x <- x[x != ""]
      x <- as.numeric(x)

      tempDF <- data.frame(matrix(data = NA, nrow = 5, ncol = length(x)))

      for(j in 1:5) {
        tempDF[j, ] <- x
      }
      ppiDF <- data.frame(rbind(ppiDF, tempDF))
    }
    ppiDF <- data.frame(rbind(ppiDF, ppiDF[100, ]))
  }

  if(expand == FALSE) {
    for(i in 1:length(temp)) {
      temp_row <- str_replace(temp[i], pattern = " - ", replacement = "-")
      temp_row <- str_replace_all(temp[i], pattern = "%", replacement = "")
      x <- str_split(temp_row, pattern = " ", simplify = TRUE)
      x <- x[x != ""]
      x <- as.numeric(x)
      ppiDF <- data.frame(rbind(ppiDF, x))
    }
  }
  return(ppiDF)
}



################################################################################
#
# Afghanistan
#
################################################################################

afg <- pdf_text(pdf = "data-raw/pdf/afghanistan.pdf")
temp <- str_split(afg[2], "\n")
temp <- temp[[1]][8:27]

afgDF1 <- NULL

for(i in 1:length(temp)) {

  x <- str_split(temp[i], pattern = " ", simplify = TRUE)
  x <- x[x != ""]
  x <- as.numeric(x)

  tempDF <- NULL

  for(j in 1:5) {

    tempDF <- data.frame(rbind(tempDF, x))

  }

  afgDF1 <- data.frame(rbind(afgDF1, tempDF))
}

afgDF1 <- data.frame(rbind(afgDF1, afgDF1[100, ]))


temp <- strsplit(afg[3], "\n")
temp <- temp[[1]][4:23]

afgDF2 <- NULL

for(i in 1:length(temp)) {

  x <- str_split(temp[i], pattern = " ", simplify = TRUE)
  x <- x[x != ""]
  x <- as.numeric(x)

  tempDF <- NULL

  for(j in 1:5) {

    tempDF <- data.frame(rbind(tempDF, x))

  }

  afgDF2 <- data.frame(rbind(afgDF2, tempDF))
}

afgDF2 <- data.frame(rbind(afgDF2, afgDF2[100, ]))

afgDF <- data.frame(afgDF1, afgDF2[ , 2:3])

names(afgDF) <- c("score", "nl", "nu150", "nu200", "extreme", "ppp125", "ppp250")

afgDF$score <- 0:100

row.names(afgDF) <- 0:100

ppiMatrixAFG <- afgDF

devtools::use_data(ppiMatrixAFG, overwrite = TRUE)


################################################################################
#
# Angola
#
################################################################################

agoDF <- get_ppi_table(pdf = "data-raw/pdf/angola.pdf", n = 4, limits = 5:24)
names(agoDF) <- c("score", "nl100", "nl150", "nl200", "half100", "ppp125",
                  "ppp200", "ppp250", "ppp500")
agoDF$score <- 0:100
row.names(agoDF) <- 0:100
ppiMatrixAGO <- agoDF
devtools::use_data(ppiMatrixAGO, overwrite = TRUE)


################################################################################
#
# Bangladesh
#
################################################################################

bgdDF1 <- get_ppi_table(pdf = "data-raw/pdf/bangladesh.pdf", n = 3, limits = 6:25)
bgdDF2 <- get_ppi_table(pdf = "data-raw/pdf/bangladesh.pdf", n = 4, limits = 6:25)
bgdDF <- data.frame(bgdDF1, bgdDF2[ , 2:6])
names(bgdDF) <- c("score", "nl", "nu100", "nu150", "nu200", "extreme", "ppp125",
                  "ppp175", "ppp200", "ppp250")
bgdDF$score <- 0:100
row.names(bgdDF) <- 0:100
ppiMatrixBGD <- bgdDF
devtools::use_data(ppiMatrixBGD, overwrite = TRUE)


################################################################################
#
# Benin
#
################################################################################

benDF <- get_ppi_table(pdf = "data-raw/pdf/benin.pdf", n = 2, limits = 6:25)
names(benDF) <- c("score", "nl100", "nl150", "nl200", "extreme", "ppp125", "ppp250")
benDF$score <- 0:100
row.names(benDF) <- 0:100
ppiMatrixBEN <- benDF
devtools::use_data(ppiMatrixBEN, overwrite = TRUE)


################################################################################
#
# Bolivia
#
################################################################################

bolDF1 <- get_ppi_table(pdf = "data-raw/pdf/bolivia.pdf", n = 3, limits = 7:26)
bolDF2 <- get_ppi_table(pdf = "data-raw/pdf/bolivia.pdf", n = 4, limits = 8:27)
bolDF <- data.frame(bolDF1, bolDF2[ , 2:6])
names(bolDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "half100",
                  "ppp125", "ppp200", "ppp250", "ppp500", "ppp844")
bolDF$score <- 0:100
row.names(bolDF) <- 0:100
ppiMatrixBOL <- bolDF
devtools::use_data(ppiMatrixBOL, overwrite = TRUE)


################################################################################
#
# Brazil
#
################################################################################

braDF1 <- get_ppi_table(pdf = "data-raw/pdf/brazil.pdf", n = 2, limits = 8:27)
braDF2 <- get_ppi_table(pdf = "data-raw/pdf/brazil.pdf", n = 3, limits = 8:27)
braDF3 <- get_ppi_table(pdf = "data-raw/pdf/brazil.pdf", n = 4, limits = 7:26)
braDF <- data.frame(braDF1, braDF2[ , 2:7], braDF3[ , 2:7])
braDF <- braDF[ , c(1:2, 4, 6, 8, 10, 12, 14, 16, 18)]

names(braDF) <- c("score",
                  "belowHalfWage",
                  "belowQtrWage",
                  "belowOneWage",
                  "belowTwoWage",
                  "extreme",
                  "ppp125",
                  "ppp250",
                  "ppp375",
                  "ppp500")

braDF$score <- 0:100
row.names(braDF) <- 0:100

ppiMatrixBRA <- braDF
devtools::use_data(ppiMatrixBRA, overwrite = TRUE)


################################################################################
#
# Burkina Faso
#
################################################################################

bfaDF <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 4, limits = 6:39, expand = FALSE)
names(bfaDF) <- rep(c("score", "nl100"), 3)

bfaDF <- rbind(bfaDF[,1:2], bfaDF[,3:4], bfaDF[,5:6])
bfaDF <- bfaDF[1:101, ]

nl150 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 6, limits = 6:39, expand = FALSE)
names(nl150) <- rep(c("score", "nl150"), 3)

nl150 <- rbind(nl150[,1:2], nl150[,3:4], nl150[,5:6])
nl150 <- nl150[1:101, ]

nl200 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 8, limits = 6:39, expand = FALSE)
names(nl200) <- rep(c("score", "nl200"), 3)

nl200 <- rbind(nl200[,1:2], nl200[,3:4], nl200[,5:6])
nl200 <- nl200[1:101, ]

ppp100 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 10, limits = 6:39, expand = FALSE)
names(ppp100) <- rep(c("score", "ppp100"), 3)

ppp100 <- rbind(ppp100[,1:2], ppp100[,3:4], ppp100[,5:6])
ppp100 <- ppp100[1:101, ]

ppp190 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 12, limits = 6:39, expand = FALSE)
names(ppp190) <- rep(c("score", "ppp190"), 3)

ppp190 <- rbind(ppp190[,1:2], ppp190[,3:4], ppp190[,5:6])
ppp190 <- ppp190[1:101, ]

ppp320 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 14, limits = 6:39, expand = FALSE)
names(ppp320) <- rep(c("score", "ppp320"), 3)

ppp320 <- rbind(ppp320[,1:2], ppp320[,3:4], ppp320[,5:6])
ppp320 <- ppp320[1:101, ]

ppp550 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 16, limits = 6:39, expand = FALSE)
names(ppp550) <- rep(c("score", "ppp550"), 3)

ppp550 <- rbind(ppp550[,1:2], ppp550[,3:4], ppp550[,5:6])
ppp550 <- ppp550[1:101, ]

ppp125 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 18, limits = 6:39, expand = FALSE)
names(ppp125) <- rep(c("score", "ppp125"), 3)

ppp125 <- rbind(ppp125[,1:2], ppp125[,3:4], ppp125[,5:6])
ppp125 <- ppp125[1:101, ]

ppp250 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 20, limits = 6:39, expand = FALSE)
names(ppp250) <- rep(c("score", "ppp250"), 3)

ppp250 <- rbind(ppp250[,1:2], ppp250[,3:4], ppp250[,5:6])
ppp250 <- ppp250[1:101, ]

ppp500 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 22, limits = 6:39, expand = FALSE)
names(ppp500) <- rep(c("score", "ppp500"), 3)

ppp500 <- rbind(ppp500[,1:2], ppp500[,3:4], ppp500[,5:6])
ppp500 <- ppp500[1:101, ]

percentile20 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 24, limits = 6:39, expand = FALSE)
names(percentile20) <- rep(c("score", "percentile20"), 3)

percentile20 <- rbind(percentile20[,1:2], percentile20[,3:4], percentile20[,5:6])
percentile20 <- percentile20[1:101, ]

percentile40 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 26, limits = 6:39, expand = FALSE)
names(percentile40) <- rep(c("score", "percentile40"), 3)

percentile40 <- rbind(percentile40[,1:2], percentile40[,3:4], percentile40[,5:6])
percentile40 <- percentile40[1:101, ]

percentile60 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 28, limits = 6:39, expand = FALSE)
names(percentile60) <- rep(c("score", "percentile60"), 3)

percentile60 <- rbind(percentile60[,1:2], percentile60[,3:4], percentile60[,5:6])
percentile60 <- percentile60[1:101, ]

percentile80 <- get_ppi_table(pdf = "data-raw/pdf/burkina_faso.pdf", n = 30, limits = 6:39, expand = FALSE)
names(percentile80) <- rep(c("score", "percentile80"), 3)

percentile80 <- rbind(percentile80[,1:2], percentile80[,3:4], percentile80[,5:6])
percentile80 <- percentile80[1:101, ]

#bfaDF <- merge(bfaDF, nl100)
bfaDF <- merge(bfaDF, nl150)
bfaDF <- merge(bfaDF, nl200)
bfaDF <- merge(bfaDF, ppp125)
bfaDF <- merge(bfaDF, ppp250)
bfaDF <- merge(bfaDF, ppp500)
bfaDF <- merge(bfaDF, ppp100)
bfaDF <- merge(bfaDF, ppp190)
bfaDF <- merge(bfaDF, ppp320)
bfaDF <- merge(bfaDF, ppp550)
bfaDF <- merge(bfaDF, percentile20)
bfaDF <- merge(bfaDF, percentile40)
bfaDF <- merge(bfaDF, percentile60)
bfaDF <- merge(bfaDF, percentile80)

ppiMatrixBFA <- bfaDF

devtools::use_data(ppiMatrixBFA, overwrite = TRUE)


################################################################################
#
# Cambodia
#
################################################################################

khmDF <- get_ppi_table(pdf = "data-raw/pdf/cambodia.pdf", n = 3, limits = 9:28)
names(khmDF) <- c("score", "nl100", "nl150", "nl200", "median", "ppp125", "ppp200",
                  "ppp250", "ppp500")
khmDF$score <- 0:100
row.names(khmDF) <- 0:100

ppiMatrixKHM_wb <- khmDF
devtools::use_data(ppiMatrixKHM_wb, overwrite = TRUE)

khmDF <- get_ppi_table(pdf = "data-raw/pdf/cambodia.pdf", n = 4, limits = 7:26)
names(khmDF) <- c("score", "nl100", "nl150", "nl200", "ppp125", "ppp250")
khmDF$score <- 0:100
row.names(khmDF) <- 0:100

ppiMatrixKHM <- khmDF
devtools::use_data(ppiMatrixKHM, overwrite = TRUE)

khmDF <- get_ppi_table(pdf = "data-raw/pdf/cambodia.pdf", n = 5, limits = 9:28)
names(khmDF) <- c("score", "nl100", "nl150", "nl200", "median", "ppp125", "ppp200", "ppp250", "ppp500")
khmDF$score <- 0:100
row.names(khmDF) <- 0:100

ppiMatrixKHM_gov <- khmDF
devtools::use_data(ppiMatrixKHM_gov, overwrite = TRUE)


################################################################################
#
# Cameroon
#
################################################################################

cmrDF <- get_ppi_table(pdf = "data-raw/pdf/cameroon.pdf", n = 4, limits = 5:24)
names(cmrDF) <- c("score", "nl100", "nl150", "nl200", "extreme", "ppp125", "ppp200", "ppp250")
cmrDF$score <- 0:100
row.names(cmrDF) <- 0:100

ppiMatrixCMR <- cmrDF
devtools::use_data(ppiMatrixCMR, overwrite = TRUE)


################################################################################
#
# Colombia
#
################################################################################

colDF1 <- get_ppi_table(pdf = "data-raw/pdf/colombia.pdf", n = 2, limits = 8:27)
colDF2 <- get_ppi_table(pdf = "data-raw/pdf/colombia.pdf", n = 3, limits = 8:27)
colDF3 <- get_ppi_table(pdf = "data-raw/pdf/colombia.pdf", n = 4, limits = 6:25)
colDF <- data.frame(colDF1, colDF2[ , 2:6], colDF3[ , 2:3])
names(colDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "half100",
                  "ppp125", "ppp250", "ppp375", "ppp500", "ppp190", "ppp310")
colDF$score <- 0:100
row.names(colDF) <- 0:100

ppiMatrixCOL_a <- colDF
devtools::use_data(ppiMatrixCOL_a, overwrite = TRUE)

colDF4 <- get_ppi_table(pdf = "data-raw/pdf/colombia.pdf", n = 5, limits = 9:28)
colDF5 <- get_ppi_table(pdf = "data-raw/pdf/colombia.pdf", n = 6, limits = 7:26)
colDF <- data.frame(colDF4, colDF5[ , 2:6])
names(colDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "extreme", "ppp125",
                  "ppp250", "ppp375", "ppp500")
colDF$score <- 0:100
row.names(colDF) <- 0:100

ppiMatrixCOL <- colDF
devtools::use_data(ppiMatrixCOL, overwrite = TRUE)


################################################################################
#
# Dominican Republic
#
################################################################################

domDF1 <- get_ppi_table(pdf = "data-raw/pdf/dominican_republic.pdf", n = 2, limits = 6:25)
domDF1 <- domDF1[ , c(1:2, 4)]

domDF2 <- get_ppi_table(pdf = "data-raw/pdf/dominican_republic.pdf", n = 3, limits = 6:25)
domDF2 <- domDF2[ , c(1:2, 4)]

domDF3 <- get_ppi_table(pdf = "data-raw/pdf/dominican_republic.pdf", n = 4, limits = 6:25)
domDF3 <- domDF3[ , c(1:2, 4)]

domDF4 <- get_ppi_table(pdf = "data-raw/pdf/dominican_republic.pdf", n = 5, limits = 6:25)
domDF4 <- domDF4[ , c(1:2, 4)]

domDF5 <- get_ppi_table(pdf = "data-raw/pdf/dominican_republic.pdf", n = 6, limits = 6:25)
domDF5 <- domDF5[ , c(1:2, 4)]

domDF <- data.frame(domDF1, domDF2[, 2:3], domDF3[, 2:3], domDF4[, 2:3], domDF5[, 2:3])
names(domDF) <- c("score", "nl50", "nl75", "nl100", "nl150", "extreme", "nl200",
                  "ppp125", "ppp250", "ppp375", "ppp500")
domDF$score <- 0:100
row.names(domDF) <- 0:100

ppiMatrixDOM <- domDF
devtools::use_data(ppiMatrixDOM, overwrite = TRUE)


################################################################################
#
# Ghana
#
################################################################################
#
# New-definition poverty lines and 2005 PPP and 2011 PPP (deflated with Ghana's CPI)
#
ghaDF1 <- get_ppi_table(pdf = "data-raw/pdf/ghana.pdf", n = 3, limits = 9:28)
ghaDF2 <- get_ppi_table(pdf = "data-raw/pdf/ghana.pdf", n = 4, limits = 7:26)
ghaDF3 <- get_ppi_table(pdf = "data-raw/pdf/ghana.pdf", n = 5, limits = 7:26)
ghaDF <- data.frame(ghaDF1, ghaDF2[ , 2:6], ghaDF3[ , 2:3])
names(ghaDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "half100", "ppp125",
                  "ppp200", "ppp250", "ppp375", "ppp500", "ppp190", "ppp310")
ghaDF$score <- 0:100
row.names(ghaDF) <- 0:100
ppiMatrixGHA_a <- ghaDF
devtools::use_data(ppiMatrixGHA_a, overwrite = TRUE)
#
# New definition 2005 PPP and 2011 poverty lines (deflated with the change in
# 100% of national poverty line)
#
ghaDF1 <- get_ppi_table(pdf = "data-raw/pdf/ghana.pdf", n = 6, limits = 7:26)
ghaDF2 <- get_ppi_table(pdf = "data-raw/pdf/ghana.pdf", n = 7, limits = 7:26)
ghaDF <- data.frame(ghaDF1, ghaDF2[ , 2:3])
names(ghaDF) <- c("score", "ppp125", "ppp200", "ppp250", "ppp375", "ppp500", "ppp190", "ppp310")
ghaDF$score <- 0:100
row.names(ghaDF) <- 0:100
ppiMatrixGHA_b <- ghaDF
devtools::use_data(ppiMatrixGHA_b, overwrite = TRUE)
#
# Legacy definition poverty lines
#
ghaDF <- get_ppi_table(pdf = "data-raw/pdf/ghana.pdf", n = 8, limits = 9:28)
names(ghaDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "ppp125", "ppp250", "ppp375")
ghaDF$score <- 0:100
row.names(ghaDF) <- 0:100
ppiMatrixGHA <- ghaDF
devtools::use_data(ppiMatrixGHA, overwrite = TRUE)


################################################################################
#
# Kenya
#
################################################################################

kenDF1 <- get_ppi_table(pdf = "data-raw/pdf/kenya.pdf", n = 2, limits = 5:24)
kenDF2 <- get_ppi_table(pdf = "data-raw/pdf/kenya.pdf", n = 3, limits = 7:26)
kenDF3 <- get_ppi_table(pdf = "data-raw/pdf/kenya.pdf", n = 4, limits = 7:26)
kenDF <- data.frame(kenDF1, kenDF2[ , 2:5], kenDF3[ , 2:3])
names(kenDF) <- c("score", "nlFood", "nl100", "nl150", "extreme", "ppp125",
                  "ppp250", "ppp400", "ppp844", "ppp190", "ppp310")
kenDF$score <- 0:100
row.names(kenDF) <- 0:100
ppiMatrixKEN <- kenDF
devtools::use_data(ppiMatrixKEN, overwrite = TRUE)


################################################################################
#
# Madagascar
#
################################################################################

mdgDF <- get_ppi_table(pdf = "data-raw/pdf/madagascar.pdf", n = 3, limits = 10:29)
names(mdgDF) <- c("score", "nlFood", "ppp100", "nl150", "nl200", "half100",
                  "ppp125", "ppp200", "ppp250", "ppp500")
mdgDF$score <- 0:100
row.names(mdgDF) <- 0:100
ppiMatrixMDG <- mdgDF
devtools::use_data(ppiMatrixMDG, overwrite = TRUE)


################################################################################
#
# Mozambique
#
################################################################################

moz <- pdf_text(pdf = "data-raw/pdf/mozambique.pdf")
temp <- str_split(moz[3], "\n")
temp <- temp[[1]][5:24]

mozDF <- get_ppi_table(pdf = "data-raw/pdf/mozambique.pdf", n = 3, limits = 5:24)
names(mozDF) <- c("score", "ppp100", "nl150", "nl200", "extreme", "ppp125", "ppp250")
mozDF$score <- 0:100
row.names(mozDF) <- 0:100
ppiMatrixMOZ <- mozDF
devtools::use_data(ppiMatrixMOZ, overwrite = TRUE)


################################################################################
#
# Zambia
#
################################################################################

zmb <- pdf_text(pdf = "data-raw/pdf/zambia.pdf")
temp <- str_split(zmb[4], "\n")
temp <- temp[[1]][6:39]

x <- str_split(temp[1], pattern = " ", simplify = TRUE)
x <- x[x != ""]
x <- as.numeric(x)

zmbDF <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 4, limits = 6:39, expand = FALSE)
names(zmbDF) <- rep(c("score", "nlFood"), 3)

zmbDF <- rbind(zmbDF[,1:2], zmbDF[,3:4], zmbDF[,5:6])
zmbDF <- zmbDF[1:101, ]

nl100 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 6, limits = 6:39, expand = FALSE)
names(nl100) <- rep(c("score", "nl100"), 3)

nl100 <- rbind(nl100[,1:2], nl100[,3:4], nl100[,5:6])
nl100 <- nl100[1:101, ]

nl150 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 8, limits = 6:39, expand = FALSE)
names(nl150) <- rep(c("score", "nl150"), 3)

nl150 <- rbind(nl150[,1:2], nl150[,3:4], nl150[,5:6])
nl150 <- nl150[1:101, ]

nl200 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 10, limits = 6:39, expand = FALSE)
names(nl200) <- rep(c("score", "nl200"), 3)

nl200 <- rbind(nl200[,1:2], nl200[,3:4], nl200[,5:6])
nl200 <- nl200[1:101, ]

ppp100 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 12, limits = 6:39, expand = FALSE)
names(ppp100) <- rep(c("score", "ppp100"), 3)

ppp100 <- rbind(ppp100[,1:2], ppp100[,3:4], ppp100[,5:6])
ppp100 <- ppp100[1:101, ]

ppp190 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 14, limits = 6:39, expand = FALSE)
names(ppp190) <- rep(c("score", "ppp190"), 3)

ppp190 <- rbind(ppp190[,1:2], ppp190[,3:4], ppp190[,5:6])
ppp190 <- ppp190[1:101, ]

ppp320 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 16, limits = 6:39, expand = FALSE)
names(ppp320) <- rep(c("score", "ppp320"), 3)

ppp320 <- rbind(ppp320[,1:2], ppp320[,3:4], ppp320[,5:6])
ppp320 <- ppp320[1:101, ]

ppp550 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 18, limits = 6:39, expand = FALSE)
names(ppp550) <- rep(c("score", "ppp550"), 3)

ppp550 <- rbind(ppp550[,1:2], ppp550[,3:4], ppp550[,5:6])
ppp550 <- ppp550[1:101, ]

ppp125 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 20, limits = 6:39, expand = FALSE)
names(ppp125) <- rep(c("score", "ppp125"), 3)

ppp125 <- rbind(ppp125[,1:2], ppp125[,3:4], ppp125[,5:6])
ppp125 <- ppp125[1:101, ]

ppp250 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 22, limits = 6:39, expand = FALSE)
names(ppp250) <- rep(c("score", "ppp250"), 3)

ppp250 <- rbind(ppp250[,1:2], ppp250[,3:4], ppp250[,5:6])
ppp250 <- ppp250[1:101, ]

ppp500 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 24, limits = 6:39, expand = FALSE)
names(ppp500) <- rep(c("score", "ppp500"), 3)

ppp500 <- rbind(ppp500[,1:2], ppp500[,3:4], ppp500[,5:6])
ppp500 <- ppp500[1:101, ]

percentile20 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 26, limits = 6:39, expand = FALSE)
names(percentile20) <- rep(c("score", "percentile20"), 3)

percentile20 <- rbind(percentile20[,1:2], percentile20[,3:4], percentile20[,5:6])
percentile20 <- percentile20[1:101, ]

percentile40 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 28, limits = 6:39, expand = FALSE)
names(percentile40) <- rep(c("score", "percentile40"), 3)

percentile40 <- rbind(percentile40[,1:2], percentile40[,3:4], percentile40[,5:6])
percentile40 <- percentile40[1:101, ]

percentile60 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 30, limits = 6:39, expand = FALSE)
names(percentile60) <- rep(c("score", "percentile60"), 3)

percentile60 <- rbind(percentile60[,1:2], percentile60[,3:4], percentile60[,5:6])
percentile60 <- percentile60[1:101, ]

percentile80 <- get_ppi_table(pdf = "data-raw/pdf/zambia.pdf", n = 32, limits = 6:39, expand = FALSE)
names(percentile80) <- rep(c("score", "percentile80"), 3)

percentile80 <- rbind(percentile80[,1:2], percentile80[,3:4], percentile80[,5:6])
percentile80 <- percentile80[1:101, ]

zmbDF <- merge(zmbDF, nl100)
zmbDF <- merge(zmbDF, nl150)
zmbDF <- merge(zmbDF, nl200)
zmbDF <- merge(zmbDF, ppp125)
zmbDF <- merge(zmbDF, ppp250)
zmbDF <- merge(zmbDF, ppp500)
zmbDF <- merge(zmbDF, ppp100)
zmbDF <- merge(zmbDF, ppp190)
zmbDF <- merge(zmbDF, ppp320)
zmbDF <- merge(zmbDF, ppp550)
zmbDF <- merge(zmbDF, percentile20)
zmbDF <- merge(zmbDF, percentile40)
zmbDF <- merge(zmbDF, percentile60)
zmbDF <- merge(zmbDF, percentile80)

ppiMatrixZMB <- zmbDF

devtools::use_data(ppiMatrixZMB, overwrite = TRUE)
