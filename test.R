name <- c("Eric","Jack","Tom")
name
age <- c("28", "26", "34")
gender <- c("Male","Male","Female")
data <- data.frame(name, age, gender, stringsAsFactors = FALSE)
data
data[1,]

y <- 0
for (x in 1:10) {
  y <- x + y
  print(y)
}

data1 <- c("Is that apple pie I smell?",
         "Julie never missed a ball, a promenade, or a play.",
         "Did the cat get your tongue at the table?")
data1

data2 <- gsub("a", "A", data1)
data2

strsplit("TATAT","A")# 將字串"TATAT"以"A"為切割點拆開

nchar(data1)
x <- "Is that   apple  pie I   smell?"# 將兩個以上的空白，取代為1個空白

x
x1 <- gsub(" {2, }", " ", x)
x1

x <- gsub("[[:punct:]]","", "T,E!X$T")# 消除標點符號
x

x <- c("company","companies")
x
x1 <- grepl("company",x)
x1
x2 <- grep("compan(y|ies)",x)
x2

wiki.apple1 <- "Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. Its hardware products include the iPhone smartphone, the iPad tablet computer, the Mac personal computer, the iPod portable media player, and the Apple Watch smartwatch. Apple's consumer software includes the OS X and iOS operating systems, the iTunes media player, the Safari web browser, and the iLife and iWork creativity and productivity suites. Its online services include the iTunes Store, the iOS App Store and Mac App Store, and iCloud."

wiki.apple2 <- "Apple was founded by Steve Jobs, Steve Wozniak, and Ronald Wayne on April 1, 1976, to develop and sell personal computers.[5] It was incorporated as Apple Computer, Inc. on January 3, 1977, and was renamed as Apple Inc. on January 9, 2007, to reflect its shifted focus toward consumer electronics. Apple (NASDAQ: AAPL) joined the Dow Jones Industrial Average on March 19, 2015.[6]"

wiki.apple3 <- "Apple is the world's largest information technology company by revenue, the world's largest technology company by total assets,[7] and the world's second-largest mobile phone manufacturer.[8] On November 25, 2014, in addition to being the largest publicly traded corporation in the world by market capitalization, Apple became the first U.S. company to be valued at over US$700 billion.[9] The company employs 115,000 permanent full-time employees as of July 2015[4] and maintains 453 retail stores in sixteen countries as of March 2015;[1] it operates the online Apple Store and iTunes Store, the latter of which is the world's largest music retailer."

wiki.apple4 <- "Apple's worldwide annual revenue totaled $233 billion for the fiscal year ending in September 2015.[3] The company enjoys a high level of brand loyalty and, according to the 2014 edition of the Interbrand Best Global Brands report, is the world's most valuable brand with a valuation of $118.9 billion.[10] By the end of 2014, the corporation continued to receive significant criticism regarding the labor practices of its contractors and its environmental and business practices, including the origins of source materials."

wiki.apple1 <- gsub("[[:punct:]]","",wiki.apple1)# 消除標點符號
wiki.apple1
wiki.apple2 <- gsub("[[:punct:]]","",wiki.apple2)
wiki.apple3 <- gsub("[[:punct:]]","",wiki.apple3)
wiki.apple4 <- gsub("[[:punct:]]","",wiki.apple4)

wiki.apple1 <- gsub("[0-9]","",wiki.apple1)# 消除數字
wiki.apple1
wiki.apple2 <- gsub("[0-9]","",wiki.apple2)
wiki.apple3 <- gsub("[0-9]","",wiki.apple3)
wiki.apple4 <- gsub("[0-9]","",wiki.apple4)
wiki.apple4
wiki.apple.vec <- c(wiki.apple1,
                    wiki.apple2,
                    wiki.apple3,
                    wiki.apple4)#把它們放進一個vector

wiki.apple.vec

wiki.apple.vec <- gsub(" {2,}"," ",wiki.apple.vec)#把超過兩個以上空白的換成一個空白
wiki.apple.vec
wiki.apple.vec <- tolower(wiki.apple.vec)#全部轉為小寫
wiki.apple.vec
wiki.apple.list <- strsplit(wiki.apple.vec, " ")#以空格分隔
wiki.apple.list

library(ngram)
ng <- ngram(wiki.apple1, n=2)
ng
get.ngrams(ng)

news.zhTW <- "美國最新飲食指南首度訂出健康成人咖啡攝取量，建議有喝咖啡習慣的人可喝黑咖啡，或在咖啡中添加低脂牛奶，但不建議額外添加糖或奶精。至於平日沒有喝咖啡習慣的人，是否需要現在開始喝咖啡？衛福部國健署昨天表示「不建議」。"
news.zhCN <- "凤凰科技讯 北京时间2月19日消息，据《今日美国》网络版报道，苹果刚刚推出了新的以旧换新计划，以便于部分用户使用他们的老款iPhone置换新机型。而且，苹果目前接受的以旧换新手机包括Android手机、Windows Phone手机以及iPhone。"
library(jiebaR)
mixseg = worker()
segment(news.zhTW, mixseg)
segment(news.zhCN, mixseg)
