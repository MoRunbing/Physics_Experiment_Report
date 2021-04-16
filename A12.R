#实验一
a<-c(2,2,3,1,2)
l<-c(12,11,16.5,5.5,11.6)
M<-5*l/a
M0<-25*14.6/4.5/2.9
Mm<-mean(M)
Mm0<-mean(M0)

SA<-sqrt((1/20)*sum((M-Mm)^2))
VA<-4
SB<-sqrt((0.25/(0.029*0.045)*(0.01/sqrt(3)))^2+(0.149/0.029/0.045*0.01/sqrt(3))^2)
VB<-1

S<-sqrt(SA^2+SB^2)
V<-S^4/((SA^4/VA)+(SB^4/VB))

tp<-4.303
deltaN<-tp*S

#实验二
d1<-5
d2<-c(23.75,24.8,26.7,25.5,24.4)
m<-d2/d1

m0<-mean(m)
#A类不确定度
d20<-mean(d2)
Sd2<-sqrt((1/20)*sum((d2-d20)^2))
Sa<-Sd2/5
Va<-4
#B类不确定度
Sb<-0.1/sqrt(3)
Vb<-4
#合成
s<-sqrt(Sa^2+Sb^2)
V<-s^4/((Sa^4/Va)+(Sb^4/Vb))

deltaM<-4.303*s

#思考题1
D1=seq(0,30,0.1)
y=25*(D1-4.5-2.9)/(4.5*2.9)
opar <- par(no.readonly = TRUE)
plot (D1,x,type="l",sub = "图1.1",xlab="D1(cm)",ylab="M")
text(10,40,"f0=4.5cm fe=2.9cm d2=25cm")
minor.tick(nx=5,ny=2,tick.ratio=0.5)
par(opar)

fe=seq(0,30,0.1)
y=25*(24-4.5-2.9)/(4.5*fe)
opar <- par(no.readonly = TRUE)
plot (fe,y,type="l",sub = "图1.2",xlab="fe(cm)",ylab="M",
      xlim=c(0,30),ylim=c(0,40))
text(20,39,"f0=4.5cm fe=24cm d2=25cm")
minor.tick(nx=5,ny=2,tick.ratio=0.5)
par(opar)

f0=seq(0,30,0.1)
y=(25*(24-f0)-2.9)/(f0*2.9)
opar <- par(no.readonly = TRUE)
plot (f0,y,type="l",sub = "图1.3",xlab="f0(cm)",ylab="M",
      xlim=c(0,30),ylim=c(0,40))
text(20,39,"fe=2.9cm d1=24cm d2=25cm")
minor.tick(nx=5,ny=2,tick.ratio=0.5)
par(opar)

#思考题2
fe=seq(0,30,0.1)
y=4.5/fe
opar <- par(no.readonly = TRUE)
plot (fe,y,type="l",sub = "图2.1",xlab="fe(cm)",ylab="M",
      xlim=c(0,10),ylim=c(0,30))
text(7,27,"f0=22.5cm")
minor.tick(nx=5,ny=2,tick.ratio=0.5)
par(opar)

f0=seq(0,30,0.1)
y=f0/4.5
opar <- par(no.readonly = TRUE)
plot (f0,y,type="l",sub = "图2.2",xlab="f0(cm)",ylab="M",
      xlim=c(0,30),ylim=c(0,7))
text(20,6,"fe=4.9cm")
minor.tick(nx=5,ny=2,tick.ratio=0.5)
par(opar)



