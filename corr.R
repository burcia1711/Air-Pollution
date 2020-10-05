corr <- function(directory, threshold = 0){
  df <- complete(directory)
  ids <- which(df$nobs>threshold)
  mylist <- list.files(path=directory, pattern=".csv")  
  corrr <- c()
  inc <- 1
  
  if(length(ids) == 0){
    corrr
  }
  for(i in ids){
    mydata <- read.csv(paste(directory, mylist[i],sep=""))
    myNoNAdata <- na.omit(mydata)
    corrr[inc] <- cor(myNoNAdata[,2], myNoNAdata[,3])
    inc <- inc + 1
  }
  
  corrr
}