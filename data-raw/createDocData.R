################################################################################
#
# Function to assist in creating documentation for datasets in an R package
#
################################################################################

create_doc <- function(country,
                       ccode,
                       year,
                       data,
                       varList,
                       source = "www.povertyindex.org") {

  sink("R/data.R", append = TRUE, type = "output")

  cat(" \n")
  cat(" \n")
  cat("################################################################################\n")
  cat("# \n")
  cat(paste("#' ppi", ccode, year, sep = ""), " \n")
  cat("#' \n")
  cat(paste("#' Poverty Probability Index (PPI) lookup table for ", country, sep = ""), " \n")
  cat("#' \n")
  cat(paste("#' @format A data frame with ", ncol(data), " columns and ", nrow(data), " rows:", sep = ""), " \n")
  cat("#' \\describe{ \n")
  for(i in 1:length(names(data))) {
    cat(paste("#' \\item{\\code{", names(data)[i], "}}{", varList[i], "}", sep = ""), " \n")
  }
  cat("#' } \n")
  cat(paste("#' @source \\url{", source, "}", sep = ""), " \n")
  cat("#' \n")
  cat("# \n")
  cat("################################################################################ \n")
  cat(paste("\"ppi", ccode, year, "\"", sep = ""))
  sink()
}


################################################################################
#
# Afghanistan
#
################################################################################

varList <- c("PPI score",
             "National poverty line",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Afghanistan", ccode = "AFG", year = "2012", data = ppiAFG2012, varList = varList)


################################################################################
#
# Angola
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Angola", ccode = "AGO", data = ppiMatrixAGO, varList = varList)


################################################################################
#
# Bangladesh
#
################################################################################

varList <- c("PPI score",
             "National lower poverty line",
             "National upper poverty line (100)",
             "National upper poverty line (150)",
             "National upper poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $1.75 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Bangladesh", ccode = "BGD", data = ppiMatrixBGD, varList = varList)


################################################################################
#
# Benin
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Benin", ccode = "BEN", data = ppiMatrixBEN, varList = varList)


################################################################################
#
# Bolivia
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $8.44 per day purchasing power parity (2005)")

create_doc(country = "Bolivia", ccode = "BOL", data = ppiMatrixBOL, varList = varList)


################################################################################
#
# Brazil
#
################################################################################

varList <- c("PPI score",
             "Below the half minimum wage line",
             "Below the quarter minimum wage line",
             "Below the one minimum wage line",
             "Below the two minimum wage line",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Brazil", ccode = "BRA", data = ppiMatrixBRA, varList = varList)


################################################################################
#
# Burkina Faso
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.00 per day purchasing power parity (2011)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Burkina Faso", ccode = "BFA", data = ppiMatrixBFA, varList = varList)


################################################################################
#
# Cambodia - World Bank definition
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Median poverty line",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Cambodia", ccode = "KHM_wb", data = ppiMatrixKHM_wb, varList = varList)


################################################################################
#
# Cambodia - Government definition
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Median poverty line",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Cambodia", ccode = "KHM_gov", data = ppiMatrixKHM_gov, varList = varList)


################################################################################
#
# Cambodia - legacy definition
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.25 per day purchasing power poverty (2005)",
             "Below $2.50 per day purchasing power poverty (2005)")

create_doc(country = "Cambodia", ccode = "KHM", data = ppiMatrixKHM, varList = varList)


################################################################################
#
# Cameroon
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Cameroon", ccode = "CMR", data = ppiMatrixCMR, varList = varList)


################################################################################
#
# Colombia - new scoring
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)")

create_doc(country = "Colombia", ccode = "COL_a", data = ppiMatrixCOL_a, varList = varList)


################################################################################
#
# Colombia - legacy
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Colombia", ccode = "COL", data = ppiMatrixCOL, varList = varList)


################################################################################
#
# Dominican Republic
#
################################################################################

varList <- c("PPI score",
             "National poverty line (50)",
             "National poverty line (75)",
             "National poverty line (100)",
             "National poverty line (150)",
             "USAID extreme poverty",
             "National poverty line (200)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Dominican Republic", ccode = "DOM", data = ppiMatrixDOM, varList = varList)


