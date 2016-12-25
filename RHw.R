setwd("D:/Big Data/R教材/Ch1-4")
getwd()
library("reshape2", lib.loc="~/R/win-library/3.3")
library("plyr", lib.loc="~/R/win-library/3.3")
library("ggplot2", lib.loc="~/R/win-library/3.3")
EightAndHalf <- read.table('104下半年國軍常備兵徵集配賦員額預告資料UTF8.csv',sep=",",header=TRUE)
head(EightAndHalf)
names(EightAndHalf)
head(EightAndHalf)
EightAndHalf_1 <- EightAndHalf[,-3]
EightAndHalf_1
  
str(EightAndHalf_1)
summary(EightAndHalf_1)

#d <- as.factor(EightAndHalf_1[,3])
#d <- as.numeric(EightAndHalf_1[,3])
   

EightAndHalf_1 <- as.data.frame(EightAndHalf_1)
EightAndHalf_1
EightAndHalf_2 <- ddply(EightAndHalf_1,c("縣市","軍種類別"),summarise,入營總人數=sum(入營人數))
EightAndHalf_2
 
EightAndHalf_3 <- tapply(as.numeric(EightAndHalf_1[,3]),list(EightAndHalf_1[,1],EightAndHalf_1[,2]),sum)
EightAndHalf_3
EightAndHalf_3 <- as.data.frame(EightAndHalf_2)

#未解之謎，第一行被吃掉了，希望哪天可以解決
EightAndHalf_trouble <- tapply(as.numeric(EightAndHalf_1[,3]),list(EightAndHalf_1[,1],EightAndHalf_1[,2]),sum)
EightAndHalf_trouble
#所以，暫時先偷吃步，不過這樣做好像對解決辦法意義不大(?)
write.table(EightAndHalf_3,"D:/EightAndHalf_3.csv",row.names=TRUE,col.names=TRUE,sep=",")
a <- read.table("D:/EightAndHalf_3.csv",sep = ",",header = T)
a
 
#EightAndHalf_2與EightAndHalf_3得到的結果是一樣的,做到昏頭...
#而跑圖只需要EightAndHalf_2與EightAndHalf_3即可
EightAndHalf_Final <- ggplot(EightAndHalf_2, aes(x=縣市,y=入營總人數,fill=軍種類別)) + geom_bar(stat = "identity",colour="black") + ylab("總入營數") + xlab("縣市") + theme(axis.text.x=element_text(face = "bold",angle=45, vjust=.5,hjust=.5,size=8)) + labs(title = "104下半年國軍常備兵徵集配賦員額預告資料")+ scale_y_continuous(breaks=seq(0, 8000, 500))
EightAndHalf_Final 
