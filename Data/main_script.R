  formatData <- function(x){
    x <- cbind(c(1:nrow(x)), x)
    colnames(x) <- c('list','xplane','yplane','zplane','time')
    #x$time <- x$time/1000
    #x$time <- as.POSIXct(x$time, origin = '1970-01-01')
    modulus <- (x$xplane*x$xplane) + (x$yplane*x$yplane) + (x$zplane*x$zplane)
    modulus <- sqrt(modulus);
    avgdiffx <- abs(x$xplane - mean(x$xplane))
    avgdiffy <- abs(x$yplane - mean(x$yplane))
    avgdiffz <- abs(x$zplane - mean(x$zplane))
    x <- cbind(x, modulus, avgdiffx, avgdiffy, avgdiffz)
  }
  
  createGraph <- function(file){
    library(ggplot2)
    gr <- ggplot(data = file, aes(x = list))
    gr <- gr + geom_path(aes(y = xplane), colour = 'red')
    gr <- gr + geom_path(aes(y = yplane), colour = 'green')
    gr <- gr + geom_path(aes(y = zplane), colour = 'blue')
    gr <- gr + xlab("") + ylab("Accelerometer Readings")
    return (gr)
  }
  
  file <- read.csv("~/Activity-Recognition/Server/test.csv", header = FALSE, sep = '\t')
  file <- formatData(file)
  graph <- createGraph(file)

  vec <- vector()
  start <- file$list[1]
  end <- file$list[100]
  while(end <= file$list[nrow(file)] & start!=end){
    sset <- subset(file, list>start & list<end) 
    rangex <- abs(max(sset$xplane) - min(sset$xplane))
    rangey <- abs(max(sset$yplane) - min(sset$yplane))
    rangez <- abs(max(sset$zplane) - min(sset$zplane))
    if(rangex < 2 & rangey <2 & rangez < 2){
      if(mean(sset$zplane)>8 & mean(sset$zplane)<11){
        for(i in start:end){
          vec[i] <- 'sitting'
        }
      }
      else{
        for(i in start:end)
          vec[i] <- 'standing'
      }
    }
    else{
      if(mean(sset$yplane)>7 & sd(sset$yplane)>mean(sset$yplane)){
        for(i in start:end){
          vec[i] <- 'jogging'
        }
      }
      else{
        for(i in start:end)
          vec[i] <- 'walking'
      }
    }
    start <- end
    if(end + 100 > file$list[nrow(file)])
      end <- file$list[nrow(file)]
    else
      end <- end + 100
  }
 activity <- vec[file$list[1] : file$list[nrow(file)]]
 file <-cbind(file,activity)
 file$activity <- as.character(file$activity)
 
 remove(start)
 remove(end)
 remove(i)
 remove(vec)
 remove(rangex)
 remove(rangey)
 remove(rangez)
 remove(activity)
 remove(sset)

 s <- vector()
 v <- vector()
 t <- vector()
 a <- file$activity[1]
 v[1] <- file$activity[1]
 t[1] <- file$time[1]
 s[1] <- file$list[1]
 
 for(i in seq(file$list[1],file$list[nrow(file)],100)){
   if(file$activity[i] != a){
     v[i] <- file$activity[i]
     t[i] <- file$time[i]
     s[i] <- file$list[i]
     a <- file$activity[i]
   }
 }
 v <- v[!is.na(v)]
 s <- s[!is.na(s)]
 t <- t[!is.na(t)]
 t <- t/1000
 t <- as.POSIXct(t, origin = '1970-01-01')
 info <- data.frame(s,v,t)
 colnames(info) <- c('samplenumber','activitydone', 'startingtime')
 remove(t)
 remove(v)
 remove(i)
 remove(a)
 remove(s)
