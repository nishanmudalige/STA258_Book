library("RPMG")

slices <- c(108.9, 
            50.5,
            43.7,
            16.0,
            14.6,
            214.9)
lbls <- c("Samsumg", "Nokia", "Apple", "LG", "Huawei", "Other")
pie(slices, labels = lbls, main="Pie Chart of Global Mobile \nVendor Shipments (Q1 2014)")



colours <- pastel.colors(12)
# pie(slices, col= colours )
# barplot(slices, col= colours )
# "#DEF5FF" "#FFF7D4" "#FFE7D3" "#EADDFF" "#CCFFF1" "#D6FFCF" "#DFFFEE" "#FFCCEF" "#D4FFEF"

# "#FFDDE5" "#D1FFD6" "#DFFFFE" "#F9FFCE" "#FFF7D4" "#CFE0FF" "#D9FFD9" "#FFF6DB" "#CBFFE7"
# "#DEE2FF" "#DCFFE6" "#FFDAD5"

pie(slices, labels = lbls, main="Pie Chart of Global Mobile Vendor Shipments (Q1 2014)",
    col = colours, radius=1.0)

barplot(slices, names.arg = lbls, main="Bar Chart of Global Mobile \nVendor Shipments (Q2 2013)",
    col = colours, ylab="Millions of Units", ylim=c(0,200), beside=TRUE )

x <- c(21,22,23,25,25,24,24,31,31,30,30,32,34,35,36,37,38,38,38)
