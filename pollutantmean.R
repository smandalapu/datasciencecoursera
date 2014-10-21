pollutantmean<-function(directory,pollutant,id=1:332) {
  dir<-character(1)
  pol<-character(1)
  dir<-paste(directory)
  pol<-paste(pollutant)
  files=paste(directory,"/",formatC(id,width=3,flag="0"),".csv",sep="")
#   print(files)
  data<-lapply(files,function(x) read.csv(x))
  data_rbind <- do.call("rbind", data)
#   print(nrow(data_rbind))
  mean(data_rbind[[pol]],na.rm=TRUE)
}