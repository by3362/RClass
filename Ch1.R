
install.packages("C50")

library(C50)
 
remove.packages("C50")

library(ANN)

installed.packages()

library()

update.packages()

x <- 10
x


X <- x^2
X

z <- sqrt(X)
z


x <- 10
x

mode(x)

length(x)

x <- 10; y <- x^2; z <- sqrt(y)
z

x <- 10        #整數型數值
x

mode(x)

length(x)

y <- 10.9       #實數型數值
y

mode(y)

length(y)

z <- T          #邏輯
z

mode(z)

length(z)

a <- "Hello"    #文字
a
mode(a)
length(a)

z <- 4+2i       #複數,(j無法用)
z
mode(z)
length(z)


V <- c(10, 5, 3.1, 6.4, 9.2, 21.7)
V
length(V)
mode(V)

assign("V", c(10, 5, 3.1, 6.4, 9.2, 21.7))
V
length(V)
mode(V)

V <- c(10, 5, NA, 6.4, 9.2, 21.7)#索引值是從1開始
V
V[2]
V <- c(10, 5, "NA", 6.4, 9.2, 21.7)#假如中間塞一個字串
V                                  #所有陣列的元素被轉成字串
V[1]+V[2]                          #字串與字串無法做相加
V <- c(1,-2,0)
V/0

V <- NULL
length(V)

V2=1:10
V2
V2[1]
V2[2:4]

X <- 1:24
dim(X) <- c(3,4,2)#轉成三維3X4X2
X
X[1,1,1]
X[1,1,2]
X[3,2,1]

dim(X) <- c(4,6)#改變成二維4X6
X
X[2,4]

X <- array(1:24, dim = c(3,4,2))
X

X <- array(1:24, dim = c(4,6))
X

X <- array(0, dim = c(3,4,2))
X

X1 <- c(1,2,3,4)
X2 <- c(5,6,7,8)
X  <- rbind(X1,X2)#rbind的r代表Row(列)，所以rbind是列的合併
X                 #前提是行數要相同
X  <- cbind(X1,X2)#cbind則是列數要相同
X

X <- matrix(1:24, nrow=4, ncol=6 , byrow = TRUE)#byrow代表以列來排序
X                                               #但預設是byColumn=TRUE

X1 <- c(1,2,3)
X2 <- c(4,5,6)
X3 <- c(7,8,9)
X <- cbind(X1,X2,X3)#以行來合併
X

Y=t(X)#代表轉置矩陣
Y

m <- nrow(Y)#多少列
m

n <- ncol(Y)#多少行
n


X[,1]#第一行有啥
X[2,]#第二列有啥
X[c(1,3),]#c是向量的意思，顯示第一、三的所有元素

X
X[-1,]#不顯示第一列
X
X[,-2]#不顯示第二行
X

Y
eigen(Y)#計算矩陣的特徵值及特徵向量

z <- Y%*%X #矩陣的相乘
z

colnames(z) <- c("c1","c2","c3")#修改行的名稱
z

rownames(z) <- c("r1","r2","r3")#修改列的名稱
z

id <- c(1, 2, 3, 4)
age <- c(25, 30, 35, 40)
sex <- c("Male", "Male", "Female", "Female")
pay <-c (30000, 40000, 45000, 50000)
X.dataframe <- data.frame(id, age, sex, pay)
X.dataframe #資料框架，表示可在不同行中存在不同型態的資料
#但同行的資料型態與長度必須相同！

X.dataframe[3,2]#第三列第二行

X.dataframe$age#可使用$名稱來取得dataframe中相對應的元素

X.dataframe[2]#顯示dataframe第二行的所有

X.dataframe[,2]

X.dataframe[2,]

X.dataframe[1:2,]

edit(X.dataframe)#資料編輯器，改完資料後，要用下列
X.dataframe <- edit(X.dataframe)#的指派指令才可完成編輯
X.dataframe

sex <- factor(c("男", "女", "男", "男", "女"))
sex

id <- c(1, 2, 3)
sex <- c("Male", "Male", "Female")
pay <-c (30000, 40000, 45000)
Y.dataframe <- data.frame(id, sex, pay)
Y.dataframe

gender <- factor(c("男", "男", "女"))
gender

Paul.Family <- list(name="Paul", wife="Iris", no.kids=3, kids.age=c(25,28,30), gender, Y.dataframe)
Paul.Family

class(Paul.Family)
mode(Paul.Family)
str(Paul.Family)

Paul.Family$kids.age
Paul.Family[[4]]#透過str看到後可知到與$kids.age相同
Paul.Family[4]#這個看的到header
Paul.Family$kids.age[2]
Paul.Family[[4]][2]

id <- c(1, 2, 3, 4)
x <- data.frame(id)#以列排序
x

matrix.x=as.matrix(x)#轉換資料框架物件為矩陣物件
matrix.x

vector.x=as.vector(matrix.x)#轉換矩陣物件為向量物件
vector.x


