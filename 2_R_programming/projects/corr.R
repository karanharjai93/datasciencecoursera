corr<-function(direc,threshold=0)
{
        #put the directory address where the data is present in setwd()
        setwd("E:/coursera/data science specialization by jhu/coure 2 -r programming/w2/specdata")
        filn<-dir()  #store the name of all csv's in a charecter vector
        y<-as.matrix(complete()) #take all the complete rows of all the csv's as a matrix
        tresh<-y[,2]>threshold #logical vector for selecting all the csv's having complete rows greater then threshold
        treshy<-y[tresh,]  # select all the csv's having complete rows greater then threshold
        
        mea<-vector(mode="numeric",length =nrow(treshy)) #create an empty vector
        treshy_id<-treshy[,1] 
        j<-1
        
        for(i in 1:length(treshy_id))
        {
                yo<-as.matrix(read.csv(filn[treshy_id[i]])) #read the desired csv
                mo<-!is.na(yo[,2]) & !is.na(yo[,3])
                yo1<-yo[mo,]
                
                
                mea[j]<-cor(as.numeric(yo1[,2]),as.numeric(yo1[,3])) #calculate the correlation and save in the vector mea
                j<-j+1
                
                
        }
        
        mea
}
