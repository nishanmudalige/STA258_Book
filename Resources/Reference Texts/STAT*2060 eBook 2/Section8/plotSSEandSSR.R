library(calibrate)

x <- c(0.4, 0.80, 2.25, 2.80, 4.25, 4.86, 6.10, 6.5)
y <- c(0.1, 1.860, 1.10, 3.80, 3.10, 5.75, 5.00, 7.5)

y2 <- rev(y)

plot(x, y,
     xlim=c(0,8.0),
     ylim=c(0,7.5),
     pch=19, cex=1.5)

model1 <- lm(y ~ x)

abline(lm(y ~ x))

#abline(a=mean(y), b=0)


# # SSE
# for(i in 1:length(y)){
#   segments(x0=x[i], y0=y[i], x1=x[i], y1=model1$fit[i], col="red", lwd=2, lty=2 )
# }
# 
# # Legend for SSE
# legend(0.1, 7.2, expression('(y'[i]*' - '*hat(y)[i]*')' ), col = "red",
#        #text.col = "green4", 
#        lwd = 2, lty = c(2), cex=1.125 ) 
#        #pch = c(5) )#,
# #       merge = TRUE, bg = "gray90")



# abline(a=mean(y), b=0)
# 
# # SSR
# for(i in 1:length(y)){
#   segments(x0=x[i], y0=model1$fit[i], x1=x[i], y1=mean(y), col="blue", lwd=2, lty=2 )
# }
# 
# # Legend for SSR
# legend(0.1, 7.2, expression('('*hat(y)[i]*' - '*bar(y)*')' ), col = "blue",
#        lwd = 2, lty = c(2), cex=1.125 ) 




abline(a=mean(y), b=0)

# SSTotal
for(i in 1:length(y)){
  segments(x0=x[i], y0=y[i], x1=x[i], y1=mean(y), col="springgreen3", lwd=2, lty=2 )
}


# Legend for SSTotal
legend(0.1, 7.2, expression('(y'[i]*' - '*bar(y)*')' ), col = "springgreen3",
       lwd = 2, lty = c(2), cex=1.125 ) 

text(7.5, 3.7, labels=expression(bar(y)) )