fa<-c(188.5,187.2,189.3,188.8,187.9)
fb<-c(185.2,187.9,185.8,190.8,186.1)
A1<-mean(fa)
A2<-mean(fb)
n<-length(fa)
Sa<-sqrt(sum((fa-A1)^2)/((n-1)*n))
Sb<-sqrt(sum((fb-A2)^2)/((n-1)*n))

f<-(fa+fb)/2
f0<-mean(f)
sd<-0.5*sqrt(Sa^2+Sb^2)

F1<-c(130.2,130.8,131.7,133.3,129.1)
F2<-c(132.1,134.6,133.3,127.8,132.7)
a1<-mean(F1)
a2<-mean(F2)
sa<-sqrt(sum((F1-a1)^2)/((n-1)*n))
sb<-sqrt(sum((F1-a2)^2)/((n-1)*n))
