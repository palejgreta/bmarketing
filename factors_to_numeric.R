# Weber : check factor levels
factor_to_num<- function(input_data){
  stopifnot(("day_of_week" %in% colnames(bmarketing)) || ("month" %in% colnames(input_data)))

  levels(input_data$day_of_week) <- c("mon", "tue", "wed", "thu", "fri", "sat", "sun")
  levels(input_data$month) <- c("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")
  
  #reorder(input_data$day_of_week, c("mon", "tue", "wed", "thu", "fri", "sat", "sun"))
  #reorder(input_data$month, c("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"))
  
  input_data
}

