set.seed(190)
library(sn)
#playtime=c(rlnorm(50,1.5,0.5))
#playtime=c(runif(50,1,20))
playtime=c(rnorm(500,5,4))
#playtime=(playtime[1:40],2.5,6,7,4,11,15,22,0.5,9,7.3,2)
playtime=round(playtime,1)
playtime=sort(playtime)
hist(playtime)

casinoloss=c(rsn(n=500, xi=-500, omega=250, alpha=7, tau=0, dp=NULL))
casinoloss=round(casinoloss,0)
casinoloss=sort(casinoloss,decreasing=TRUE)
hist(casinoloss)

plot(playtime,casinoloss,pch=19,cex=2,col="#66669990",xlab="Time Spent in Casino in Hours",ylab="Total Loss to Casino in Dollars")
reg=lm(casinoloss~playtime)
abline(reg)

y = function(x) -100.55 - 37.59*x
newx=abs(rnorm(500,5,3))
newy=c(NA)
for (i in 1:length(newx)){
  newy[i]=y(newx[i])+rnorm(1,10,100)
}
plot(newx,newy,pch=19,cex=2,col="#66669990",xlab="Time Spent in Casino in Hours",ylab="Total Loss to Casino in Dollars")
reg=lm(newy~newx)
abline(reg)

sumx=sum(newx)
sumy=sum(newy)
sumx2=sum(newx^2)
sumy2=sum(newy^2)
sumxy=sum(newx*newy)

summary(aov(newy~newx)) 
summary(reg)

plot(reg$res,pch=19,cex=2,ylim=c(-400,400),col="#66669990",xlab="Observation Number",ylab="Residual")
abline(h=c(0,-350,350),lty=c(1,2,2))
