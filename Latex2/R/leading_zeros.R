count_leading_zeros <- function(number) {
  number_string <-
    sprintf("%.16f", number)  # Convert number to string
  print(number_string)
  leading_zeros <- 0
  decimal_point_found <- FALSE
  
  for (char in strsplit(number_string, "")[[1]]) {
    if (char == "0") {
      leading_zeros <- leading_zeros + 1
    } else if (char == ".") {
      decimal_point_found <- TRUE
    } else if (char == '-') {
      next
    } else {
      break
    }
  }
  
  if (decimal_point_found) {
    leading_zeros <-
      leading_zeros - 1  # Exclude the decimal point from the count
  }
  
  return(leading_zeros)
}

# if (min(filtered_data$value) < 0) {
#   exponent <- count_leading_zeros(min(filtered_data$value))
# } else {
#   exponent <- count_leading_zeros(max(filtered_data$value))
# }
# filtered_data$value <- round(filtered_data$value * 10^(exponent),3)

# annotate("text", x = -1, y = max(filtered_data$value)+1, label = paste0("$\\times 10^{", exponent, "}$"), hjust = 0) +
# coord_cartesian(xlim = c(0, 20), ylim = c(0,1),  clip = 'off') +
