#Sum of squares
s=0
 for (i in 1:10000)
    {s=s+i^2}
 s
#better way of handling in R
 sum((1:10000)^2)
 #data storage
 m<-c(100,-23,3.4,56/34)
 m
#to view slice of the data
 m[2:4]
#logical expressions
 n<-c(23,34,-34,0,-12,10)
 n[n<0]
#matrix
m<-c(12,34,9,1)
 A<-matrix(m,byrow=TRUE,2)
A
#inverse of the matrix
 A^-1
#list of data
 v<-list(A,"Try This",pi)
v
#declaration of  data 
word<-c("data","stats","Sentiment","Analysis","Social","Networking","Visualize",
     "Big data","Graphics","Maths","Algorithms","Machine", "Learning","Classification",
     "Clustering","Grouping","Mining","Text")

f<-c( 78,  40, 172 ,147, 213, 101, 217,  29, 149, 174, 213, 166, 265 ,215,56, 109,  80,   260)
#data.frame declaration
d<-data.frame( Word=word, Freq=f)
d
 # to install package
 install.packages("wordcloud", dependencies=TRUE)
library(wordcloud)
#draw word cloud 
wordcloud(word,f,scale=c(4,1),Inf,random.order=FALSE)
wordcloud(word,f,scale=c(4,1),Inf,random.order=FALSE,col=rainbow(24))