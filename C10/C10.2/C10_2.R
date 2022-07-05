#1
x<-array(1:150, dim=c(6,5,5))
n<-length(which(x%%10==3))
y<-which(x%%10==3,arr.ind = T)
a<-c()

for (i in 1:n) {
  a<-c(a,sum(x[y[i,1],,y[i,3]]))
  x[y[i,1],y[i,2],y[i,3]]<-a[i]
}

#2
library(readxl)
data <- read_excel("Experiment Report/C10/C10.2data.xlsx")
View(data)

cor(data[,"Math"],data[,"English"])
cor(data[,"Math"],data[,"Physics"])
cor(data[,"Physics"],data[,"English"])

