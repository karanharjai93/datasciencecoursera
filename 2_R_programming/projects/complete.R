complete<-function(direc,len=1:332)
{
        #put the directory address where the data is present in setwd()
        
        setwd("E:/coursera/data science specialization by jhu/coure 2 -r programming/w2/specdata")
        filn<-dir()
        mea<-vector(mode="numeric",length =length(len))
        j<-1
        
        for(i in len)
        {
                yo<-read.csv(filn[i])
                mo<-!is.na(yo["sulfate"]) & !is.na(yo["nitrate"])
                mea[j]<-sum(mo)
                j<-j+1
                
                
        }
        
        data.frame(id = len,nobs=mea)
}
