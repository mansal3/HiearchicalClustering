data(iris)
data<-iris
summary(iris)
str(iris)

#scaling dataset
irisscale<-scale(iris[,-5])
irisscale
str(irisscale)

#distance matrix which will calculate the distance from each datapoint to everyother
d<-dist(irisscale)
#by default it is eculidean distance


#hiearchical clutsering model
hlcustmodel<-hclust(d,"ward.D2")
hlcustmodel
plot(hlcustmodel,hang = -1)

#color the cluster
rect.hclust(hlcustmodel,3,border = "red")

#cluster membership
clusters<-cutree(hlcustmodel,3)
clusters
plot(iris,col=clusters)
