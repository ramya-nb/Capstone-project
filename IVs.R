


install.packages("InformationValue")
install.packages("rlang")
library(InformationValue)

?IV

data=read.csv("C:\\Users\\Ramya Nambu\\Desktop\\Project\\bank1.csv")

View(data)

IV(data[,'marital'], data[,'Y'], valueOfGood = 1)

WOE(data[,'month'], data[,'Y'], valueOfGood = 1)

?WOE

bank_en=read.csv("C:\\Users\\Ramya Nambu\\Desktop\\Project\\bank-en.csv")
View(bank_en)

IV(bank_en[,'job_entrepreneur'], bank_en[,'y'], valueOfGood = 1)

View(data[2])

ivs=list()
ivs

cat=data[,c(3,4,5,6,8,9,10,12,14,17,18)]

View(cat)


for (i in 1:11)
  ivs=c(ivs,IV(cat[,i], data[,'Y'], valueOfGood = 1))

ivs
View(ivs)
View(bank_en)


a=list()
a=c(a,2)
a
a=c(a,0)
a

for (i in 1:4)
  a=c(a,i+1)

View(a)
 
?rbind()
colnames(cat)6

rbind(c(2,3),c(4,5))

iv_list=cbind(colnames(cat[-11]),ivs)
iv_list


IV(cat[,2], data[,'Y'], valueOfGood = 1)


#_________________________________________FINAL IV LIST________________________



install.packages("InformationValue")
install.packages("rlang")
library(InformationValue)

data=read.csv("C:\\Users\\Ramya Nambu\\Desktop\\Project\\bank-full.csv")

ivs=list()
for (i in 1:16)
  ivs=c(ivs,IV(data[,i], data[,'y'], valueOfGood = 1))

ivs

cols=colnames(data[1:16])

cols

cbind(cols,ivs)

for (i in 1:16)
  IV(data[,i], data[,'y'], valueOfGood = 1)


data-full=read.csv("C:\\Users\\Ramya Nambu\\Desktop\\Project\\bank-full.csv")







