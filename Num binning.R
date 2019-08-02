#_____________________________________________________________
#NUMERICAL VARIABLES (BINNING)

View(data)

num=data[,c(2,7,11,13,15,16,18)]
View(num)

range(num[,1])

(95-18)/10

num['age_bin']=bin(num[,1], nbins = 11, labels = NULL, method = "content")

install.packages('OneR')
library(OneR)

View(num['age_bin'])

num['Y']=data['Y']
IV(num[,'age_bin'],num[,'Y'], valueOfGood = 1)

(max(num['balance'])-min(num['balance']))/10


num['balance_bin']=bin(num[,2], nbins = 10, labels = NULL, method = "content")
IV(num[,'balance_bin'],num[,'Y'], valueOfGood = 1)

(max(num['duration'])-min(num['duration']))/10
num['duration_bin']=bin(num[,3], nbins = 5, labels = NULL, method = "content")
IV(num[,'duration_bin'],num[,'Y'], valueOfGood = 1)

(max(data['campaign'])-min(data['campaign']))/10
num['campaign_bin']=bin(data['campaign'], nbins = 10, labels = NULL, method = "content")
IV(num['campaign_bin'],num[,'Y'], valueOfGood = 1)

num=num[,-c(7,8)]

howgood=list()

for (i in 1:10)
  age_bin_ivs=IV(num[,i], data[,'Y'], valueOfGood = 1)

for (i in 1:13)
  ivs=IV(cat[,i], data[,'Y'], valueOfGood = 1)

View(IV(cat[,3], data[,'Y'], valueOfGood = 1))





?IV()

install.packages("Information")
library(Information)


IV <- create_infotables(data=data, y="Y", bins=10, parallel=FALSE)

print(IV$Tables$age, row.names=FALSE)

plot_infotables(IV, "age")

install.packages("rbin")
library(rbin)

agebins <- rbin_manual(data, Y, age, c(39, 42, 56))
plot(agebins)

agebins


install.packages("devtools")
install.packages("woe")


#____________________________________________________________________________

library(devtools)
library(woe)

?woe()
woes=woe(num,Independent = 'age', Dependent ='Y', Continuous = 'True', 
    C_Bin=5, Bad='0', Good='1')
 woes

# BINNING
 
num[,1]
num['balance_bin']=bin(num[,2], nbins = 10, labels = NULL, method = "content")
num['age_bin']=bin(num[,1], nbins = 10, labels = NULL, method = "content")
num['day_bin']=bin(num[,3], nbins = 10, labels = NULL, method = "content")
num['duration_bin']=bin(num[,4], nbins = 10, labels = NULL, method = "content")
num['pdays_bin']=bin(num[,5], nbins = 10, labels = NULL, method = "content")
num['previous_bin']=bin(num[,6], nbins = 10, labels = NULL, method = "content")
 
View(num)

balance_woes=woe(num,Independent = 'balance_bin', Dependent ='Y', Continuous = 'True', 
          C_Bin=10, Bad='0', Good='1')
balance_woes

num['balance_bin']=bin(num[,2], nbins = 10, labels = NULL, method = "content")

library(rbin)

bal_bin1 <- rbin_manual(data, Y, balance, c(22, 131, 448, 1130,1860))


num1<-rbin_manual(data = num, response = 'Y', predictor = balance,
            cut_points = c(22, 131, 448, 1130,1860))

View(num)


num[2,'balance']

for (i in 1:45211)
  if ((num[i,'balance']<22))
    num[i,'bal_bin1']<-'<22'
  if((num[i,'balance']>=22)&(num[i,'balance']<131))
    num[i,'bal_bin1']<-'[22,131)'
  if((num[i,'balance']>=131)&(num[i,'balance']<448))
    num[i,'bal_bin1']<-'[131,448)'
  if((num[i,'balance']>=448)&(num[i,'balance']<1130))
    num[i,'bal_bin1']<-'[448,1130)'
  if((num[i,'balance']>=1130)&(num[i,'balance']<1860))
    num[i,'bal_bin1']<-'[1130,1860)'
  if((num[i,'balance']>=1130))
    num[i,'bal_bin1']<-'>1130'

num[1,'balance']
num$bal_bin1<-NA

num$bal_bin1[which(num$balance<22)]=0
num$bal_bin1[which(num$balance>=22 & num$balance<131)]=1
num$bal_bin1[which(num$balance>=131 & num$balance<448)]=2
num$bal_bin1[which(num$balance>=448 & num$balance<1130)]=3
num$bal_bin1[which(num$balance>=1130 & num$balance<1860)]=4
num$bal_bin1[which(num$balance>=1860)]=5

#Age binning________________________________________________________________

duration_woes=woe(num,Independent = 'duration_bin', Dependent ='Y', Continuous = 'True', 
                 C_Bin=10, Bad='0', Good='1')
duration_woes

num$dur_bin1<-NA

num$dur_bin1[which(num$duration<89)]=0
num$dur_bin1[which(num$duration>=89 & num$duration<180)]=1
num$dur_bin1[which(num$duration>=180 & num$duration<368)]=2
num$dur_bin1[which(num$duration>=368 & num$duration<548)]=3
num$dur_bin1[which(num$duration>=548)]=4

#pdays_binning_____________________________________________________________________

pdays_woes=woe(num,Independent = 'pdays_bin', Dependent ='Y', Continuous = 'True', 
                  C_Bin=10, Bad='0', Good='1')

pdays_woes

num$pdays_bin1<-NA

num$pdays_bin1[which(num$pdays< -1)]=0
num$pdays_bin1[which(num$pdays>=-1 & num$pdays<185)]=1
num$pdays_bin1[which(num$pdays>=185)]=2


write.csv(num,"C:\\Users\\Ramya Nambu\\Desktop\\numerical.csv")

os.getwd()




