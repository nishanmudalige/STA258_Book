a <- c(2, 14,16,22, 34)
boxplot(a)


b <- c(7, 22,27,32, 47)
boxplot(b)


c <- c(18, 30,36,38, 50)
boxplot(c)


library(RPMG)

bpcol <- "#569BBDC0"

#c1 <- pastel.colors(1)
boxplot(a,b,c, col= bpcol, names=c("A","B","C") )



boxplot(a, col= bpcol, xlab="A")
boxplot(a, col= bpcol, xlab="A", horizontal = TRUE)



boxplot(b, col= bpcol, xlab="B")
boxplot(b, col= bpcol, xlab="B", horizontal = TRUE)


boxplot(c, col= bpcol, xlab="C")
boxplot(c, col= bpcol, xlab="C", horizontal = TRUE)



#x <- c(26, 35, 37, 39, 40, 44, 45, 45, 48, 51, 53, 53, 53, 53, 58, 58, 60, 64, 64, 64, 74, 76, 77, 77, 78, 92, 93, 99, 114, 118)


