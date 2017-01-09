
obsFileName <- function(directory, obs) {
  
  filename <- character(length(obs))
  for(i in 1:length(obs))
  {
    if (obs[i]<10) {
      filename[i] = paste(directory, "/","00", obs[i], ".csv", sep="")
    } else if (obs[i] >= 10 && obs[i] < 100) {
      filename[i] = paste(directory, "/", "0", obs[i], ".csv", sep="")
    } else {
      filename[i] = paste(directory, "/", obs[i], ".csv", sep="")
    }
  }
  return(filename)
}
