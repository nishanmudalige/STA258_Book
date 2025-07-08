# Copyright 2014, OpenIntro
# This code is released under a Creative Commons Attribution 3.0 license

# The ContingencyTableToDataFrame() function can be used to convert
# contingency tables to data frames.
ContingencyTableToDataFrame <-
function (x,
          rn = row.names(x),
          cn = colnames(x),
          dfn = c("row.var", "col.var")) {
  rs <- rowSums(x)
  cs <- colSums(x)
  v1 <- rep(rn, rs)
  v2 <- c()
  for (i in 1:nrow(x)) {
    v2 <- append(v2, rep(cn, x[i, ]))
  }
  d <- data.frame(v1, v2)
  colnames(d) <- dfn
  return(d)
}

a <- matrix(c(11, 14, 39, 26), 2)
b <- 
ContingencyTableToDataFrame(a,
                            c("control", "treatment"),
                            c("survived", "died"),
                            c("group", "outcome"))
# Sanity-check
table(b)

# Write to tab-delimited text file
cat("file saved to", getwd())
write.table(b, "cpr.txt",
            quote = FALSE, sep = "\t",
            row.names = FALSE)


