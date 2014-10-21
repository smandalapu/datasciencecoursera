complete<-function(directory,id=1:332) {
  dir<-paste(directory)
  files=paste(directory,"/",formatC(id,width=3,flag="0"),".csv",sep="")
#   print(files)
  data<-lapply(files,function(x) read.csv(x))
  data_rbind <- do.call("rbind", data)
#   print(nrow(data_rbind))
  data_complete <- data.frame(id=numeric(),nobs=numeric())
  for (y in unique(data_rbind$ID)) {
    data_complete<-rbind(data_complete,data.frame(id=y,nobs=sum(complete.cases(data_rbind[data_rbind$ID==y,]))))
  }
  data_complete
}