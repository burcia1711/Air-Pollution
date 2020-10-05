complete <- function(directory, id = 1:332){
  mylist <- list.files(path=directory, pattern=".csv")  
  nobs <- numeric()
  for(i in id){
    allData <- read.csv(paste(directory, mylist[i],sep=""))
    sum <- sum(complete.cases(allData))
    nobs <-c(nobs, sum)
  }
  data.frame(id,nobs)
}
