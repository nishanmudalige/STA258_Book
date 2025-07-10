library("RPMG")
library("openintro")
#par(mfrow = c(1,3))

slices <- c(0.3*2000,
            0.6*2000,
            0.1*1000)
lbls <- c("Fats", "Carbohydrates", "Proteins")
pie(slices, labels = lbls, main="Pie Chart of\nRecommended Nutrient Intake",
    col=c(COL["blue",2], COL["yellow",3], COL["red",2]), radius=1.05 )



barplot(slices, main="Bar Chart of\nRecommended Nutrient Intake",
        col=c(COL["blue",2], COL["yellow",3], COL["red",2]),
        beside=TRUE, names.arg = lbls)
