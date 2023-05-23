# install.packages("factoextra")
#install.packages("pheatmap")
install.packages("dendextend")

library("factoextra")
library(cluster)
library(graphics)
library(ggplot2)
library(pheatmap)
library(dendextend)

##########
#Functions
min_max_scale <- function(x) {
  x=(x - min(x)) / (max(x) - min(x))
 
}

##################################
###read file 

data<- read.table(header = TRUE,"Heartdiseas.txt",sep=",")

########################
#unnecessary columns

data$id<-NULL

########################

#know columns include null values 
for (name in names(data))
{
  if(sum (is.na(data[name]))>0)
  {
    print(name,str( sum (is.na(data[name]))))
  }
}

############################
# result  columns include null  int 1 [1] "slope"
#we can replace missing values by more frequency 
most_freq <- which.max(table(data["slope"]))
data["slope"] <- replace(data["slope"], is.na(data["slope"]),most_freq )


############
############
##Split Ages into Age Groups 
# data$age <- cut.default(data$age, breaks = c(0, 15, 30,45,60,75,90), labels = c(0, 1,2,3,4,5))
# 
# data$age<-as.numeric(as.character(data$age))

##############
#scale colums
################

scaleName<-c("trestbps","chol","thalach","oldpeak")

for (i in scaleName){
  data[i]=min_max_scale(data[i])
}

###################################
#list
typeof(data)
class(data)
cor(data)

####################################
# Create a heatmap of the variable correlations
heatmap(cor(data), scale = "none")

######################################
###ALL corr between thalach and columns in data  negative value 

data$thalach<-NULL

#####################################
#summary
summary(data)

####################################
#get The Optimal Number Of Clusters

wss <- numeric(15) 
for (i in 1:15) 
  wss[i] <- sum(kmeans(data, centers=i)$withinss)

plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")


##################################
#best number of cluster is 4 from plot 

km<-kmeans(data, 4)

####visualization of Kmeans clustering

fviz_cluster(km, data, stand = FALSE, geom = "point")

####################################
####Hierarchical Clustering
dist_mat <- dist(data, method = 'euclidean')
hclust_avg <- hclust(dist_mat, method = 'average')
hclust_avg =as.dendrogram(hclust_avg)
plot(hclust_avg)
dend <- hclust_avg
dend <- color_branches(dend, k = 7)
dend <- color_labels(dend, k = 7)
plot(dend)#4CLUSTERS


###################################
####Agglomerative Clustering using average
avg = agnes(x=data, diss = FALSE, stand = TRUE,method = "average")
avgDendrogram =as.dendrogram(avg)
plot (avgDendrogram)


dend <- avgDendrogram
dend <- color_branches(dend, k = 5)
dend <- color_labels(dend, k = 8)
plot(dend) # 3CLUSTERS

########################
####Agglomerative Clustering using average
single = agnes(x=data, diss = FALSE, stand = TRUE,method = "single")
singleDendrogram =as.dendrogram(single)

plot(singleDendrogram)


dend <- singleDendrogram
dend <- color_branches(dend, k = 8)
dend <- color_labels(dend, k = 8)
plot(dend)# 2CLUSTERS

################### 
####Agglomerative Clustering using complete complete
complete = agnes(x=data, diss = FALSE, stand = TRUE,method = "complete")
completeDendrogram =as.dendrogram(complete)

plot(completeDendrogram)

dend <- completeDendrogram
dend <- color_branches(dend, k = 8)
dend <- color_labels(dend, k = 8)
plot(dend) #5CLUSTERS

###########################

