################################################################################
#
# Function to assist in creating documentation for datasets in an R package
#
################################################################################

create_doc <- function(country,
                       ccode,
                       year,
                       suffix = NULL,
                       data,
                       varList,
                       source = "https://www.povertyindex.org") {

  sink("R/data.R", append = TRUE, type = "output")

  cat(" \n")
  cat(" \n")
  cat("################################################################################\n")
  cat("# \n")
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
  cat(paste("\"ppi", ccode, year, suffix, "\"", sep = ""))
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

create_doc(country = "Angola", ccode = "AGO", year = 2015, data = ppiAGO2015, varList = varList)


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

create_doc(country = "Bangladesh", ccode = "BGD", year = "2013", data = ppiBGD2013, varList = varList)


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

create_doc(country = "Benin", ccode = "BEN", year = "2012", data = ppiBEN2012, varList = varList)


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

create_doc(country = "Bolivia", ccode = "BOL", year = "2015", data = ppiBOL2015, varList = varList)


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

create_doc(country = "Brazil", ccode = "BRA", year = "2010", data = ppiBRA2010, varList = varList)


################################################################################
#
# Burkina Faso - 2011
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (50)",
             "National poverty line (75)",
             "National poverty line (150)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Burkina Faso", ccode = "BFA", year = "2011",  data = ppiBFA2011, varList = varList)


################################################################################
#
# Burkina Faso - 2014
#
################################################################################

varList <- c("PPI score",
             "Food poverty line",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.00 per day purchasing power parity (2005)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below $8.44 per day purchasing power parity (2005)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.10 per day purchasing power parity (2011)",
             "Median poverty line",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Burkina Faso", ccode = "BFA", year = "2014",  data = ppiBFA2014, varList = varList)


################################################################################
#
# Burkina Faso - 2017
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

create_doc(country = "Burkina Faso", ccode = "BFA", year = "2017",  data = ppiBFA2017, varList = varList)


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

create_doc(country = "Cambodia", ccode = "KHM", year = "2015", suffix = "_wb", data = ppiKHM2015_wb, varList = varList)


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

create_doc(country = "Cambodia", ccode = "KHM", year = "2015", suffix = "_gov", data = ppiKHM2015_gov, varList = varList)


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

create_doc(country = "Cambodia", ccode = "KHM", year = "2015", data = ppiKHM2015, varList = varList)


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

create_doc(country = "Cameroon", ccode = "CMR", year = "2013", data = ppiCMR2013, varList = varList)


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

create_doc(country = "Colombia", ccode = "COL", year = "2012", suffix = "_a", data = ppiCOL2012_a, varList = varList)


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

create_doc(country = "Colombia", ccode = "COL", year = "2012", data = ppiCOL2012, varList = varList)


################################################################################
#
# Colombia - 2018
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Extreme national poverty line",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $8.00 per day purchasing power parity (2011)",
             "Below $15.00 per day purchasing power parity (2011)",
             "Below $21.70 per day purchasing power parity (2011)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Colombia", ccode = "COL", year = "2018",  data = ppiCOL2018, varList = varList)


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

create_doc(country = "Dominican Republic", ccode = "DOM", year = "2010", data = ppiDOM2010, varList = varList)


################################################################################
#
# Dominican Republic - PPI
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $8.00 per day purchasing power parity (2011)",
             "Below $11.00 per day purchasing power parity (2011)",
             "Below $15.00 per day purchasing power parity (2011)",
             "Below $21.70 per day purchasing power parity (2011)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Dominican Republic", ccode = "DOM", year = "2018", data = ppiDOM2018, varList = varList)


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

create_doc(country = "Egypt", ccode = "EGY", year = "2010", data = ppiEGY2010, varList = varList)


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

create_doc(country = "El Salvador", ccode = "SLV", year = "2010", data = ppiSLV2010, varList = varList)


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

create_doc(country = "Ethiopia", ccode = "ETH", year = "2016", data = ppiETH2016, varList = varList)


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

create_doc(country = "Fiji", ccode = "FJI", year = "2014", data = ppiFJI2014, varList = varList)


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
             "Below $3.75 per day purchasing power parity (2005)")

create_doc(country = "Ghana", ccode = "GHA", year = "2015", data = ppiGHA2015, varList = varList)


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

