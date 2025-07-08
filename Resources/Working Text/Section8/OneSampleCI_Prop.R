url="https://mcs.utm.utoronto.ca/~nosedal/data/rating.txt"

ratings_data= read.table(url,header=TRUE)

names(ratings_data)

ratings_data[1:6, ]

all.programs=ratings_data$TV.Program

all.programs[1:6]

big.bang=all.programs[all.programs==2]

big.bang[1:6]

sample.size=length(all.programs)

sample.size

successes=length(big.bang)

successes

prop.test(successes,sample.size,conf.level=0.95,
          correct=FALSE)
