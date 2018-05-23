



find_table <- function(region = NULL,
                       country = NULL,
                       type = NULL) {
  if(is.null(region) & is.null(country) & is.null(type)) {
    table_list <- as.tibble(steer)
  }

  if(!is.null(region) & is.null(country) & is.null(type)) {
    table_list <- as.tibble(steer[steer$region == region, ])
  }

  if(is.null(region) & !is.null(country) & is.null(type)) {
    table_list <- as.tibble(steer[steer$country == country, ])
  }

  if(is.null(region) & is.null(country) & !is.null(type)) {
    table_list <- as.tibble(steer[steer$type == type, ])
  }

  if(!is.null(region) & !is.null(country) & is.null(type)) {
    table_list <- as.tibble(steer[steer$region == region & steer$country == country, ])
  }

  if(!is.null(region) & is.null(country) & !is.null(type)) {
    table_list <- as.tibble(steer[steer$region == region & steer$type == type, ])
  }

  if(is.null(region) & !is.null(country) & !is.null(type)) {
    table_list <- as.tibble(steer[steer$country == country & steer$type == type, ])
  }

  if(!is.null(region) & !is.null(country) & !is.null(type)) {
    table_list <- as.tibble(steer[steer$region == region & steer$country == country & steer$type == type, ])
  }

  return(table_list)

}