create_doc(country = "Ghana", ccode = "GHA", year = "2015", suffix = "_a", data = ppiGHA2015_a, varList = varList)


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

create_doc(country = "Ghana", ccode = "GHA", year = "2015", suffix = "_b", data = ppiGHA2015_b, varList = varList)

################################################################################
#
# Ghana - new 2019 PPI tabes
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Extreme poverty line",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.00 per day purchasing power parity (2011)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $8.00 per day purchasing power parity (2011)",
             "Below $11.00 per day purchasing power parity (2011)",
             "Below $15.00 per day purchasing power parity (2011)",
             "Below $21.70 per day purchasing power parity (2011)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Ghana", ccode = "GHA", year = "2019", data = ppiGHA2019, varList = varList)


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

create_doc(country = "Guatemala", ccode = "GTM", year = "2016", data = ppiGTM2016, varList = varList)


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

create_doc(country = "Haiti", ccode = "HTI", year = "2016", data = ppiHTI2016, varList = varList)


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

create_doc(country = "Honduras", ccode = "HND", year = "2010", data = ppiHND2010, varList = varList)


################################################################################
#
# India - R59
#
################################################################################

varList <- c("PPI score",
             "National saxena",
             "Below $1.08 per day purchasing power parity (1993)",
             "Below $2.16 per day purchasing power parity (1993)")

create_doc(country = "India", ccode = "IND", year = "2016", suffix = "_r59", data = ppiIND2016_r59, varList = varList)


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

create_doc(country = "India", ccode = "IND", year = "2016", suffix = "_r62", data = ppiIND2016_r62, varList = varList)


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

create_doc(country = "India", ccode = "IND", year = "2016", suffix = "_r66", data = ppiIND2016_r66, varList = varList)


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

create_doc(country = "India", ccode = "IND", year = "2016", suffix = "_r68", data = ppiIND2016_r68, varList = varList)


################################################################################
#
# Indonesia - legacy
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Indonesia", ccode = "IDN", year = "2012", data = ppiIDN2012, varList = varList)


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

create_doc(country = "Indonesia", ccode = "IDN", year = "2012", suffix = "_a", data = ppiIDN2012_a, varList = varList)


################################################################################
#
# Ivory Coast
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100%)",
             "National poverty line (150%)",
             "National poverty line (200%)",
             "USAID extreme poverty",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.00 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2011)",
             "Below $8.00 per day purchasing power parity (2011)")

create_doc(country = "Ivory Coast", ccode = "CIV", year = "2013", data = ppiCIV2013, varList = varList)


################################################################################
#
# Ivory Coast PPI 2018
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100%)",
             "National poverty line (150%)",
             "National poverty line (200%)",
             "Below $1.00 per day purchasing power parity (2011)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Ivory Coast", ccode = "CIV", year = "2018",  data = ppiCIV2018, varList = varList)


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

create_doc(country = "Jordan", ccode = "JOR", year = "2010", data = ppiJOR2010, varList = varList)


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

create_doc(country = "Kenya", ccode = "KEN", year = "2011", data = ppiKEN2011, varList = varList)


################################################################################
#
# Kenya - PPI
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.00 per day purchasing power parity (2011)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $8.00 per day purchasing power parity (2011)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Kenya", ccode = "KEN", year = "2018", data = ppiKEN2018, varList = varList)


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

create_doc(country = "Kyrgyzstan", ccode = "KGZ", year = "2015", data = ppiKGZ2015, varList = varList)


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

create_doc(country = "Madagascar", ccode = "MDG", year = "2015", data = ppiMDG2015, varList = varList)


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

create_doc(country = "Malawi", ccode = "MWI", year = "2015", suffix = "_pbm", data = ppiMWI2015_pbm, varList = varList)


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

create_doc(country = "Malawi", ccode = "MWI", year = "2015", suffix = "_gov", data = ppiMWI2015_gov, varList = varList)


################################################################################
#
# Malawi - legacy
#
################################################################################