################################################################################
#
# Ecuador
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $8.44 per day purchasing power parity (2005)")

create_doc(country = "Ecuador", ccode = "ECU", year = "2015", data = ppiECU2015, varList = varList)


################################################################################
#
# Egypt
#
################################################################################

varList <- c("PPI score",
             "National upper poverty line (100)",
             "National lower poverty line (100)",
             "Food poverty line",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)")

create_doc(country = "Egypt", ccode = "EGY", data = ppiMatrixEGY, varList = varList)


################################################################################
#
# El Salvador
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)")

create_doc(country = "El Salvador", ccode = "SLV", data = ppiMatrixSLV, varList = varList)


################################################################################
#
# Ethiopia
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.00 per day purchasing power parity (2005)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $1.75 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)",
             "Below $3.80 per day purchasing power parity (2011)",
             "Below $4.00 per day purchasing power parity (2011)",
             "Poorest half below 100 national",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Ethiopia", ccode = "ETH", data = ppiMatrixETH, varList = varList)


################################################################################
#
# Fiji
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Fiji", ccode = "FJI", data = ppiMatrixFJI, varList = varList)




################################################################################
#
# Ghana - legacy scores
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $2.75 per day purchasing power parity (2005)")

create_doc(country = "Ghana", ccode = "GHA", data = ppiMatrixGHA, varList = varList)


################################################################################
#
# Ghana - deflated with Ghana's CPI
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)")

create_doc(country = "Ghana", ccode = "GHA_a", data = ppiMatrixGHA_a, varList = varList)


################################################################################
#
# Ghana - deflated with the change in 100% of national poverty line
#
################################################################################

varList <- c("PPI score",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)")

create_doc(country = "Ghana", ccode = "GHA_b", data = ppiMatrixGHA_b, varList = varList)


################################################################################
#
# Guatemala
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Guatemala", ccode = "GTM", data = ppiMatrixGTM, varList = varList)


################################################################################
#
# Haiti
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Haiti", ccode = "HTI", data = ppiMatrixHTI, varList = varList)


################################################################################
#
# Honduras
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)")

create_doc(country = "Honduras", ccode = "HND", data = ppiMatrixHND, varList = varList)


################################################################################
#
# India - R59
#
################################################################################

varList <- c("PPI score",
             "National saxena",
             "Below $1.08 per day purchasing power parity (1993)",
             "Below $2.16 per day purchasing power parity (1993)")

create_doc(country = "India", ccode = "IND_r59", data = ppiMatrixIND_r59, varList = varList)


################################################################################
#
# India - R62
#
################################################################################

varList <- c("PPI score",
             "National saxena",
             "Below $1.08 per day purchasing power parity (1993)",
             "Below $0.81 per day purchasing power parity (1993)",
             "Below $1.35 per day purchasing power parity (1993)",
             "Below $1.62 per day purchasing power parity (1993)",
             "Below $2.16 per day purchasing power parity (1993)")

create_doc(country = "India", ccode = "IND_r62", data = ppiMatrixIND_r62, varList = varList)


################################################################################
#
# India - R66
#
################################################################################

varList <- c("PPI score",
             "National tendulkar",
             "National tendulkar (100)",
             "National tendulkar (150)",
             "National tendulkar (200)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $1.88 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $1.25 per day purchasing power parity (2005)")

create_doc(country = "India", ccode = "IND_r66", data = ppiMatrixIND_r66, varList = varList)


################################################################################
#
# India - R68
#
################################################################################

varList <- c("PPI score",
             "National rangarajan (100)",
             "National rangarajan (150)",
             "National rangarajan (200)",
             "Poorest half below 100 national",
             "RBI urban",
             "RBI rural",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)",
             "Below $3.80 per day purchasing power parity (2011)",
             "Below $4.00 per day purchasing power parity (2011)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "India", ccode = "IND_r68", data = ppiMatrixIND_r68, varList = varList)


