formatData <- function(x){
  x <- cbind(c(1:nrow(x)), x)
  colnames(x) <- c('list','xplane','yplane','zplane','time')
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

displayAverages <- function(file){
  ax <- mean(file$xplane)
  ay <- mean(file$yplane)
  az <- mean(file$zplane)
  sx <- sd(file$xplane)
  sy <- sd(file$yplane)
  sz <- sd(file$zplane)
  aadx <- mean(file$avgdiffx)
  aady <- mean(file$avgdiffy)
  aadz <- mean(file$avgdiffz)
  arr <- c(ax,ay,az,sx,sy,sz,aadx,aady,aadz)
  names(arr) <- c('Avg acc x','Avg acc y','Avg acc z','Std x','Std y','Std z','Avg abs diff x','Avg abs diff y','Avg abs diff z')
  arr
}

range <- function(file){
  rx <- abs(max(file$xplane) - min(file$xplane))
  ry <- abs(max(file$yplane) - min(file$yplane))
  rz <- abs(max(file$zplane) - min(file$zplane))
  arr <- c(rx,ry,rz)
  names(arr) <- c('Range x','Range y','Range z')
  arr
}

source("~/Activity-Recognition/Data/datascript_standingsamples.R")
source("~/Activity-Recognition/Data/datascript_sittingsamples.R")
source("~/Activity-Recognition/Data/datascript_walkingsamples.R")
source("~/Activity-Recognition/Data/datascript_joggingsamples.R")
