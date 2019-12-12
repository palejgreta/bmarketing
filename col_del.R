col_del <- function(input_dat, target_col="y"){
  
  
  input_dat_new <- as.data.frame(input_dat)
  sum_NA <- apply(input_dat_new[, colnames(input_dat_new) != target_col], 2, function(x) sum(is.na(x))/length(x))
  ind <- (sum_NA <= 0.5)
  col_names <- names(sum_NA)[ind]
  input_dat_new <- input_dat_new[, col_names]
  input_dat_new <- cbind(input_dat_new, input_dat)
  invisible(input_dat_new)
  
}