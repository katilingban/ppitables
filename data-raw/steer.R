steer <- read.csv("data-raw/steer.csv")

devtools::use_data(steer, internal = TRUE, overwrite = TRUE)
