pollutantmean <- function(directory, pollutant, id = 1:332){
    allFiles <- list.files(path=directory, pattern=".csv")  
    x <- numeric()
    for(i in id){
      allData <- read.csv(paste(directory, allFiles[i],sep=""))
      x <- c(x,allData[[pollutant]])
    }
    mean(x, na.rm = TRUE)
}