varList <- c("PPI score",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Malawi", ccode = "MWI", year = "2015", data = ppiMWI2015, varList = varList)


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

create_doc(country = "Mali", ccode = "MLI", year = "2010", data = ppiMLI2010, varList = varList)


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

create_doc(country = "Mexico", ccode = "MEX", year = "2017", data = ppiMEX2017, varList = varList)


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

create_doc(country = "Mexico", ccode = "MEX", year = "2017", suffix = "_a", data = ppiMEX2017_a, varList = varList)


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

create_doc(country = "Mongolia", ccode = "MNG", year = "2016", data = ppiMNG2016, varList = varList)


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

create_doc(country = "Morocco", ccode = "MAR", year = "2013", data = ppiMAR2013, varList = varList)


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

create_doc(country = "Mozambique", ccode = "MOZ", year = "2013", data = ppiMOZ2013, varList = varList)

################################################################################
#
# Mozambique - new 2019 PPI tables
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $8.00 per day purchasing power parity (2011)",
             "Below $11.00 per day purchasing power parity (2011)",
             "Below $15.00 per day purchasing power parity (2011)",
             "Below $21.70 per day purchasing power parity (2011)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Mozambique", ccode = "MOZ", year = "2019", data = ppiMOZ2019, varList = varList)

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

create_doc(country = "Myanmar", ccode = "MMR", year = "2012", data = ppiMMR2012, varList = varList)

################################################################################
#
# Myanmar - new 2019 PPI tables
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $8.00 per day purchasing power parity (2011)",
             "Below $11.00 per day purchasing power parity (2011)",
             "Below $15.00 per day purchasing power parity (2011)",
             "Below $21.70 per day purchasing power parity (2011)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Myanmar", ccode = "MMR", year = "2019", data = ppiMMR2019, varList = varList)

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

create_doc(country = "Namibia", ccode = "NAM", year = "2013", data = ppiNAM2013, varList = varList)


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

create_doc(country = "Nepal", ccode = "NPL", year = "2013", suffix = "_a", data = ppiNPL2013_a, varList = varList)


################################################################################
#
# Nepal - legacy
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)")

create_doc(country = "Nepal", ccode = "NPL", year = "2013", data = ppiNPL2013, varList = varList)


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

create_doc(country = "Nicaragua", ccode = "NIC", year = "2013", data = ppiNIC2013, varList = varList)


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

create_doc(country = "Niger", ccode = "NER", year = "2013", data = ppiNER2013, varList = varList)


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

create_doc(country = "Nigeria", ccode = "NGA", year = "2015", data = ppiNGA2015, varList = varList)


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

create_doc(country = "Palestine", ccode = "PSE", year = "2014", data = ppiPSE2014, varList = varList)


################################################################################
#
# Pakistan
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (50)",
             "National poverty line (75)",
             "National poverty line (125)",
             "National poverty line (200)",
             "USAID extreme poverty",
             "Poorest half below 100 national",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $3.75 per day purchasing power parity (2005)")

create_doc(country = "Pakistan", ccode = "PAK", year = "2009", data = ppiPAK2009, varList = varList)


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

create_doc(country = "Paraguay", ccode = "PRY", year = "2012", data = ppiPRY2012, varList = varList)


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

create_doc(country = "Peru", ccode = "PER", year = "2012", data = ppiPER2012, varList = varList)


################################################################################
#
# Peru - PPI - 2018
#
################################################################################

varList <- c("PPI score",
             "Extreme national poverty line",
             "National poverty line (100%)",
             "National poverty line (150%)",
             "National poverty line (200%)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $8.00 per day purchasing power parity (2011)",
             "Below $11.00 per day purchasing power parity (2011)",
             "Below $15.00 per day purchasing power parity (2011)",
             "Below $21.70 per day purchasing power parity (2011)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Peru", ccode = "PER", year = "2018",  data = ppiPER2018, varList = varList)


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

create_doc(country = "Philippines", ccode = "PHL", year = "2014", data = ppiPHL2014, varList = varList)


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

create_doc(country = "Philippines", ccode = "PHL", year = "2014", suffix = "_a", data = ppiPHL2014_a, varList = varList)


################################################################################
#
# Philippines - ppi - 2018
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $8.00 per day purchasing power parity (2011)",
             "Below $11.00 per day purchasing power parity (2011)",
             "Below $15.00 per day purchasing power parity (2011)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Philippines", ccode = "PHL", year = "2018", data = ppiPHL2018, varList = varList)

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

