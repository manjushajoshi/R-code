
 #Code to work along with the post Drawing Quick Plots With ggplot2: R Package
 #created on 21st March, 2015 by Manjusha Joshi
 #--------------------------------------------------------------------------------------------------------------------------------------
# We need to install package ggplot2 once, with  the command install.packages(ggplot2).
# to load it in the session use command

 library(ggplot2)
 
 # start with the inbuilt data available in R. No need to install it form anywhere.
 
 data(women)
 colnames(women)
 
 
#This will display column names in the data.
#With head command one can view the data.
 
 head(women)
 
#We can see that in data set "women" there are 2 parameters height and weight.
 	
#So let us pass these parameters to qplot().
  qplot(height,weight,data=women)
 
 
#By default it plots data in terms of points.
#Here it is height Vs weight.

  qplot(height,weight,data=women,geom=c("point","line"))
 
 
 # Try out one of the parameter with color command. Like this:
 
  qplot(height,weight,data=women,color=height)
 
 

#Notice that we are getting information of height as colour shading changes with respect to height. Also legends get added.

#Even we can get more information by adding options size after color.

 
  qplot(height,weight,data=women,color=height,size=weight)
 
 



 
#Let us have a look into the data set "iris". It contents information of flowers.
#Look at the different columns the data has. 
 
 data(iris)
 colnames(iris)
#[1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"     
 
 

#Earlier we used only 2 columns. Now the effect of third information we can see by passing it with colour. 
 
  qplot(Sepal.Length, Petal.Length, data = iris, geom = "point", color = Species)
 
#see which      different Species are there in the iris data set.

  levels(iris$Species)
  
 
 


#This will plot histogram of Sepal.Length with count of  it.
 
qplot(Sepal.Length,data=iris,geom="histogram")
 



# considering single column Sepal.Length we can use option fill=Species.
 
 
 qplot(Sepal.Length,data=iris,geom="histogram",fill=Species)
 

 
#See the different column names it is holding by 
 
colnames(Orange)
 
#To see the data it is holding, type the command

head(Orange)
 
#Now let us plot the graph with age Vs circumference of the data= Orange with respect to colour varies as per the Tree vary.

qplot(age, circumference, data = Orange, geom = c("point", "line"), color = Tree)
 
#R provide the way to store the graphics.
 
pdf("figfilename.pdf")
qplot(age,circumference,data=Orange)
graphics.off()
