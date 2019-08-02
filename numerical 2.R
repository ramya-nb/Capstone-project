bank=read.csv("C:\\Users\\Ramya Nambu\\Desktop\\Project\\bank-full.csv")

bank[,1]
numericalerical=bank[,c(1,6,10,12,13,14,15,17)]

View(numericalerical)

duration_woes

numericalerical$dur_bin<-NA

numerical$dur_bin[which(numerical$duration<89)]='<89'
numerical$dur_bin[which(numerical$duration>=89 & numerical$duration<180)]='[89,180)'
numerical$dur_bin[which(numerical$duration>=180 & numerical$duration<368)]='[180,368)'
numerical$dur_bin[which(numerical$duration>=368 & numerical$duration<548)]='[368,548)'
numerical$dur_bin[which(numerical$duration>=548)]='>=548'

numerical$bal_bin<-NA

numerical$bal_bin[which(numerical$balance<22)]='<22'
numerical$bal_bin[which(numerical$balance>=22 & numerical$balance<131)]='[22,131)'
numerical$bal_bin[which(numerical$balance>=131 & numerical$balance<448)]='[131,448)'
numerical$bal_bin[which(numerical$balance>=448 & numerical$balance<1130)]='[448,1130)'
numerical$bal_bin[which(numerical$balance>=1130 & numerical$balance<1860)]='[1130,1860)'
numerical$bal_bin[which(numerical$balance>=1860)]='>=1860'

numerical$pdays_bin<-NA

numerical$pdays_bin[which(numerical$pdays< -1)]='< -1'
numerical$pdays_bin[which(numerical$pdays>=-1 & numerical$pdays<185)]='[-1,185)'
numerical$pdays_bin[which(numerical$pdays>=185)]='>=185'

numerical$prev_bin<-NA

numerical$previous_bin[which(numerical$previous<0)]='<0'
numerical$previous_bin[which(numerical$previous>=0 & numerical$previous<2)]='[0,2)'
numerical$previous_bin[which(numerical$previous>=2 )]='>-2'


numerical=numerical[,-c(12,13)]


write.csv(numerical,"C:\\Users\\Ramya Nambu\\Desktop\\Project\\Num2.csv")

