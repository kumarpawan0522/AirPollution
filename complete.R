complete <- function(directory, id = 1:332) {
  
  
  comp <- data.frame(id=numeric(), nobs=numeric())
  
  for (i in id) {
    filename <- obsFileName(directory, i)
    data <- read.csv(filename)
    #comp <- rbind(comp, data.frame(id=i, nobs=nrow(data[complete.cases(data), ])))
    v <-  complete.cases(data)
    
    
    comp <- rbind(comp, data.frame(id=i, nobs=length(v[v==TRUE])))
  }
  
  comp
}