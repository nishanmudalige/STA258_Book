library("HistogramTools")

x <- c(26,35,37,39,
       40.1,44,45,45,48,51,53,53,53,53,58,58,
       60.1,64,64,64,74,76,77,77,78,
       92,93,99,
       114,118)

h <- hist(x, col="#569BBDC0", xlab="Time in Days",
          main="Frequency Histogram of Time taken \nto Manufacture Equipment")

PlotRelativeFrequency(hist(x, plot=F), 
                      col="#4C721D80", xlab="Time in Days",
                      main="Relative Frequency Histogram of Time taken \nto Manufacture Equipment")


# h<-hist(x, plot=F)
# h$counts <- h$counts / sum(h$counts)
# plot(h, freq=TRUE, ylab="Relative Frequency")