# Copyright 2014, OpenIntro
# This code is released under a Creative Commons Attribution 3.0 license

# The TabTextToCsv() function can be used to convert
# tab-delimited text file to a CSV file
TabTextToCsv <-
function (file.in, file.out) {
  x <- read.delim(file.in)
  write.table(x, file.out,
              quote = FALSE, sep = ",",
              row.names = FALSE)
}

# Example
getwd()
# setwd("reset the current working directory")
TabTextToCsv("smallpox.txt", "smallpox.csv")

