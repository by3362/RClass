setwd("D:/Big Data/R教材/Ch1-4")
getwd()

setwd("D:/Big Data/R教材/Ch1-4")
X <- read.table("X.csv",sep=",",header=TRUE,)
X
X$age
X[1,2]


setwd("D:/Big Data/R教材/Ch1-4")
X <- read.table("X.csv",sep=",",header=FALSE)
X

setwd("D:/Big Data/R教材/Ch1-4")
X <- read.csv("X.csv", header=TRUE,encoding="Big5")#編碼要注意
X

X <- read.csv("X.csv", header=FALSE,encoding="UTF-8")#如果欄位有空格、括號等
X                                                    #R看不懂的元素一律轉成"."

X <- read.table("X.txt",header=TRUE)
X

X <- read.csv("http://www.labor.gov.tw/file/opendata/%E6%8A%80%E8%83%BD%E6%AA%A2%E5%AE%9A%E5%90%88%E6%A0%BC%E7%99%BC%E8%AD%89%E6%95%B8.csv", header = TRUE, encoding = "Big5")
X #透過網上OpenData的資料可用read直接讀

X <- scan("")
X

my=scan(file="",what=list(name="",pay=integer(0),sex=""))#按照自己所設定的
mode(my)                                                 #表格規範填入資料



X <- scan("X1.csv", sep=",")
X
 
X <- scan("X1.txt",encoding="UTF-8")


write.table(X,"D:/X_File.csv",row.names=TRUE,col.names=TRUE,sep=",")

X <- scan("X.csv",what = "character",sep=",",encoding = "UTF-8")#,what = 'character'
X

X1 <- data.frame(X)
X1
X2 <- as.vector(X)
X2
X3 <- as.matrix(X2,nrow=5,ncol=5)#,byrow=TRUE
X3

X1[,-1]

data()

data(iris)
iris

str(iris)
 
setwd("D:/")
data(iris)
save(iris,file="iris.RData")

getwd()
load("iris.RData", .GlobalEnv)

install.packages("RODBC")
library("RODBC")

connection <- odbcConnect(dsn="iris", uid="sa", pwd="gdp")

query <- "SELECT * FROM iris where sepal_length < 5.0"
myData <- sqlQuery(connection, query)
myData
str(myData)

odbcClose(connection)


