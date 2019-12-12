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
  col_del<-function(input_dat, target_col){
    
  }
  
}