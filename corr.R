corr <- function(directory, threshold = 0) {
  
  source("complete.R")
  
  observations <- complete(directory, 1:332)
  
  result <- numeric()
  
  for (i in observations$id[observations$nobs > threshold]){
    filename <- obsFileName(directory, i)
    data <- read.csv(filename)
    result <- c(result, cor(data$sulfate, data$nitrate, use="complete.obs"))
  }
  result
}