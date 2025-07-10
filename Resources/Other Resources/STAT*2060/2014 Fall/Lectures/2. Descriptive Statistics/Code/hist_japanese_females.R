#y <- 20*rbeta(250,10,1.5)

y2 <- c(y, rep(21.5, 50) )
hist(y, xlab="", main="",col=COL["yellow",3])
mean(y)
median(y)

abline(v=mean(y), lwd=3, lty=2, col=COL["blue",1] )
abline(v=median(y), lwd=3, lty=2, col=COL["red",1] )

# N <- 10000
# x <- rnbinom(N, 10, .5)
# hist(x, 
#      xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
#      col='lightblue', xlab=' ', ylab=' ', axes=F,
#      main='Positive Skewed')
# lines(density(x,bw=1), col='red', lwd=3)

x <- rnorm(200, 158.70, 5.30) # Height
hist(x, xlab="Height in cm", ylim=c(0,70),
     main="Height of Japanese Females age 20 - 24", 
     col=COL["red",3], nclass=6)


y <- rnorm(200, 50.16, 5.53)  # Weight

y2 <- y
y2 <- y2[-which(y2 == max(y2))]
y2 <- y2[-which(y2 == max(y2))]
y2 <- y2[-which(y2 == max(y2))]
y2 <- c(y2, runif(3, 62, 64))

hist(y2, xlab="Weight in kg", ylim=c(0,70),
     main="Weight of Japanese Females age 20 - 24", 
     col=COL["yellow",4], nclass=7)

