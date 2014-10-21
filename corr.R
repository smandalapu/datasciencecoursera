corr<-function(directory,threshold=0) {
  source("complete.R")
  data_complete<-complete(directory)
  ids<-data_complete$id[data_complete$nobs>threshold]
  data_cor=numeric()
  if (length(ids) > 1) {
    files=paste(directory,"/",formatC(ids,width=3,flag="0"),".csv",sep="")
    data<-lapply(files,function(x) read.csv(x))
    data_rbind <- do.call("rbind", data)
    data_cor<-sapply(ids,function(y) cor(data_rbind$sulfate[data_rbind$ID==y],
                                       data_rbind$nitrate[data_rbind$ID==y],
                                       use="complete.obs"))
  }
  data_cor
}