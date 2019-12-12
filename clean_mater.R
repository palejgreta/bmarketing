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
  other_clean <- function(input_dat, col_skip = 0){
    # maybe a for cycle?
    for(j in 1:ncol(input_dat)) {
      if(j!=col_skip) {
        for(i in 1:nrow(input_dat)) {
          #print(input_dat[i,j])
          if(is.na(input_dat[i,j])==TRUE){
            cat("NA in Column ", j,"\n")
            i <- nrow(input_dat)+1
          }
        }
      }
    }
  }
  
  #test data.frame
  #test <- data.frame(c(NA, "test"), c(NA,1),c(1,2))
  #other_clean(test,3) 
  
  #Kopaczynski: Remove any columns (and report as warning) which contain more than 50% NA’s.
  col_del<-function(input_dat, target_col){
    
  }
  
}