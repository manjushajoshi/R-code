#Created by Manjusha Joshi for blog post on ggplot2-adv
#on 14 April, 2015
 
 
#Define    ggplot as:   ggplot(data,mapping) 
#Install ggplot2. On R konsole type install.package(ggplot2)
#to load the package in the current R session
library(ggplot2)
data(mtcars) #comes along  with ggplot2 library. 
#Know more about data set first 
 colnames(mtcars) 
  help(mtcars) 
  head(mtcars) 
   factor(mtcars$cyl) # will out put categories of cyl: number of cylinders for the car. You can see there are only 3 categories available.\\
 # ggplot(mtcars, aes(factor(cyl))) 
 # this will not plot the graph. So assign it to some variable first and then add some {\sf layer} of geom (geometry for data) like bar or line etc.
 #save it to some object like this:
 g <- ggplot(mtcars, aes(x=factor(cyl)))
g + geom_bar(fill ="green")
 

#By setting more options with geom we will get the coloured border.
 
g + geom_bar(fill = "green",color="violet",size=2)
  
#More options like width will adjust the width of the bars.

 
 g + geom_bar(fill = "green",color="violet",size=2,width=.5)
 
 #Observe that due to width=.5, bar width reduced to half of the original width.
 
 
#Interchanging  Co-ordinates}
 
g + geom_bar(fill = "green",color="violet",size=2,width=.5)+ coord_flip()
# defined formula
p<-ggplot(mtcars, aes(x = mpg^2, y = wt/cyl))
p+geom_point(color="magenta",size=4,shape=8) 
 
 
 #adding more layers
 p+geom_point(color="magenta",size=4,shape=8) +geom_line(color="green") +geom_jitter(color="yellow",size=2)
  
 #To plot the own data  
  a<-c(10,10,20,20,35,45,50,50,50)
  b<- a
  da<-data.frame(a,b)
  da
 q<-ggplot(da,aes(x=a,y=b))
 
 q+geom_point(color="red") 
 q+geom_jitter( color="blue")  
 
   p+geom_point(color="green",size=3) 
 

#To draw line for data points use  method="lm" 

 
p+geom_smooth(fill="purple",color="darkorange",size=2,method="lm") +geom_point()
p+geom_smooth(fill="purple",color="darkorange",size=2,method="lm",formula=y ~ poly(x,2))+geom_point()
  
 
p+geom_smooth(fill="red") 
 
 #Adds a smooth conditional mean   
 
 
ggplot(mtcars, aes(x = mpg^2, y = wt/cyl))+geom_smooth(fill="purple",color="darkorange",size=2)+geom_point(color="green")
 
ggplot(mtcars, aes(x = mpg^2, y = wt/cyl))+geom_smooth(fill="purple",color="darkorange",size=2)+geom_jitter(color="green",shape=2)+geom_point(color="yellow")
  
#Save plots in two variables say a and b. 
 a<-p+geom_point(color="green",size=3) 
 
b<-p+ geom_smooth(fill="purple",color="darkorange",size=2,method="lm",formula=y ~ poly(x,2)) +  geom_point()  
#Now define new pdf file as:
  pdf("tryvp.pdf",width=4,height=4) 
# Then define subwindow with viewport() function. 
subvp<-viewport(width=.4,height=.4,x=.75,y=.35) 
 #Now open main graph which was stored in b with typing b on the prompt.
  b
# Now superimpose graph stored in a on viewport as:
  print(a,vp=subvp) 
# Redirect graphical device back to console.
  graphics.off() 
 # Open tryvp.pdf to see the out put of the graphics a 
 #superimposed on graphics b.
 
p <- ggplot(mpg, aes(displ, hwy))
p + geom_jitter(aes(colour = cyl))
#Multiple graph together with facet 
 
p <- ggplot(mtcars)
p + geom_point(aes(x = wt, y = mpg, colour=factor(cyl)),size=3)+ facet_wrap(~ gear)
 
 
factor(mtcars$cyl)
 
factor(mtcars$gear)
 
 #With library gridExtra it is possible to add two independent graphs in one table of graphs. One needs to install the package \verb|gridExtra|.
  
#install.package(gridExtra) for the first time 
library(gridExtra)
grid.arrange( plot1,  plot2, ncol=2)
