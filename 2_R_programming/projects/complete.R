complete<-function(direc,len=1:332)
{
        #put the directory address where the data is present in setwd()
        
        setwd("E:/coursera/data science specialization by jhu/coure 2 -r programming/w2/specdata")
        filn<-dir() #store the name of all csv's in a charecter vector
        mea<-vector(mode="numeric",length =length(len)) #create an empty numeric vector
        j<-1
        
        for(i in len)
        {
                yo<-read.csv(filn[i]) #read the desired csv's 
                mo<-!is.na(yo["sulfate"]) & !is.na(yo["nitrate"]) #logical expression for evaluating complete rows
                mea[j]<-sum(mo) # sum of all the true values(i.e 1's) indicating total number of complete rows
                j<-j+1
                
                
        }
        
        data.frame(id = len,nobs=mea)
}
