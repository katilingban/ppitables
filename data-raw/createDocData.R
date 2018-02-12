################################################################################
#
# Function to assist in creating documentation for datasets in an R package
#
################################################################################

create_doc <- function(data, varList) {

  cat("#' \\describe{ \n")
  for(i in 1:length(names(data))) {
    paste(cat("#' \\item{\\code{", names(data)[i], "}}{", varList[i], "} \n", sep = ""))
  }
  cat("#' } \n")
}

create_doc(ppiMatrixBGD)