################################################################################
#
# Indonesia - legacy
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Indonesia", ccode = "IDN", data = ppiMatrixIDN, varList = varList)


################################################################################
#
# Indonesia - new
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)")

create_doc(country = "Indonesia", ccode = "IDN_a", data = ppiMatrixIDN_a, varList = varList)


################################################################################
#
# Jordan
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "National poverty line (250)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Jordan", ccode = "JOR", data = ppiMatrixJOR, varList = varList)


################################################################################
#
# Kenya
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $4.00 per day purchasing power parity (2005)",
             "Below $8.44 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)")

create_doc(country = "Kenya", ccode = "KEN", data = ppiMatrixKEN, varList = varList)


################################################################################
#
# Kyrgyzstan
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Kyrgyzstan", ccode = "KGZ", data = ppiMatrixKGZ, varList = varList)

################################################################################
#
# Madagascar
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Madagascar", ccode = "MDG", data = ppiMatrixMDG, varList = varList)


################################################################################
#
# Malawi - PBM definition
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $8.44 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)")

create_doc(country = "Malawi", ccode = "MWI_pbm", data = ppiMatrixMWI_pbm, varList = varList)


################################################################################
#
# Malawi - government definition
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $8.44 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)",
             "Below $10.00 per day purchasing power parity (2011)")

create_doc(country = "Malawi", ccode = "MWI_gov", data = ppiMatrixMWI_gov, varList = varList)


################################################################################
#
# Malawi - legacy
#
################################################################################

varList <- c("PPI score",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Malawi", ccode = "MWI", data = ppiMatrixMWI, varList = varList)


################################################################################
#
# Mali
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Mali", ccode = "MLI", data = ppiMatrixMLI, varList = varList)


################################################################################
#
# Mexico - legacy
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "Capabilities",
             "National poverty line (100)",
             "National poverty line (125)",
             "National poverty line (150)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Mexico", ccode = "MEX", data = ppiMatrixMEX, varList = varList)


################################################################################
#
# Mexico - new
#
################################################################################

varList <- c("PPI score",
             "National lower poverty line (100)",
             "National upper poverty line (100)",
             "National upper poverty line (150)",
             "National upper poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Mexico", ccode = "MEX_a", data = ppiMatrixMEX_a, varList = varList)


################################################################################
#
# Mongolia
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)",
             "Below $3.80 per day purchasing power parity (2011)",
             "Below $4.00 per day purchasing power parity (2011)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Mongolia", ccode = "MNG", data = ppiMatrixMNG, varList = varList)


################################################################################
#
# Morocco
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Morocco", ccode = "MAR", data = ppiMatrixMAR, varList = varList)


################################################################################
#
# Mozambique
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Mozambique", ccode = "MOZ", data = ppiMatrixMOZ, varList = varList)


################################################################################
#
# Myanmar
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Myanmar", ccode = "MMR", data = ppiMatrixMMR, varList = varList)

################################################################################
#
# Namibia
#
################################################################################

varList <- c("PPI score",
             "National lower poverty line (100)",
             "National upper poverty line (100)",
             "National upper poverty line (150)",
             "National upper poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Namibia", ccode = "NAM", data = ppiMatrixNAM, varList = varList)


################################################################################
#
# Nepal - new
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Nepal", ccode = "NPL_a", data = ppiMatrixNPL_a, varList = varList)


################################################################################
#
# Nepal - legacy
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Nepal", ccode = "NPL", data = ppiMatrixNPL, varList = varList)


################################################################################
#
# Nicaragua
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $8.00 per day purchasing power parity (2005)")

create_doc(country = "Nicaragua", ccode = "NIC", data = ppiMatrixNIC, varList = varList)


################################################################################
#
# Niger
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Niger", ccode = "NER", data = ppiMatrixNER, varList = varList)


################################################################################
#
# Nigeria
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $4.00 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)")

create_doc(country = "Nigeria", ccode = "NGA", data = ppiMatrixNGA, varList = varList)


################################################################################
#
# Palestine
#
################################################################################

