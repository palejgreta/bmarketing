data_cleaner<- function(){
  
  
  # Fellner: return an error if the target variable contains any missing values (NA’s).
  target_clean <- function(input_dat, target_col="y"){
    # input_dat=bmarketing
    if(length(which(is.na(input_dat$target_col)==TRUE)>0)){
      stop("Missing Value found in the specified column")
    } else{
      return("All okay: No Missing Value found in the specified column")
    }
  }

  #Weber: Give clear warnings for all other variables which contain NA’s.
  other_clean <-function(input_dat, col_skip){
    # maybe a for cycle?
    
  }
  
  #Kopaczynski: Remove any columns (and report as warning) which contain more than 50% NA’s.
  col_del <- function(input_dat, target_col="y"){
    
    input_dat_new <- as.data.frame(input_dat)
    sum_NA <- apply(input_dat_new[, colnames(input_dat_new) != target_col], 2, function(x) sum(is.na(x))/length(x))
    ind <- (sum_NA <= 0.5)
    col_names <- names(sum_NA)[ind]
    input_dat_new <- input_dat_new[, col_names]
    input_dat_new <- cbind(input_dat_new, input_dat)
    invisible(input_dat_new)
    
  }
  
}