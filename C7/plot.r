library(ggplot2)

power<-c(0.063,0.075,0.078,0.080,0.095,0.112,0.137,0.151,0.235,0.444,0.568,0.736,1.43,2.18,3.59,4.75,6.92,10.02,13.51,16.74,19.58,20.81,21.64,21.75,21.83,21.91)
data<-data.frame(gray=seq(0,250,by=10),power)

plot<-ggplot()+
  geom_line(data = data,aes(x = gray,y = power, colour="red"),size=1)+
  scale_y_continuous(breaks=seq(0, 23, 1)) +
  scale_x_continuous(breaks=seq(0, 260, 20))+
  labs(title="", x="灰度", y="光功率/um")+
  theme_classic()+ theme(legend.position = 'none')+
  theme(plot.title = element_text(hjust = 0.5))
ggsave("plot.png",plot)