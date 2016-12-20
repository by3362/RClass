setwd("D:/Big Data/R教材/Ch1-4")
getwd()
firedata <- read.table('forestfires.csv',sep=",",header=TRUE)
head(firedata)
set.seed(5)
data.subset <- firedata[sample(nrow(firedata), 500), ]
head(data.subset)
qplot(data.subset$DC,data.subset$ISI)
qplot(log(FFMC),log(ISI) ,data = firedata)
qplot(FFMC, DMC, data = data.subset,geom = c("point", "smooth"))

