#Try command one by one
#to check current working directory
getwd()
#to set the directory in which the textsample.txt file is stored
# setwd("/home/manjusha/data/")
#on windows
#setwd("C:\Downloads\data")
#To read file content in variable fdata
fdata<- scan("textsample.txt", what="")
#To see the first few entires of the file
   head(fdata)
 # To ocnvert all words in lower cases
 fdata<-tolower(fdata)  
#table command to count frequncy of the words in file 
 ft<-table(fdata)
#T see the pie graph of the words based on the frequency
 pie(ft)
#Max will return the maximum frequncy found
 max(ft)
 #See some starting values of ft
 head(ft)
#plot dots for words Vs frequency
 dotchart(ft)
#To read csv file use the command
 read.csv("test.csv",header=FALSE)
 #read.table is another command
 read.table("test.csv",header=TRUE)
#To fetch data directly from web
   data1<-read.table( "http://lib.stat.cmu.edu/datasets/csb/ch3a.dat")
   head(data1)
#other way
   data2<-read.csv( "http://lib.stat.cmu.edu/datasets/csb/ch3a.dat")
 head(data2)
#to read xls file 
 install.packages("gdata")
 library(gdata)
 read.xls("test.xls")
#to open R data editor
 x<-edit(as.data.frame(NULL))|
 #To see data sets in R
 data()
 #To open specific data
 data(Airpassengers)
 #To see help of the data
 help(AirPassengers)
 #to view the data
 head(AirPassengers)
