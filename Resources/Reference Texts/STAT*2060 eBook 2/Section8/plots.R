library(calibrate)

x <- c(0.2, 0.80, 2.25, 2.80, 4.25, 4.86, 6.10)
y <- c(0.2, 1.20, 1.80, 3.10, 3.20, 5.15, 5.90)

y2 <- rev(y)

plot(x, y,
     xlim=c(0,6.5),
     ylim=c(0,6.5),
     pch=19, cex=1.5)

model1 <- lm(y ~ x)

abline(lm(y ~ x))

# expression( {chi^2}[alpha]  )

# labels <- expression(
#   #paste( "(", {x}[1], " , " ,{y}[1], ")" ),
#   "",
#   paste( "(", {x}[1], " , " ,{y}[1], ")" ),
# )

labels <- NULL

# for(i in 1:length(x)){
#   labels[i] <- expression("",paste( "(", {x}[i], " , " ,{y}[i], ")" ),)
# }


labels1 <- expression("",paste( "(", {x}[1], " , " ,{y}[1], ")" ),)
labels2 <- expression("",paste( "(", {x}[2], " , " ,{y}[2], ")" ),)
labels3 <- expression("",paste( "(", {x}[3], " , " ,{y}[3], ")" ),)
labels4 <- expression("",paste( "(", {x}[4], " , " ,{y}[4], ")" ),)
labels5 <- expression("",paste( "(", {x}[5], " , " ,{y}[5], ")" ),)
labels6 <- expression("",paste( "(", {x}[6], " , " ,{y}[6], ")" ),)
labels7 <- expression("",paste( "(", {x}[7], " , " ,{y}[7], ")" ),)

labelsn <- expression("",paste( "(", {x}[n], " , " ,{y}[n], ")" ),)


textxy(x[1],y[1], labs=labels1, cex=1.25)
textxy(x[2],y[2], labs=labels2, cex=1.25)
# textxy(x[3],y[3], labs=labels3, cex=1.25)
# textxy(x[4],y[4], labs=labels4, cex=1.25)
# textxy(x[5],y[5], labs=labels5, cex=1.25)
# textxy(x[6],y[6], labs=labels6, cex=1.25)
textxy(x[7]-0.5,y[7]+0.20, labs=labelsn, cex=1.25)

#expression(paste("Sampled values, ", mu, "=5, ", sigma,"=1")))
#hist(h, main = expression(paste("Sampled values, ", mu, "=5, ", sigma,"=1")))


#labels[1] <- expression("",paste( "(", {x}[1], " , " ,{y}[1], ")" ),)




plot(x, y2,
     xlim=c(0,6.5),
     ylim=c(0,6.5),
     pch=19, cex=1.5)

model2 <- lm(y2 ~ x)

abline(model2)

labels1 <- expression("",paste( "(", {x}[1], " , " ,{y}[1], ")" ),)
labels2 <- expression("",paste( "(", {x}[2], " , " ,{y}[2], ")" ),)
labels3 <- expression("",paste( "(", {x}[3], " , " ,{y}[3], ")" ),)
labels4 <- expression("",paste( "(", {x}[4], " , " ,{y}[4], ")" ),)
labels5 <- expression("",paste( "(", {x}[5], " , " ,{y}[5], ")" ),)
labels6 <- expression("",paste( "(", {x}[6], " , " ,{y}[6], ")" ),)
labels7 <- expression("",paste( "(", {x}[7], " , " ,{y}[7], ")" ),)

labelsn <- expression("",paste( "(", {x}[n], " , " ,{y}[n], ")" ),)


textxy(x[1],y2[1], labs=labels1, cex=1.25)
textxy(x[2],y2[2], labs=labels2, cex=1.25)
# textxy(x[3],y[3], labs=labels3, cex=1.25)
# textxy(x[4],y[4], labs=labels4, cex=1.25)
# textxy(x[5],y[5], labs=labels5, cex=1.25)
# textxy(x[6],y[6], labs=labels6, cex=1.25)
textxy(x[7]-0.5,y2[7]+0.25, labs=labelsn, cex=1.25)

abline(lm(y ~ x))
