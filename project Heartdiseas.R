
min_max_scale <- function(x) {
  x=(x - min(x)) / (max(x) - min(x))
 
}
###########
###read file 

data<- read.table(header = TRUE,"Heartdiseas.txt",sep=",")

#############
##remove any row duplicated   by id 

numberRowsData<-nrow(data)

numberRowsunique<-nrow(unique( data[ , 1:2 ] ))

#numberRowsData is greater than numberRowsunique 
#there are rows duplicated
if(numberRowsData>numberRowsunique)
{
#get unique "id " ->data[,1,2]
#data<-  unique( data[ , 1:2 ])
}

########################
#unnecessary columns

data$id<-NULL


#####################

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
##Split Ages into Age Groups 
data$age <- cut.default(data$age, breaks = c(0, 15, 30,45,60,75,90), labels = c(0, 1,2,3,4,5))

data$age<-as.numeric(as.character(data$age))

##############
#scale colums
################

scaleName<-c("trestbps","chol","thalach","oldpeak")

for (i in scaleName){
  data[i]=min_max_scale(data[i])
}

#####################
#list
typeof(data)
class(data)
cor(data)


######
###ALL corr between thalach and columns in data  negative value 

data$thalach<-NULL


summary(data)

library(cluster)

wss <- numeric(15) 
for (i in 1:15) 
  wss[i] <- sum(kmeans(data, centers=i)$withinss)

plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")


##################################
#best number of cluster is 5 from plot 

km<-kmeans(data, 5)

namescol<-names(data)


library(cluster)
####Hierarchical Clustering
dist_mat <- dist(data, method = 'euclidean')
hclust_avg <- hclust(dist_mat, method = 'average')

plot(hclust_avg)

rect.hclust(hclust_avg, k=  5, border = "red")

#######################
####Agglomerative Clustering using average
avg = agnes(x=data, diss = FALSE, stand = TRUE,method = "average")
avgDendrogram =as.dendrogram(avg)

plot(avgDendrogram)

########################
####Agglomerative Clustering using average
single = agnes(x=data, diss = FALSE, stand = TRUE,method = "single")
singleDendrogram =as.dendrogram(single)

plot(singleDendrogram)


###################
####Agglomerative Clustering using complete complete
complete = agnes(x=data, diss = FALSE, stand = TRUE,method = "complete")
completeDendrogram =as.dendrogram(complete)

plot(completeDendrogram)
###########################

