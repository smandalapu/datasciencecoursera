add2<-function(x,y){
  x+y
}
above10<-function(x) {
  use<-x>10
  x[use]
}

above<-function(x,n){
  use<-x>n
  x[use]
}

colmean <-function(x,removeNA=TRUE) {
  nc<-ncol(x)
  means<-numeric(nc)
  airquality$Ozone[!is.na(airquality$Ozone)]
  mean(airquality$Solar.R[airquality$Ozone>31 & airquality$Temp>90],na.rm=TRUE)
  for(i in 1:nc) {
    means[i] <- mean(x[,i],na.rm=removeNA)
  }
}

x<-1:10
if(x>5) {
  x<-0
}