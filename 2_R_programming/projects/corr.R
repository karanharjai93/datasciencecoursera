corr<-function(direc,threshold=0)
{
        #put the directory address where the data is present in setwd()
        setwd("E:/coursera/data science specialization by jhu/coure 2 -r programming/w2/specdata")
        filn<-dir()
        y<-as.matrix(complete())
        tresh<-y[,2]>threshold
        treshy<-y[tresh,]
        
        mea<-vector(mode="numeric",length =nrow(treshy))
        treshy_id<-treshy[,1]
        j<-1
        
        for(i in 1:length(treshy_id))
        {
                yo<-as.matrix(read.csv(filn[treshy_id[i]]))
                mo<-!is.na(yo[,2]) & !is.na(yo[,3])
                yo1<-yo[mo,]
                
                
                mea[j]<-cor(as.numeric(yo1[,2]),as.numeric(yo1[,3]))
                j<-j+1
                
                
        }
        
        mea
}
