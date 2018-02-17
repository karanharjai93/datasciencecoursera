pollutantmean<-function(direc,com,len=1:332)
{               #put the directory address where the data is present in setwd()

        setwd("E:/coursera/data science specialization by jhu/coure 2 -r programming/w2/specdata")
        filn<-dir() #store the name of all csv's in a charecter vector
        mea<-vector(mode="numeric") #create an empty numeric vector
        j<-1
        
        for(i in len)
        {
                yo<-as.matrix(read.csv(filn[i])) #read the desired csv's
                mo<-as.numeric(yo[,com]) # extract the data of desired polutant
                mea<-c(mea,mo)         # append all the values from all the csv's in a single vector
                
        }
        final_mean<-mean(mea,na.rm=TRUE) # calculate the final mean
        print(final_mean)
        
}
