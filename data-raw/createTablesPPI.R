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

ppiAFG2012 <- afgDF

devtools::use_data(ppiAFG2012, overwrite = TRUE)


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
ppiAGO2015 <- agoDF
devtools::use_data(ppiAGO2015, overwrite = TRUE)


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
ppiBGD2013 <- bgdDF
devtools::use_data(ppiBGD2013, overwrite = TRUE)


################################################################################
#
# Benin
#
################################################################################

benDF <- get_ppi_table(pdf = "data-raw/pdf/benin.pdf", n = 2, limits = 6:25)
names(benDF) <- c("score", "nl100", "nl150", "nl200", "extreme", "ppp125", "ppp250")
benDF$score <- 0:100
row.names(benDF) <- 0:100
ppiBEN2012 <- benDF
devtools::use_data(ppiBEN2012, overwrite = TRUE)


################################################################################
#
# Bolivia
#
################################################################################

bolDF1 <- str_split(pdf_text(pdf = "data-raw/pdf/bolivia.pdf")[3], "\n")[[1]][7:26]
bolDF2 <- str_split(pdf_text(pdf = "data-raw/pdf/bolivia.pdf")[4], "\n")[[1]][8:27]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(bolDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nlFood", "nl100", "nl150", "nl200", "half100")

#
#
#
temp <- sapply(bolDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 6)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("score", "ppp125", "ppp200", "ppp250", "ppp500", "ppp844")

bolDF <- data.frame("score" = 0:100, y1, y2[, 2:6])
row.names(bolDF) <- 0:100

ppiBOL2015 <- bolDF
devtools::use_data(ppiBOL2015, overwrite = TRUE)


#bolDF1 <- get_ppi_table(pdf = "data-raw/pdf/bolivia.pdf", n = 3, limits = 7:26)
#bolDF2 <- get_ppi_table(pdf = "data-raw/pdf/bolivia.pdf", n = 4, limits = 8:27)
#bolDF <- data.frame(bolDF1, bolDF2[ , 2:6])
#names(bolDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "half100",
#                  "ppp125", "ppp200", "ppp250", "ppp500", "ppp844")
#bolDF$score <- 0:100
#row.names(bolDF) <- 0:100
#ppiBOL2015 <- bolDF
#devtools::use_data(ppiBOL2015, overwrite = TRUE)


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

ppiBRA2010 <- braDF
devtools::use_data(ppiBRA2010, overwrite = TRUE)


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

ppiBFA2017 <- bfaDF

devtools::use_data(ppiBFA2017, overwrite = TRUE)


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

ppiKHM_wb <- khmDF
devtools::use_data(ppiKHM_wb, overwrite = TRUE)

khmDF <- get_ppi_table(pdf = "data-raw/pdf/cambodia.pdf", n = 4, limits = 7:26)
names(khmDF) <- c("score", "nl100", "nl150", "nl200", "ppp125", "ppp250")
khmDF$score <- 0:100
row.names(khmDF) <- 0:100

ppiKHM <- khmDF
devtools::use_data(ppiKHM, overwrite = TRUE)

khmDF <- get_ppi_table(pdf = "data-raw/pdf/cambodia.pdf", n = 5, limits = 9:28)
names(khmDF) <- c("score", "nl100", "nl150", "nl200", "median", "ppp125", "ppp200",
                  "ppp250", "ppp500")
khmDF$score <- 0:100
row.names(khmDF) <- 0:100

ppiKHM_gov <- khmDF
devtools::use_data(ppiKHM_gov, overwrite = TRUE)


################################################################################
#
# Cameroon
#
################################################################################

cmrDF <- get_ppi_table(pdf = "data-raw/pdf/cameroon.pdf", n = 4, limits = 5:24)
names(cmrDF) <- c("score", "nl100", "nl150", "nl200", "extreme", "ppp125",
                  "ppp200", "ppp250")
cmrDF$score <- 0:100
row.names(cmrDF) <- 0:100

ppiCMR <- cmrDF
devtools::use_data(ppiCMR, overwrite = TRUE)


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

ppiCOL_a <- colDF
devtools::use_data(ppiCOL_a, overwrite = TRUE)

colDF4 <- get_ppi_table(pdf = "data-raw/pdf/colombia.pdf", n = 5, limits = 9:28)
colDF5 <- get_ppi_table(pdf = "data-raw/pdf/colombia.pdf", n = 6, limits = 7:26)
colDF <- data.frame(colDF4, colDF5[ , 2:6])
names(colDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "extreme", "ppp125",
                  "ppp250", "ppp375", "ppp500")
colDF$score <- 0:100
row.names(colDF) <- 0:100

ppiCOL <- colDF
devtools::use_data(ppiCOL, overwrite = TRUE)


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

ppiDOM <- domDF
devtools::use_data(ppiDOM, overwrite = TRUE)


################################################################################
#
# Ecuador
#
################################################################################

ecuDF1 <- str_split(pdf_text(pdf = "data-raw/pdf/ecuador.pdf")[3], "\n")[[1]][7:26]
ecuDF2 <- str_split(pdf_text(pdf = "data-raw/pdf/ecuador.pdf")[4], "\n")[[1]][8:27]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(ecuDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nlFood", "nl100", "nl150", "nl200", "half100")

#
#
#
temp <- sapply(ecuDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 6)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("score", "ppp125", "ppp200", "ppp250", "ppp500", "ppp844")

ecuDF <- data.frame("score" = 0:100, y1, y2[, 2:6])
row.names(ecuDF) <- 0:100

ppiECU2015 <- ecuDF
devtools::use_data(ppiECU2015, overwrite = TRUE)


################################################################################
#
# Egypt
#
################################################################################

egyDF1 <- get_ppi_table(pdf = "data-raw/pdf/egypt.pdf", n = 2, limits = 8:27)
egyDF1 <- egyDF1[ , c(1:2, 4)]

egyDF2 <- get_ppi_table(pdf = "data-raw/pdf/egypt.pdf", n = 3, limits = 6:25)
egyDF2 <- egyDF2[ , c(1:2, 4)]

egyDF3 <- get_ppi_table(pdf = "data-raw/pdf/egypt.pdf", n = 4, limits = 6:25)
egyDF3 <- egyDF3[ , c(1:2, 4, 6)]

egyDF <- data.frame(egyDF1, egyDF2[ , 2:3], egyDF3[ , 2:4])
names(egyDF) <- c("score", "nu100", "nl100", "nlFood", "extreme", "ppp125",
                  "ppp250", "ppp375")

egyDF$score <- 0:100
row.names(egyDF) <- 0:100

ppiEGY <- egyDF
devtools::use_data(ppiEGY, overwrite = TRUE)


################################################################################
#
# El Salvador
#
################################################################################

slvDF1 <- get_ppi_table(pdf = "data-raw/pdf/el_salvador.pdf", n = 2, limits = 10:29)
slvDF1 <- slvDF1[ , c(1:2, 4, 6)]

slvDF2 <- get_ppi_table(pdf = "data-raw/pdf/el_salvador.pdf", n = 3, limits = 6:25)
slvDF2 <- slvDF2[ , c(1:2, 4)]

slvDF3 <- get_ppi_table(pdf = "data-raw/pdf/el_salvador.pdf", n = 4, limits = 8:27)
slvDF3 <- slvDF3[ , c(1:2, 4, 6)]

slvDF <- data.frame(slvDF1, slvDF2[ , 2:3], slvDF3[ , 2:4])
names(slvDF) <- c("score", "nl100", "nlFood", "nl150", "nl200", "extreme",
                  "ppp125", "ppp250", "ppp375")

slvDF$score <- 0:100
row.names(slvDF) <- 0:100

ppiSLV <- slvDF
devtools::use_data(ppiSLV, overwrite = TRUE)


################################################################################
#
# Ethiopia
#
################################################################################

ethDF1 <- get_ppi_table(pdf = "data-raw/pdf/ethiopia.pdf", n = 4, limits = 6:25)
ethDF2 <- get_ppi_table(pdf = "data-raw/pdf/ethiopia.pdf", n = 5, limits = 6:25)
ethDF3 <- get_ppi_table(pdf = "data-raw/pdf/ethiopia.pdf", n = 6, limits = 7:26)
ethDF <- data.frame(ethDF1, ethDF2[ , 2:11], ethDF3[ , 2:7])
names(ethDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "ppp100", "ppp125",
                  "ppp175", "ppp200", "ppp250", "ppp500", "ppp190", "ppp310", "ppp380",
                  "ppp400", "half100", "percentile20", "percentile40", "percentile50",
                  "percentile60", "percentile80")
ethDF$score <- 0:100
row.names(ethDF) <- 0:100

ppiETH <- ethDF
devtools::use_data(ppiETH, overwrite = TRUE)


################################################################################
#
# Fiji
#
################################################################################

fjiDF <- get_ppi_table(pdf = "data-raw/pdf/fiji.pdf", n = 4, limits = 5:24)
names(fjiDF) <- c("score", "nl100", "nl150", "nl200", "median", "ppp125", "ppp200",
                  "ppp250")
fjiDF$score <- 0:100
row.names(fjiDF) <- 0:100

ppiFJI <- fjiDF
devtools::use_data(ppiFJI, overwrite = TRUE)


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
ppiGHA_a <- ghaDF
devtools::use_data(ppiGHA_a, overwrite = TRUE)
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
ppiGHA_b <- ghaDF
devtools::use_data(ppiGHA_b, overwrite = TRUE)
#
# Legacy definition poverty lines
#
ghaDF <- get_ppi_table(pdf = "data-raw/pdf/ghana.pdf", n = 8, limits = 9:28)
names(ghaDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "ppp125", "ppp250", "ppp375")
ghaDF$score <- 0:100
row.names(ghaDF) <- 0:100
ppiGHA <- ghaDF
devtools::use_data(ppiGHA, overwrite = TRUE)


################################################################################
#
# Guatemala
#
################################################################################

gtmDF1 <- str_split(pdf_text("data-raw/pdf/guatemala.pdf")[3], "\n")[[1]][7:26]
gtmDF2 <- str_split(pdf_text("data-raw/pdf/guatemala.pdf")[4], "\n")[[1]][7:26]
gtmDF3 <- str_split(pdf_text("data-raw/pdf/guatemala.pdf")[5], "\n")[[1]][8:27]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(gtmDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nlFood", "nl100", "nl150", "nl200", "half100")

#
#
#
temp <- sapply(gtmDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 6)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("ppp125", "ppp200", "ppp250", "ppp500", "ppp190", "ppp310")

#
#
#
temp <- sapply(gtmDF3, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y3 <- data.frame(rbind(y, y[100, ]))

names(y3) <- c("percentile20", "percentile40", "percentile50", "percentile60", "percentile80")

gtmDF <- data.frame("score" = 0:100, y1, y2, y3)
row.names(gtmDF) <- 0:100

ppiGTM <- gtmDF
devtools::use_data(ppiGTM, overwrite = TRUE)



################################################################################
#
# Haiti
#
################################################################################

htiDF1 <- str_split(pdf_text("data-raw/pdf/haiti.pdf")[3], "\n")[[1]][7:26]
htiDF2 <- str_split(pdf_text("data-raw/pdf/haiti.pdf")[4], "\n")[[1]][8:27]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(htiDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nlFood", "nl100", "nl150", "nl200", "half100")

#
#
#
temp <- sapply(htiDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 4)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("ppp125", "ppp200", "ppp250", "ppp500")

htiDF <- data.frame("score" = 0:100, y1, y2)
row.names(htiDF) <- 0:100

ppiHTI <- htiDF
devtools::use_data(ppiHTI, overwrite = TRUE)


################################################################################
#
# Honduras
#
################################################################################

hndDF1 <- get_ppi_table(pdf = "data-raw/pdf/honduras.pdf", n = 2, limits = 6:25)
hndDF1 <- hndDF1[ , c(1:2, 4, 6)]

hndDF2 <- get_ppi_table(pdf = "data-raw/pdf/honduras.pdf", n = 3, limits = 8:27)
hndDF2 <- hndDF2[ , c(1:2, 4, 6)]

hndDF <- data.frame(hndDF1, hndDF2[ , 2:4])
names(hndDF) <- c("score", "nl100", "nlFood", "extreme", "ppp125", "ppp250", "ppp375")

ppiHND <- hndDF
devtools::use_data(ppiHND, overwrite = TRUE)


################################################################################
#
# India - legacy R59
#
################################################################################

indDF1 <- str_split(pdf_text("data-raw/pdf/india.pdf")[3], "\n")[[1]][9:28]
indDF2 <- str_split(pdf_text("data-raw/pdf/india.pdf")[4], "\n")[[1]][9:28]
indDF3 <- str_split(pdf_text("data-raw/pdf/india.pdf")[5], "\n")[[1]][8:27]
indDF4 <- str_split(pdf_text("data-raw/pdf/india.pdf")[6], "\n")[[1]][8:27]
indDF5 <- str_split(pdf_text("data-raw/pdf/india.pdf")[7], "\n")[[1]][8:27]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(indDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 10)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("saxena", "ppp108", "ppp216", "saxena", "ppp108", "ppp81", "ppp135", "ppp162", "ppp216", "tendulkar")

#
#
#
temp <- sapply(indDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 6)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("tendulkar100", "tendulkar150", "tendulkar200", "ppp125", "ppp188", "ppp250")

#
#
#
temp <- sapply(indDF3, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 6)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y3 <- data.frame(rbind(y, y[100, ]))

names(y3) <- c("rangarajan100", "rangarajan150", "rangarajan200", "half100", "rbiUrban", "rbiRural")

#
#
#
temp <- sapply(indDF4, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 4)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y4 <- data.frame(rbind(y, y[100, ]))

names(y4) <- c("ppp190", "ppp310", "ppp380", "ppp400")


#
#
#
temp <- sapply(indDF5, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y5 <- data.frame(rbind(y, y[100, ]))

names(y5) <- c("percentile20", "percentile40", "percentile50", "percentile60", "percentile80")


ppiIND_r59 <- data.frame("score" = 0:100, y1[, 1:3])
row.names(ppiIND_r59) <- 0:100
devtools::use_data(ppiIND_r59, overwrite = TRUE)

ppiIND_r62 <- data.frame("score" = 0:100, y1[, 4:9])
row.names(ppiIND_r62) <- 0:100
devtools::use_data(ppiIND_r62, overwrite = TRUE)

ppiIND_r66 <- data.frame("score" = 0:100, "tendulkar" = y1[, 10], y2)
row.names(ppiIND_r66) <- 0:100
devtools::use_data(ppiIND_r66, overwrite = TRUE)

ppiIND_r68 <- data.frame("score" = 0:100, y3, y4, y5)
row.names(ppiIND_r68) <- 0:100
devtools::use_data(ppiIND_r68, overwrite = TRUE)




################################################################################
#
# Indonesia - new
#
################################################################################

idnDF1 <- get_ppi_table(pdf = "data-raw/pdf/indonesia.pdf", n = 3, limits = 6:25)
idnDF2 <- get_ppi_table(pdf = "data-raw/pdf/indonesia.pdf", n = 4, limits = 7:26)
idnDF3 <- get_ppi_table(pdf = "data-raw/pdf/indonesia.pdf", n = 5, limits = 7:26)
idnDF4 <- get_ppi_table(pdf = "data-raw/pdf/indonesia.pdf", n = 6, limits = 6:25)


idnDF <- data.frame(idnDF1, idnDF2[ , 2:3], idnDF4[ , 2:3])
names(idnDF) <- c("score", "nl100", "nl150", "nl200", "extreme", "ppp125", "ppp250",
                  "ppp190", "ppp310")
idnDF$score <- 0:100
row.names(idnDF) <- 0:100

ppiIDN_a <- idnDF
devtools::use_data(ppiIDN_a, overwrite = TRUE)


################################################################################
#
# Indonesia - legacy
#
################################################################################

idnDF <- data.frame(idnDF2[ , c(1, 4:6)])
names(idnDF) <- c("score", "nl100", "ppp125", "ppp250")
idnDF$score <- 0:100
row.names(idnDF) <- 0:100

ppiIDN <- idnDF
devtools::use_data(ppiIDN, overwrite = TRUE)


################################################################################
#
# Ivory Coast
#
################################################################################

civDF <- get_ppi_table(pdf = "data-raw/pdf/ivory_coast.pdf", n = 4, limits = 5:24)
names(civDF) <- c("score", "nl100", "nl150", "nl200", "extreme", "ppp125", "ppp200",
                  "ppp250", "ppp800")
civDF$score <- 0:100
row.names(civDF) <- 0:100

ppiCIV <- civDF
devtools::use_data(ppiCIV, overwrite = TRUE)


################################################################################
#
# Jordan
#
################################################################################

nl100 <- get_ppi_table(pdf = "data-raw/pdf/jordan.pdf", n = 65, limits = 6:25)
names(nl100) <- c("score", "nl100")
nl100$score <- 0:100

nl150 <- get_ppi_table(pdf = "data-raw/pdf/jordan.pdf", n = 75, limits = 6:25)
names(nl150) <- c("score", "nl150")
nl150$score <- 0:100

nl200 <- get_ppi_table(pdf = "data-raw/pdf/jordan.pdf", n = 81, limits = 6:25)
names(nl200) <- c("score", "nl200")
nl200$score <- 0:100

nl250 <- get_ppi_table(pdf = "data-raw/pdf/jordan.pdf", n = 87, limits = 6:25)
names(nl250) <- c("score", "nl250")
nl250$score <- 0:100

extreme <- get_ppi_table(pdf = "data-raw/pdf/jordan.pdf", n = 93, limits = 6:25)
names(extreme) <- c("score", "extreme")
extreme$score <- 0:100

ppp125 <- get_ppi_table(pdf = "data-raw/pdf/jordan.pdf", n = 99, limits = 6:25)
names(ppp125) <- c("score", "ppp125")
ppp125$score <- 0:100

ppp250 <- get_ppi_table(pdf = "data-raw/pdf/jordan.pdf", n = 105, limits = 6:25)
names(ppp250) <- c("score", "ppp250")
ppp250$score <- 0:100

ppp375 <- get_ppi_table(pdf = "data-raw/pdf/jordan.pdf", n = 111, limits = 6:25)
names(ppp375) <- c("score", "ppp375")
ppp375$score <- 0:100

ppp500 <- get_ppi_table(pdf = "data-raw/pdf/jordan.pdf", n = 117, limits = 6:25)
names(ppp500) <- c("score", "ppp500")
ppp500$score <- 0:100

jorDF <- data.frame(nl100, nl150[ , 2], nl200[ , 2], nl250[ , 2], extreme[ , 2],
                    ppp125[ , 2], ppp250[ , 2], ppp375[ , 2], ppp500[ , 2])

names(jorDF) <- c("score", "nl100", "nl150", "nl200", "nl250", "extreme",
                  "ppp125", "ppp250", "ppp375", "ppp500")

ppiJOR <- jorDF
devtools::use_data(ppiJOR, overwrite = TRUE)



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
ppiKEN <- kenDF
devtools::use_data(ppiKEN, overwrite = TRUE)


################################################################################
#
# Kyrgyzstan
#
################################################################################

kgzDF1 <- str_split(pdf_text("data-raw/pdf/kyrgyzstan.pdf")[3], "\n")[[1]][8:27]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(kgzDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 8)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nl100", "nl150", "nl200", "median", "ppp125", "ppp200",
               "ppp250", "ppp500")

kgzDF <- data.frame("score" = 0:100, y1)
row.names(kgzDF) <- 0:100

ppiKGZ <- kgzDF
devtools::use_data(ppiKGZ, overwrite = TRUE)



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
ppiMDG <- mdgDF
devtools::use_data(ppiMDG, overwrite = TRUE)


################################################################################
#
# Malawi
#
################################################################################

mwiDF1 <- get_ppi_table(pdf = "data-raw/pdf/malawi.pdf", n = 4, limits = 8:27)
mwiDF2 <- get_ppi_table(pdf = "data-raw/pdf/malawi.pdf", n = 5, limits = 6:25)

#
# PBM definition
#
mwiDF <- data.frame(mwiDF1, mwiDF2[ , 2:8])
names(mwiDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "half100", "ppp125",
                  "ppp200", "ppp250", "ppp500", "ppp844", "ppp190", "ppp310")
mwiDF$score <- 0:100
row.names(mwiDF) <- 0:100

ppiMWI_pbm <- mwiDF
devtools::use_data(ppiMWI_pbm, overwrite = TRUE)

#
# Government definition
#
mwiDF3 <- get_ppi_table(pdf = "data-raw/pdf/malawi.pdf", n = 6, limits = 8:27)
mwiDF4 <- get_ppi_table(pdf = "data-raw/pdf/malawi.pdf", n = 7, limits = 6:25)
mwiDF5 <- get_ppi_table(pdf = "data-raw/pdf/malawi.pdf", n = 8, limits = 6:25)

mwiDF <- data.frame(mwiDF3, mwiDF4[ , 2:8], mwiDF5[ , 1])
names(mwiDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "half100", "ppp125",
                  "ppp200", "ppp250", "ppp500", "ppp844", "ppp190", "ppp310", "ppp1000")
mwiDF$score <- 0:100
row.names(mwiDF) <- 0:100

ppiMWI_gov <- mwiDF
devtools::use_data(ppiMWI_gov, overwrite = TRUE)

#
# Old definition
#
mwiDF <- data.frame(mwiDF1[ , 1], mwiDF5[ , 2:3])
names(mwiDF) <- c("score", "ppp125", "ppp250")
mwiDF$score <- 0:100
row.names(mwiDF) <- 0:100

ppiMWI <- mwiDF
devtools::use_data(ppiMWI, overwrite = TRUE)


################################################################################
#
# Mali
#
################################################################################

nl100 <- get_ppi_table(pdf = "data-raw/pdf/mali.pdf", n = 53, limits = 6:25)
names(nl100) <- c("score", "nl100")
nl100$score <- 0:100

nlFood <- get_ppi_table(pdf = "data-raw/pdf/mali.pdf", n = 63, limits = 6:25)
names(nlFood) <- c("score", "nlFood")
nlFood$score <- 0:100

extreme <- get_ppi_table(pdf = "data-raw/pdf/mali.pdf", n = 68, limits = 6:25)
names(extreme) <- c("score", "extreme")
extreme$score <- 0:100

ppp125 <- get_ppi_table(pdf = "data-raw/pdf/mali.pdf", n = 77, limits = 6:25)
names(ppp125) <- c("score", "ppp125")
extreme$score <- 0:100

ppp250 <- get_ppi_table(pdf = "data-raw/pdf/mali.pdf", n = 84, limits = 6:25)
names(ppp250) <- c("score", "ppp250")
extreme$score <- 0:100

mliDF <- data.frame(nl100, nlFood[ , 2], extreme[ , 2], ppp125[ , 2], ppp250[ , 2])
names(mliDF) <- c("score", "nl100", "nlFood", "extreme", "ppp125", "ppp250")

ppiMLI <- mliDF
devtools::use_data(ppiMLI, overwrite = TRUE)


################################################################################
#
# Mexico
#
################################################################################

mexDF1 <- str_split(pdf_text("data-raw/pdf/mexico.pdf")[3], "\n")[[1]][7:26]
mexDF2 <- str_split(pdf_text("data-raw/pdf/mexico.pdf")[4], "\n")[[1]][6:25]
mexDF3 <- str_split(pdf_text("data-raw/pdf/mexico.pdf")[5], "\n")[[1]][8:27]
mexDF4 <- str_split(pdf_text("data-raw/pdf/mexico.pdf")[6], "\n")[[1]][8:27]
mexDF5 <- str_split(pdf_text("data-raw/pdf/mexico.pdf")[7], "\n")[[1]][8:27]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(mexDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nl100", "nu100", "nu150", "nu200", "half100")
#
#
#
temp <- sapply(mexDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 6)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("ppp125", "ppp200", "ppp250", "ppp500", "ppp190", "ppp310")
#
#
#
temp <- sapply(mexDF3, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y3 <- data.frame(rbind(y, y[100, ]))

names(y3) <- c("percentile20", "percentile40", "percentile50", "percentile60", "percentile80")

ppiMEX_a <- data.frame("score" = 0:100, y1, y2, y3)
row.names(ppiMEX)
devtools::use_data(ppiMEX_a, overwrite = TRUE)

#
#
#
temp <- sapply(mexDF4, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y4 <- data.frame(rbind(y, y[100, ]))

names(y4) <- c("nlFood", "nlCapability", "nl100", "nl125", "nl150")
#
#
#
temp <- sapply(mexDF5, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 2)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y5 <- data.frame(rbind(y, y[100, ]))

names(y5) <- c("ppp125", "ppp250")

ppiMEX <- data.frame("score" = 0:100, y4, y5)
row.names(ppiMEX) <- 0:100
devtools::use_data(ppiMEX, overwrite = TRUE)



################################################################################
#
# Mongolia
#
################################################################################

mngDF1 <- str_split(pdf_text("data-raw/pdf/mongolia.pdf")[3], "\n")[[1]][7:26]
mngDF2 <- str_split(pdf_text("data-raw/pdf/mongolia.pdf")[4], "\n")[[1]][8:27]
mngDF3 <- str_split(pdf_text("data-raw/pdf/mongolia.pdf")[5], "\n")[[1]][8:27]
mngDF4 <- str_split(pdf_text("data-raw/pdf/mongolia.pdf")[6], "\n")[[1]][7:26]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(mngDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 4)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nl100", "nl150", "nl200", "half100")
#
#
#
temp <- sapply(mngDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 4)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("ppp125", "ppp200", "ppp250", "ppp500")
#
#
#
temp <- sapply(mngDF3, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 4)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y3 <- data.frame(rbind(y, y[100, ]))

names(y3) <- c("ppp190", "ppp310", "ppp380", "ppp400")

#
#
#
temp <- sapply(mngDF4, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y4 <- data.frame(rbind(y, y[100, ]))

names(y4) <- c("percentile20", "percentile40", "percentile50", "percentile60", "percentile80")

ppiMNG <- data.frame("score" = 0:100, y1, y2, y3, y4)
row.names(ppiMNG) <- 0:100
devtools::use_data(ppiMNG, overwrite = TRUE)


################################################################################
#
# Morocco
#
################################################################################

marDF1 <- get_ppi_table(pdf = "data-raw/pdf/morocco.pdf", n = 3, limits = 6:25)
marDF2 <- get_ppi_table(pdf = "data-raw/pdf/morocco.pdf", n = 4, limits = 6:25)
marDF <- data.frame(marDF1, marDF2[ , 2:4])
names(marDF) <- c("score", "nl100", "nl150", "nl200", "extreme", "ppp125",
                  "ppp250", "ppp375", "ppp500")
marDF$score <- 0:100
row.names(marDF) <- 0:100

ppiMAR <- marDF
devtools::use_data(ppiMAR, overwrite = TRUE)


################################################################################
#
# Myanmar
#
################################################################################

mmrDF <- get_ppi_table(pdf = "data-raw/pdf/myanmar.pdf", n = 4, limits = 5:24)
names(mmrDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "extreme",
                  "ppp125", "ppp250")
mmrDF$score <- 0:100
row.names(mmrDF) <- 0:100

ppiMMR <- mmrDF
devtools::use_data(ppiMMR, overwrite = TRUE)


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
ppiMOZ <- mozDF
devtools::use_data(ppiMOZ, overwrite = TRUE)


################################################################################
#
# Namibia
#
################################################################################

namDF <- get_ppi_table(pdf = "data-raw/pdf/namibia.pdf", n = 4, limits = 5:24)
names(namDF) <- c("score", "nl100", "nu100", "nu150", "nu200", "extreme",
                  "ppp125", "ppp200", "ppp250")
namDF$score <- 0:100
row.names(namDF) <- 0:100

ppiNAM <- namDF
devtools::use_data(ppiNAM, overwrite = TRUE)


################################################################################
#
# Nepal - new
#
################################################################################

nplDF1 <- get_ppi_table(pdf = "data-raw/pdf/nepal.pdf", n = 3, limits = 6:25)
nplDF2 <- get_ppi_table(pdf = "data-raw/pdf/nepal.pdf", n = 4, limits = 6:25)

nplDF <- data.frame(nplDF1, nplDF2[, 2:4])
names(nplDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "extreme",
                  "ppp125", "ppp200", "ppp250")

nplDF$score <- 0:100
row.names(nplDF) <- 0:100

ppiNPL_a <- nplDF
devtools::use_data(ppiNPL_a, overwrite = TRUE)

#
# Legacy
#
nplDF3 <- get_ppi_table(pdf = "data-raw/pdf/nepal.pdf", n = 5, limits = 7:26)
names(nplDF3) <- c("score", "nl100", "ppp125", "ppp250")
nplDF3$score <- 0:100
row.names(nplDF3) <- 0:100

ppiNPL <- nplDF3
devtools::use_data(ppiNPL, overwrite = TRUE)


################################################################################
#
# Nicaragua
#
################################################################################

nicDF <- get_ppi_table(pdf = "data-raw/pdf/nicaragua.pdf", n = 4, limits = 5:24)
names(nicDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "extreme",
                  "ppp125", "ppp250", "ppp375", "ppp800")
nicDF$score <- 0:100
row.names(nicDF) <- 0:100

ppiNIC <- nicDF
devtools::use_data(ppiNIC, overwrite = TRUE)


################################################################################
#
# Niger
#
################################################################################

nerDF<- get_ppi_table(pdf = "data-raw/pdf/niger.pdf", n = 4, limits = 5:24)
names(nerDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "extreme",
                  "ppp125", "ppp200", "ppp250")

nerDF$score <- 0:100
row.names(nerDF) <- 0:100

ppiNER <- nerDF
devtools::use_data(ppiNER, overwrite = TRUE)


################################################################################
#
# Nigeria
#
################################################################################

ngaDF1 <- str_split(pdf_text("data-raw/pdf/sri_lanka.pdf")[3], "\n")[[1]][7:26]
ngaDF2 <- str_split(pdf_text("data-raw/pdf/sri_lanka.pdf")[4], "\n")[[1]][8:27]
ngaDF3 <- str_split(pdf_text("data-raw/pdf/sri_lanka.pdf")[5], "\n")[[1]][8:27]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(ngaDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nlFood", "nl100", "nl150", "nl200", "half100")
#
#
#
temp <- sapply(ngaDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("ppp125", "ppp200", "ppp250", "ppp400", "ppp500")
#
#
#
temp <- sapply(ngaDF3, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 2)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y3 <- data.frame(rbind(y, y[100, ]))

names(y3) <- c("ppp190", "ppp310")

ppiNGA <- data.frame("score" = 0:100, y1, y2, y3)
row.names(ppiNGA) <- 0:100
devtools::use_data(ppiNGA, overwrite = TRUE)



################################################################################
#
# Palestine
#
################################################################################

pseDF <- get_ppi_table(pdf = "data-raw/pdf/palestine.pdf", n = 4, limits = 5:24)
names(pseDF) <- c("score", "deep", "nl100", "nl150", "nl200", "median", "ppp125",
                  "ppp200", "ppp250", "ppp375", "ppp500")
pseDF$score <- 0:100
row.names(pseDF) <- 0:100

ppiPSE <- pseDF
devtools::use_data(ppiPSE, overwrite = TRUE)


################################################################################
#
# Paraguay
#
################################################################################

pryDF1 <- get_ppi_table(pdf = "data-raw/pdf/paraguay.pdf", n = 3, limits = 8:27)
pryDF2 <- get_ppi_table(pdf = "data-raw/pdf/paraguay.pdf", n = 4, limits = 6:25)
pryDF <- data.frame(pryDF1, pryDF2[ , 2:4])
names(pryDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "extreme",
                  "ppp125", "ppp250")

pryDF$score <- 0:100
row.names(pryDF) <- 0:100

ppiPRY <- pryDF
devtools::use_data(ppiPRY, overwrite = TRUE)


################################################################################
#
# Peru
#
################################################################################

perDF1 <- get_ppi_table(pdf = "data-raw/pdf/peru.pdf", n = 3, limits = 8:27)
perDF2 <- get_ppi_table(pdf = "data-raw/pdf/peru.pdf", n = 4, limits = 6:25)
perDF <- data.frame(perDF1, perDF2[ , 2:5])
names(perDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "extreme",
                  "ppp125", "ppp250", "ppp375")
perDF$score <- 0:100
row.names(perDF) <- 0:100

ppiPER <- perDF
devtools::use_data(ppiPER, overwrite = TRUE)


################################################################################
#
# Philippines - legacy
#
################################################################################

phlDF <- get_ppi_table(pdf = "data-raw/pdf/philippines.pdf", n = 3, limits = 10:29)
names(phlDF) <- c("score", "nl100", "ppp125", "ppp250", "ppp500", "ppp432")
phlDF$score <- 0:100
row.names(phlDF) <- 0:100

ppiPHL <- phlDF
devtools::use_data(ppiPHL)


################################################################################
#
# Philippines - new
#
################################################################################

phlDF1 <- get_ppi_table(pdf = "data-raw/pdf/philippines.pdf", n = 4, limits = 4:23)
phlDF2 <- get_ppi_table(pdf = "data-raw/pdf/philippines.pdf", n = 5, limits = 6:25)
phlDF3 <- get_ppi_table(pdf = "data-raw/pdf/philippines.pdf", n = 6, limits = 6:25)
phlDF <- data.frame(phlDF1, phlDF2[ , 2:6], phlDF3[ , 2:3])
names(phlDF) <- c("score", "nl100", "nl150", "nl200", "median", "ppp125", "ppp200",
                  "ppp250", "ppp500", "ppp190", "ppp310")
phlDF$score <- 0:100
row.names(phlDF) <- 0:100

ppiPHL_a <- phlDF
devtools::use_data(ppiPHL_a, overwrite = TRUE)


################################################################################
#
# Romania
#
################################################################################

rouDF1 <- get_ppi_table(pdf = "data-raw/pdf/romania.pdf", n = 2, limits = 10:29)
rouDF1 <- rouDF1[ , c(1:2, 4, 6)]

rouDF2 <- get_ppi_table(pdf = "data-raw/pdf/romania.pdf", n = 3, limits = 8:27)
rouDF2 <- rouDF2[ , c(1:2, 4, 6)]

rouDF3 <- get_ppi_table(pdf = "data-raw/pdf/romania.pdf", n = 4, limits = 8:27)
rouDF3 <- rouDF3[ , c(1:2, 4)]

rouDF <- data.frame(rouDF1, rouDF2[ , 2:4], rouDF3[ , 2:3])
names(rouDF) <- c("score", "nl100", "nl150", "nl200", "extreme", "ppp250",
                  "ppp375", "ppp500", "laeken")

rouDF$score <- 0:100
row.names(rouDF) <- 0:100

ppiROU <- rouDF
devtools::use_data(ppiROU, overwrite = TRUE)


################################################################################
#
# Russia
#
################################################################################

rusDF <- get_ppi_table(pdf = "data-raw/pdf/russia.pdf", n = 2, limits = 8:27)
rusDF <- rusDF[ , c(1:2, 4, 6)]
names(rusDF) <- c("score", "nl100", "extreme", "ppp625")
rusDF$score <- 0:100
row.names(rusDF) <- 0:100

ppiRUS <- rusDF
devtools::use_data(ppiRUS, overwrite = TRUE)


################################################################################
#
# Rwanda
#
################################################################################

rwaDF1 <- get_ppi_table(pdf = "data-raw/pdf/rwanda.pdf", n = 4, limits = 6:25)
rwaDF2 <- get_ppi_table(pdf = "data-raw/pdf/rwanda.pdf", n = 5, limits = 6:25)
rwaDF <- data.frame(rwaDF1, rwaDF2[ , 2:6])
names(rwaDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "half100",
                  "ppp125", "ppp200", "ppp250", "ppp500", "ppp844")
rwaDF$score <- 0:100
row.names(rwaDF) <- 0:100

ppiRWA <- rwaDF
devtools::use_data(ppiRWA, overwrite = TRUE)


################################################################################
#
# Senegal
#
################################################################################

senDF1 <- get_ppi_table(pdf = "data-raw/pdf/senegal.pdf", n = 2, limits = 6:25)
senDF1 <- senDF1[ , c(1:2, 4, 6)]

senDF2 <- get_ppi_table(pdf = "data-raw/pdf/senegal.pdf", n = 3, limits = 6:25)
senDF2 <- senDF2[ , c(1:2, 4)]

senDF3 <- get_ppi_table(pdf = "data-raw/pdf/senegal.pdf", n = 4, limits = 6:25)
senDF3 <- senDF3[ , c(1:2, 4)]

senDF4 <- get_ppi_table(pdf = "data-raw/pdf/senegal.pdf", n = 5, limits = 10:29)
senDF4 <- senDF4[ , c(1:2, 4, 6)]

senDF <- data.frame(senDF1, senDF2[ , 2:3], senDF3[ , 2:3], senDF4[ , 2:4])
names(senDF) <- c("score", "nl100", "nlFood", "extreme", "nl75", "nl125", "nl150",
                  "nl200", "ppp125", "ppp250", "ppp375")

senDF$score <- 0:100
row.names(senDF) <- 0:100

ppiSEN <- senDF
devtools::use_data(ppiSEN, overwrite = TRUE)


################################################################################
#
# Sierra Leone
#
################################################################################

sleDF1 <- get_ppi_table(pdf = "data-raw/pdf/sierra_leone.pdf", n = 2, limits = 8:27)
sleDF1 <- sleDF1[ , c(1:2, 4, 6)]

sleDF2 <- get_ppi_table(pdf = "data-raw/pdf/sierra_leone.pdf", n = 3, limits = 8:27)
sleDF2 <- sleDF2[ , c(1:2, 4)]

sleDF3 <- get_ppi_table(pdf = "data-raw/pdf/sierra_leone.pdf", n = 4, limits = 8:27)
sleDF3 <- sleDF3[ , c(1:2, 4)]

sleDF <- data.frame(sleDF1, sleDF2[ , 2:3], sleDF3[ , 2:3])
names(sleDF) <- c("score", "nl100", "nlFood", "nl75", "nl150", "extreme",
                  "ppp125", "ppp250")

sleDF$score <- 0:100
row.names(sleDF) <- 0:100

ppiSLE <- sleDF
devtools::use_data(ppiSLE, overwrite = TRUE)


################################################################################
#
# Sri Lanka
#
################################################################################

lkaDF1 <- str_split(pdf_text("data-raw/pdf/sri_lanka.pdf")[3], "\n")[[1]][8:27]
lkaDF2 <- str_split(pdf_text("data-raw/pdf/sri_lanka.pdf")[4], "\n")[[1]][9:28]
lkaDF3 <- str_split(pdf_text("data-raw/pdf/sri_lanka.pdf")[5], "\n")[[1]][6:25]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(lkaDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 4)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nl100", "nl150", "nl200", "half100")
#
#
#
temp <- sapply(lkaDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 6)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("ppp125", "ppp200", "ppp250", "ppp500", "ppp190", "ppp310")
#
#
#
temp <- sapply(lkaDF3, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y3 <- data.frame(rbind(y, y[100, ]))

names(y3) <- c("percentile20", "percentile40", "percentile50", "percentile60", "percentile80")

ppiLKA <- data.frame("score" = 0:100, y1, y2, y3)
row.names(ppiLKA) <- 0:100
devtools::use_data(ppiLKA, overwrite = TRUE)


################################################################################
#
# South Africa
#
################################################################################

zafDF1 <- get_ppi_table(pdf = "data-raw/pdf/south_africa.pdf", n = 2, limits = 6:25)
zafDF1 <- zafDF1[ , c(1:2, 4, 6)]

zafDF2 <- get_ppi_table(pdf = "data-raw/pdf/south_africa.pdf", n = 3, limits = 8:27)
zafDF2 <- zafDF2[ , c(1:2, 4, 6)]

zafDF3 <- get_ppi_table(pdf = "data-raw/pdf/south_africa.pdf", n = 4, limits = 6:25)
zafDF3 <- zafDF3[ , c(1:2)]

zafDF <- data.frame(zafDF1, zafDF2[ , 2:4], zafDF3[ , 2])
names(zafDF) <- c("score", "nl100", "nlFood", "extreme", "nu100", "ppp125", "ppp250",
                  "ppp400")

zafDF$score <- 0:100
row.names(zafDF) <- 0:100

ppiZAF <- zafDF
devtools::use_data(ppiZAF, overwrite = TRUE)


################################################################################
#
# Sri Lanka
#
################################################################################

lkaDF1 <- str_split(pdf_text("data-raw/pdf/sri_lanka.pdf")[3], "\n")[[1]][8:27]
lkaDF2 <- str_split(pdf_text("data-raw/pdf/sri_lanka.pdf")[4], "\n")[[1]][9:28]
lkaDF3 <- str_split(pdf_text("data-raw/pdf/sri_lanka.pdf")[5], "\n")[[1]][6:25]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(lkaDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nlFood", "nl100", "nl150", "nl200", "half100")
#
#
#
temp <- sapply(lkaDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 5)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("ppp125", "ppp200", "ppp250", "ppp400", "ppp500")
#
#
#
temp <- sapply(lkaDF3, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 2)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y3 <- data.frame(rbind(y, y[100, ]))

names(y3) <- c("ppp190", "ppp310")

ppiLKA <- data.frame("score" = 0:100, y1, y2, y3)
row.names(ppiLKA) <- 0:100
devtools::use_data(ppiLKA, overwrite = TRUE)


################################################################################
#
# Syria
#
################################################################################

nu100 <- get_ppi_table(pdf = "data-raw/pdf/syria.pdf", n = 65, limits = 6:25)
names(nu100) <- c("score", "nu100")
nu100$score <- 0:100

nl100 <- get_ppi_table(pdf = "data-raw/pdf/syria.pdf", n = 75, limits = 6:25)
names(nl100) <- c("score", "nl100")
nl100$score <- 0:100

nu150 <- get_ppi_table(pdf = "data-raw/pdf/syria.pdf", n = 82, limits = 6:25)
names(nu150) <- c("score", "nu150")
nu150$score <- 0:100

nu200 <- get_ppi_table(pdf = "data-raw/pdf/syria.pdf", n = 89, limits = 6:25)
names(nu200) <- c("score", "nu200")
nu200$score <- 0:100

ppp250 <- get_ppi_table(pdf = "data-raw/pdf/syria.pdf", n = 96, limits = 6:25)
names(ppp250) <- c("score", "ppp250")
ppp250$score <- 0:100

ppp375 <- get_ppi_table(pdf = "data-raw/pdf/syria.pdf", n = 103, limits = 6:25)
names(ppp375) <- c("score", "ppp375")
ppp375$score <- 0:100

ppp500 <- get_ppi_table(pdf = "data-raw/pdf/syria.pdf", n = 110, limits = 6:25)
names(ppp500) <- c("score", "ppp500")
ppp500$score <- 0:100

syrDF <- data.frame(nu100, nl100[ , 2], nu150[ , 2], nu200[ , 2], ppp250[ , 2],
                    ppp375[ , 2], ppp500[ , 2])

names(syrDF) <- c("score", "nu100", "nl100", "nu150", "nu200", "ppp250", "ppp375", "ppp500")

syrDF$score <- 0:100
row.names(syrDF) <- 0:100

ppiSYR <- syrDF
devtools::use_data(ppiSYR, overwrite = TRUE)


################################################################################
#
# Tanzania
#
################################################################################

tzaDF1 <- str_split(pdf_text("data-raw/pdf/tanzania.pdf")[3], "\n")[[1]][7:26]
tzaDF2 <- str_split(pdf_text("data-raw/pdf/tanzania.pdf")[4], "\n")[[1]][8:27]
tzaDF3 <- str_split(pdf_text("data-raw/pdf/tanzania.pdf")[5], "\n")[[1]][8:27]
tzaDF4 <- str_split(pdf_text("data-raw/pdf/tanzania.pdf")[6], "\n")[[1]][10:29]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(tzaDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 4)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nlFood", "nl100", "nl150", "nl200")
#
#
#
temp <- sapply(tzaDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 4)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("ppp125", "ppp200", "ppp250", "ppp500")
#
#
#
temp <- sapply(tzaDF3, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 4)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y3 <- data.frame(rbind(y, y[100, ]))

names(y3) <- c("ppp190", "ppp310", "ppp380", "ppp400")

#
#
#
temp <- sapply(tzaDF4, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 6)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y4 <- data.frame(rbind(y, y[100, ]))

names(y4) <- c("half100", "percentile20", "percentile40", "percentile50", "percentile60", "percentile80")

ppiTZA <- data.frame("score" = 0:100, y1, y2, y3, y4)
row.names(ppiTZA) <- 0:100
devtools::use_data(ppiTZA, overwrite = TRUE)


################################################################################
#
# Tajikistan
#
################################################################################

tjkDF1 <- get_ppi_table(pdf = "data-raw/pdf/tajikistan.pdf", n = 3, limits = 4:23)
tjkDF2 <- get_ppi_table(pdf = "data-raw/pdf/tajikistan.pdf", n = 4, limits = 4:23)
tjkDF <- data.frame(tjkDF1, tjkDF2[ , 2:5])
names(tjkDF) <- c("score", "nlFood", "nl100", "nl150", "nl200", "median",
                  "ppp125", "ppp200", "ppp250")
tjkDF$score <- 0:100
row.names(tjkDF) <- 0:100

ppiTJK <- tjkDF
devtools::use_data(ppiTJK, overwrite = TRUE)


################################################################################
#
# Timor-Leste
#
################################################################################

tlsDF <- get_ppi_table(pdf = "data-raw/pdf/timor_leste.pdf", n = 4, limits = 8:27)
names(tlsDF) <- c("score", "nl100", "nu100", "nu150", "nu200", "extreme", "ppp125", "ppp250")
tlsDF$score <- 0:100
row.names(tlsDF) <- 0:100

ppiTLS <- tlsDF
devtools::use_data(ppiTLS, overwrite = TRUE)


################################################################################
#
# Uganda
#
################################################################################

ugaDF1 <- str_split(pdf_text("data-raw/pdf/uganda.pdf")[3], "\n")[[1]][7:26]
ugaDF2 <- str_split(pdf_text("data-raw/pdf/uganda.pdf")[4], "\n")[[1]][8:27]
ugaDF3 <- str_split(pdf_text("data-raw/pdf/uganda.pdf")[5], "\n")[[1]][8:27]

get_vars <- function(x, pattern, n = 5) {

  x <- str_split(x, pattern = pattern)[[1]]
  x <- x[x != ""]

}

temp <- sapply(ugaDF1, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 4)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y1 <- data.frame(rbind(y, y[100, ]))

names(y1) <- c("nl100", "nl150", "nl200", "half100")
#
#
#
temp <- sapply(ugaDF2, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 6)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y2 <- data.frame(rbind(y, y[100, ]))

names(y2) <- c("ppp125", "ppp200", "ppp250", "ppp400", "ppp500", "ppp844")
#
#
#
temp <- sapply(ugaDF3, FUN = get_vars, pattern = " ")

y <- NULL

for(i in 1:length(temp)) {

  x <- temp[[i]]
  x <- as.numeric(x)
  x <- tail(x, 2)

  z <- NULL

  for(j in 1:5){

    z <- data.frame(rbind(z, x))

  }

  y <- data.frame(rbind(y, z))

}

y3 <- data.frame(rbind(y, y[100, ]))

names(y3) <- c("ppp190", "ppp310")

ppiUGA <- data.frame("score" = 0:100, y1, y2, y3)
row.names(ppiUGA) <- 0:100
devtools::use_data(ppiUGA, overwrite = TRUE)


################################################################################
#
# Vietnam
#
################################################################################

vnmDF1 <- get_ppi_table(pdf = "data-raw/pdf/vietnam.pdf", n = 2, limits = 6:25)
vnmDF1 <- vnmDF1[ , c(1:2, 4, 6)]

vnmDF2 <- get_ppi_table(pdf = "data-raw/pdf/vietnam.pdf", n = 3, limits = 6:25)
vnmDF2 <- vnmDF2[ , c(2, 4, 6)]

vnmDF3 <- get_ppi_table(pdf = "data-raw/pdf/vietnam.pdf", n = 4, limits = 6:25)
vnmDF3 <- vnmDF3[ , 2]

vnmDF <- data.frame(vnmDF1, vnmDF2, vnmDF3)
names(vnmDF) <- c("score", "nl100", "nlFood", "extreme", "ppp125", "ppp175",
                  "ppp250", "molisa")
vnmDF$score <- 0:100
row.names(vnmDF) <- 0:100

ppiVNM <- vnmDF
devtools::use_data(ppiVNM, overwrite = TRUE)


################################################################################
#
# Yemen
#
################################################################################

yemDF1 <- get_ppi_table(pdf = "data-raw/pdf/yemen.pdf", n = 2, limits = 6:25)
yemDF1 <- yemDF1[ , c(1:2, 4, 6)]

yemDF2 <- get_ppi_table(pdf = "data-raw/pdf/yemen.pdf", n = 3, limits = 6:25)
yemDF2 <- yemDF2[ , c(2, 4)]

yemDF3 <- get_ppi_table(pdf = "data-raw/pdf/yemen.pdf", n = 4, limits = 6:25)
yemDF3 <- yemDF3[ , c(2, 4)]

yemDF <- data.frame(yemDF1, yemDF2, yemDF3)
names(yemDF) <- c("score", "nl100", "nlFood", "extreme", "ppp125", "ppp250",
                  "ppp300", "ppp400")

yemDF$score <- 0:100
row.names(yemDF) <- 0:100

ppiYEM <- yemDF
devtools::use_data(ppiYEM, overwrite = TRUE)


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

ppiZMB <- zmbDF

devtools::use_data(ppiZMB, overwrite = TRUE)
