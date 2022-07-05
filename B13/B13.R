
library(ggplot2)

k<-c(-2,-1,0,1,2)
sinth<-c(-8.87*10^(-3),-4.36*10^(-3),0,4.36*10^(-3),8.58*10^(-3))
x<-c(-1.498 , -0.709 , 0 , 0.754 , 1.473)

p <- ggplot( mapping = aes(x = sinth, y = k))
p<-p+ geom_point() + geom_smooth(method="lm")+labs(x = " sinθk",y = " 条纹级数k ",title = " 条纹级数-sinθk拟合曲线")
p<-p+geom_text(mapping=aes(x = -0.005,y = 2,label = c("k=229.22sinθk+0.01")),size=4)
p

q<- ggplot( mapping = aes(x = x, y = k))
q<-q+ geom_point() + geom_smooth(method="lm")+labs(x = " 条纹角间距x(mm)",y = " 条纹级数k ",title = " k-x拟合曲线")
q<-q+geom_text(mapping=aes(x = -1,y = 2,label = c("k=1.3501x-0.0054")),size=4)
q