varList <- c("PPI score",
             "Deep poverty",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Palestine", ccode = "PSE", data = ppiMatrixPSE, varList = varList)


################################################################################
#
# Paraguay
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Paraguay", ccode = "PRY", data = ppiMatrixPRY, varList = varList)


################################################################################
#
# Peru
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)")

create_doc(country = "Peru", ccode = "PER", data = ppiMatrixPER, varList = varList)


################################################################################
#
# Philippines - legacy
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $4.32 per day purchasing power parity (1993)")

create_doc(country = "Philippines", ccode = "PHL", data = ppiMatrixPHL, varList = varList)


################################################################################
#
# Philippines - new
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)")

create_doc(country = "Philippines", ccode = "PHL_a", data = ppiMatrixPHL_a, varList = varList)


################################################################################
#
# Romania
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Laeken poverty line")

create_doc(country = "Romania", ccode = "ROU", data = ppiMatrixROU, varList = varList)


################################################################################
#
# Russia
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "USAID extreme poverty",
             "Below $6.25 per day purchasing power parity (2005)")

create_doc(country = "Russia", ccode = "RUS", data = ppiMatrixRUS, varList = varList)


################################################################################
#
# Rwanda
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $8.44 per day purchasing power parity (2005)")

create_doc(country = "Rwanda", ccode = "RWA", data = ppiMatrixRWA, varList = varList)


################################################################################
#
# Senegal
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "USAID extreme poverty",
             "National poverty line (75)",
             "National poverty line (125)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)")

create_doc(country = "Senegal", ccode = "SEN", data = ppiMatrixSEN, varList = varList)


################################################################################
#
# Sierra Leone
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "National poverty line (75)",
             "National poverty line (150)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Sierra Leone", ccode = "SLE", data = ppiMatrixSLE, varList = varList)


################################################################################
#
# Sri Lanka
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Sri Lanka", ccode = "LKA", data = ppiMatrixLKA, varList = varList)


################################################################################
#
# South Africa
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "USAID extreme poverty",
             "National upper poverty line (100)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $4.00 per day purchasing power parity (2005)")

create_doc(country = "South Africa", ccode = "ZAF", data = ppiMatrixZAF, varList = varList)


################################################################################
#
# Syria
#
################################################################################

varList <- c("PPI score",
             "National upper poverty line (100)",
             "National lower poverty line (100)",
             "National upper poverty line (150)",
             "National upper poverty line (200)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)")

create_doc(country = "Syria", ccode = "SYR", data = ppiMatrixSYR, varList = varList)


################################################################################
#
# Tanzania
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)",
             "Below $3.80 per day purchasing power parity (2011)",
             "Below $4.00 per day purchasing power parity (2011)",
             "Poorest half below 100 national",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Tanzania", ccode = "TZA", data = ppiMatrixTZA, varList = varList)


################################################################################
#
# Tajikistan
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Tajikistan", ccode = "TJK", data = ppiMatrixTJK, varList = varList)


################################################################################
#
# Timor Leste
#
################################################################################

varList <- c("PPI score",
             "National lower poverty line (100)",
             "National upper poverty line (100)",
             "National upper poverty line (150)",
             "National upper poverty line (200)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Timor Leste", ccode = "TLS", data = ppiMatrixTLS, varList = varList)


################################################################################
#
# Uganda
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $4.00 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $8.44 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)")

create_doc(country = "Uganda", ccode = "UGA", data = ppiMatrixUGA, varList = varList)


################################################################################
#
# Vietnam
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "USAID extreme poverty line",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $1.75 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "MOLISA poverty line")

create_doc(country = "Vietnam", ccode = "VNM", data = ppiMatrixVNM, varList = varList)


################################################################################
#
# Yemen
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.00 per day purchasing power parity (2005)",
             "Below $4.00 per day purchasing power parity (2005)")

create_doc(country = "Yemen", ccode = "YEM", data = ppiMatrixYEM, varList = varList)


################################################################################
#
# Zambia
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $1.00 per day purchasing power parity (2011)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Zambia", ccode = "ZMB", data = ppiMatrixZMB, varList = varList)