create_doc(country = "Romania", ccode = "ROU", year = "2009", data = ppiROU2009, varList = varList)


################################################################################
#
# Russia
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "USAID extreme poverty",
             "Below $6.25 per day purchasing power parity (2005)")

create_doc(country = "Russia", ccode = "RUS", year = "2010", data = ppiRUS2010, varList = varList)


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

create_doc(country = "Rwanda", ccode = "RWA", year = "2016", data = ppiRWA2016, varList = varList)


################################################################################
#
# Rwanda - new 2019 PPI tables
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $8.00 per day purchasing power parity (2011)",
             "Below $11.00 per day purchasing power parity (2011)",
             "Below $15.00 per day purchasing power parity (2011)",
             "Below $21.70 per day purchasing power parity (2011)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Rwanda", ccode = "RWA", year = "2019", data = ppiRWA2019, varList = varList)


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

create_doc(country = "Senegal", ccode = "SEN", year = "2009", data = ppiSEN2009, varList = varList)


################################################################################
#
# Senegal - PPI
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "Food poverty line",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.00 per day purchasing power parity (2011)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Senegal", ccode = "SEN", year = "2018", data = ppiSEN2018, varList = varList)


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

create_doc(country = "Sierra Leone", ccode = "SLE", year = "2011", data = ppiSLE2011, varList = varList)


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

create_doc(country = "Sri Lanka", ccode = "LKA", year = "2016", data = ppiLKA2016, varList = varList)


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

create_doc(country = "South Africa", ccode = "ZAF", year = "2009", data = ppiZAF2009, varList = varList)


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

create_doc(country = "Syria", ccode = "SYR", year = "2010", data = ppiSYR2010, varList = varList)


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

create_doc(country = "Tanzania", ccode = "TZA", year = "2016", data = ppiTZA2016, varList = varList)


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

create_doc(country = "Tajikistan", ccode = "TJK", year = "2015", data = ppiTJK2015, varList = varList)


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

create_doc(country = "Timor Leste", ccode = "TLS", year = "2013", data = ppiTLS2013, varList = varList)


################################################################################
#
# Togo - ppi - 2018
#
################################################################################

varList <- c("PPI score",
             "National poverty line (100)",
             "National poverty line (150)",
             "National poverty line (200)",
             "Below $1.00 per day purchasing power parity (2011)",
             "Below $1.90 per day purchasing power parity (2011)",
             "Below $3.20 per day purchasing power parity (2011)",
             "Below $5.50 per day purchasing power parity (2011)",
             "Below $1.25 per day purchasing power parity (2005)",
             "Below $2.50 per day purchasing power parity (2005)",
             "Below $5.00 per day purchasing power parity (2005)",
             "Below 20th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Togo", ccode = "TGO", year = "2018", data = ppiTGO2018, varList = varList)


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

create_doc(country = "Uganda", ccode = "UGA", year = "2015", data = ppiUGA2015, varList = varList)


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

create_doc(country = "Vietnam", ccode = "VNM", year = "2009", data = ppiVNM2009, varList = varList)


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

create_doc(country = "Yemen", ccode = "YEM", year = "2009", data = ppiYEM2009, varList = varList)


################################################################################
#
# Zambia - Göttingen - 2013
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

create_doc(country = "Zambia", ccode = "ZMB", year = "2013_got", data = ppiZMB2013_got, varList = varList)


################################################################################
#
# Zambia - CSO - 2013
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

create_doc(country = "Zambia", ccode = "ZMB", year = "2013_cso", data = ppiZMB2013_cso, varList = varList)


################################################################################
#
# Zambia - legacy - 2017
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
             "Median poverty line",
             "Below 20th percentile poverty line",
             "Below 50th percentile poverty line",
             "Below 40th percentile poverty line",
             "Below 60th percentile poverty line",
             "Below 80th percentile poverty line")

create_doc(country = "Zambia", ccode = "ZMB", year = "2017", data = ppiZMB2017, varList = varList)


################################################################################
#
# Zambia - ppi - 2017
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

create_doc(country = "Zambia", ccode = "ZMB", year = "2017_a", data = ppiZMB2017_a, varList = varList)





