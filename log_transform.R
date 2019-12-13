#Fellner

#name of the sript: log_transform.R
log_fun<- function(input_data){
  for (i in 1: ncol(input_data)){ 
    if(is.numeric(input_data[,i]) && min(input_data[,i])>0){
        input_data[,i] = log(input_data[,i])
    }
  } 
  input_data
}

