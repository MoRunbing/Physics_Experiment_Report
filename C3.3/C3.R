library(readxl)
X150 <- read_excel("C:/Users/86134/Desktop/C3/150.xlsx")
X187.5 <- read_excel("C:/Users/86134/Desktop/C3/187.5.xlsx")
X300 <- read_excel("C:/Users/86134/Desktop/C3/300.xlsx")
X375 <- read_excel("C:/Users/86134/Desktop/C3/375.xlsx")
X750 <- read_excel("C:/Users/86134/Desktop/C3/750.xlsx")
X1500 <- read_excel("C:/Users/86134/Desktop/C3/1500.xlsx")

library(dplyr)
X150 <- X150 %>% filter(C2!="NAN")
X187.5 <- X187.5 %>% filter(C2!="NAN")
X300 <- X300 %>% filter(C2!="NAN")
X375 <- X375 %>% filter(C2!="NAN")
X750 <- X750 %>% filter(C2!="NAN")
X1500 <- X1500 %>% filter(C2!="NAN")


library(ggplot2)

y<-data.frame(x,X150$C2,X187.5$C2,X300$C2,X375$C2,X750$C2,X1500$C2)

p <- ggplot()+geom_line(aes(x = X150$C1,y = X150$C2,colour = "150"),size=1)
p<-p+geom_line(aes(x = X187.5$C1,y = X187.5$C2,colour = "187.5"),size=1)
p<-p+geom_line(aes(x = X300$C1,y = X300$C2,colour = "300"),size=1)
p<-p+geom_line(aes(x = X375$C1,y = X375$C2,colour = "375"),size=1)
p<-p+geom_line(aes(x = X750$C1,y = X750$C2,colour = "750"),size=1)
p<-p+geom_line(aes(x = X1500$C1,y = X1500$C2,colour = "1500"),size=1)
p


n<-c( 150 ,187.5 , 300 , 375 , 750 , 1500 )
A<-c( 0.425 , 0.625 , 0.905 , 1.036 , 1.460 , 1.919 )
X<-data.frame(n,A)
q<-ggplot(data=X,mapping=aes(x=n,y=A))+geom_point()+geom_smooth(method = "lm",se=F)+labs(x="浓度n(μL/L)",y="吸光度",title="吸光度-浓度拟合直线")
q<-q+geom_text(mapping=aes(x = 400,y = 2,label = c("y=0.001018x+0.508100")),size=3)
q
lm(A~n)
cor(n,A)