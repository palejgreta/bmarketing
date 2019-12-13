data_cleaner<- function(input_dat, target_col, col_skip){
  
  
  # Fellner: return an error if the target variable contains any missing values (NA’s).
  target_clean <- function(input_dat, target_col="y"){
    # input_dat=bmarketing
    if(length(which(is.na(input_dat$target_col)==TRUE)>0)){
      stop("Missing Value found in the specified column")
    } else{
      return("All okay: No Missing Value found in the specified column")
    }
  }
  out_target_clean<-target_clean(input_dat,target_col)
  
  #Weber: Give clear warnings for all other variables which contain NA’s.
  other_clean <- function(input_dat, col_skip = 0){
    # maybe a for cycle?
    for(j in 1:ncol(input_dat)) {
      if(j!=col_skip) {
        for(i in 1:nrow(input_dat)) {
          #print(input_dat[i,j])
          if(is.na(input_dat[i,j])==TRUE){
            cat("NA in Column ", j,"\n")
            break
          }
        }
      }
    }
  }
  other_clean(input_dat, col_skip)
  #test data.frame
  #test <- data.frame(c(NA, "test"), c(NA,1),c(1,2))
  #other_clean(test,3) 
  
  #Kopaczynski: Remove any columns (and report as warning) which contain more than 50% NA’s.
  col_del <- function(input_dat, target_col="y"){
    
    input_dat_new <- as.data.frame(input_dat)
    sum_NA <- apply(input_dat_new[, colnames(input_dat_new) != target_col], 2, function(x) sum(is.na(x))/length(x))
    ind <- (sum_NA <= 0.5)
    col_names <- names(sum_NA)[ind]
    input_dat_new <- input_dat_new[, col_names]
    input_dat_new <- cbind(input_dat_new, input_dat[, "y"])
    colnames(input_dat_new)[ncol(input_dat_new)] <- "y"
    invisible(input_dat_new)
    
    
  }
  
  
  return(list(x=col_del(input_dat,target_col), y=out_target_clean))
  
}