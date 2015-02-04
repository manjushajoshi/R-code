 #To plot points  command is 
 plot(c(3,12,15),c(23,1,14))
   
 #To plot Pie graph  use command   
 pie(1:10,col=rainbow(10))
    
 # To plot functions. Use command  
 curve(sin(x),-3,3,col=3) 
 
#To see how many colours can be generated.
palette()  
 
#to plot contour from   inbuilt dataset
 data(volcano)
 image(volcano)
 contour(volcano)
 filled.contour(volcano)
 
# Input numerical data in matrix. 
year.stud<-matrix(c(2810,890,540,3542,1363,471,4301,
1663,652,5363, 2071,895, 6567,2752,1113),byrow=T,ncol=3)
# add appropriate row names    
rownames(year.stud)=c("1996","1997","1998", "1999","2000")
# add appropriate  column names.  
colnames(year.stud)=c("Management","Commerce", "Science")
#to display the data
year.stud
 #To plot bar graph of the data 
barplot(t(year.stud),col=c("red","gray80","yellow"))
barplot(t(year.stud),col=c("red","gray80","yellow"),beside=TRUE)
#generate  data using rep (repeat) function in R
a<-rep(1:10,1:10)
a

 #To plot repeated data 
 sunflowerplot(a,a)   
  
#To install it this should be done for first time use
#install.packages(''ggplot2'') 
#to use it for the new session you need to load it   
 library(ggplot2) 
 
#diamonds is data set in ggplot2.  
#carat and price are two columns in it. 
# Plots graph of carat Vs price of diamonds.
 
 #default plot with qplot in ggplot2
 qplot(carat,price,data=diamonds,colour=color)
 
# histogram 
qplot(carat,data=diamonds,fill=color,geom="histogram")
 
#density plot 
qplot(carat,data=diamonds,colour=color,geom="density")
  
