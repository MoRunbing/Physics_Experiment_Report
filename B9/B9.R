#Na双黄线
lambda<-598.3
l<-c(0.290,0.293,0.287,0.297,0.289)
ll<-length(l)
meanl<-mean(l)
Sl<-sqrt(1/(ll*(ll-1))*sum((l-meanl)^2))
SA1<-(lambda^2/(2*(meanl*10^6)^2))*(Sl*10^6)
U<-0.01/sqrt(3)
SB1<-(lambda^2/(2*(meanl*10^6)^2))*(U*10^6)
S1<-sqrt(SA1^2+SB1^2)
12.17*S1

#薄片厚度
h<-c(0.168 , 0.171 , 0.170 , 0.171 , 0.170 )
meanh<-mean(h)
Sh<-sqrt(1/(ll*(ll-1))*sum((h-meanh)^2))
S2<-sqrt(Sh^2+U^2)
12.17*S2

#折射率
d<-c(0.101 , 0.098 , 0.099 , 0.102 , 0.103)
meand<-mean(d)
Sd<-sqrt(1/(ll*(ll-1))*sum((d-meand)^2))
meand/0.17+1
SA2<-sqrt((1/meanh*Sd)^2+(meand/meanh^2*Sh)^2)
VA<-SA2^4/((1/meanh*Sd)^4/4+(meand/meanh^2*Sh)^4/4)
SB2<-sqrt((1/meanh*U)^2+(meand/meanh^2*U)^2)
VB<-SB2^4/((1/meanh*U)^4+(meand/meanh^2*U)^4)
S2<-sqrt(SA2^2+SB2^2)
V2<-S2^4/(SA2^4/VA+SB2^4/VB)
S2*4.3
