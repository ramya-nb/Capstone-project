

raw=read.csv('C:\\Users\\Ramya Nambu\\Desktop\\Project\\bank-full.csv')

View(raw)

install.packages(
  "ggplot2",
  repos = c("http://rstudio.org/_packages",
            "http://cran.rstudio.com")
)

library(ggplot2)

install.packages('ggplot2')
library(ggplot2)
install.packages('Rcpp')
ggplot()

ggplot(aes(age), data=raw)+ geom_histogram()
ggplot(aes(job), data=raw)+ geom_bar()
ggplot(aes(marital), data=raw)+ geom_bar()
ggplot(aes(education), data=raw)+ geom_bar()
ggplot(aes(default), data=raw)+ geom_bar()

nrow(raw)
sqrt(45211)
110146/517
(max(raw$balance)-min(raw$balance))/213
ggplot(aes(balance), data=raw)+ geom_histogram(bins = 50)+
  scale_x_continuous(limits=c(-8500,20000))

ggplot(aes(housing), data=raw)+ geom_bar()
ggplot(aes(loan), data=raw)+ geom_bar()                                          
ggplot(aes(contact), data=raw)+ geom_bar()
ggplot(aes(day), data=raw)+ geom_bar()
ggplot(aes(month), data=raw)+ geom_bar()

ggplot(aes(duration), data=raw)+ geom_histogram()

ggplot(aes(campaign), data=raw)+ geom_bar()
ggplot(aes(pdays), data=raw)+ geom_histogram(bins=50)
ggplot(aes(previous), data=raw)+ geom_histogram(bins=10)
ggplot(aes(poutcome), data=raw)+ geom_bar()

ggplot(aes(y), data=raw)+ geom_bar()



