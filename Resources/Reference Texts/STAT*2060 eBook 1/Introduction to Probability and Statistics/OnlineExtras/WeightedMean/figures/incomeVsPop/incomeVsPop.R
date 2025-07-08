library(openintro)
data(COL)
data(county)
mean(county$income)

myPDF("incomeVsPop.pdf", 6, 4, mgp=c(2, 0.6, 0), mar=c(3.2, 5, 0, 0))
plot(county$pop2010, county$income, log="x", xlab="Population", ylab="", axes=FALSE, col=COL[1,3], cex=0.7, ylim=range(-5000, county$income)+5000)
axis(1, at=10^c(2,3,4,5,6), labels=gsub(" ", "", format(10^c(2,3,4,5,6), scien=FALSE)))
axis(2, at=seq(0, 6e4, 2e4))
par(las=0)
mtext("Per capita income", 2, line=3.8)
dev.off()

sum(county$pop2010*county$income) / sum(county$pop2010)

