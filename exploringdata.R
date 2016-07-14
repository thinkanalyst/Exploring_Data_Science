ex.1<- read.csv("E:/Sandip Data/Sandip-21-JULY-2014/Sandip/Analysis/IntroStat/user.csv")
summary(ex.1)
summary(ex.1$Experience)
install.packages("ggrepel")
library(ggrepel)
library(ggplot2)
library(scales)
ggplot(ex.1) +
    geom_histogram(aes(x=Country),
                   binwidth=5, fill="gray")

ggplot(ex.1) +
    geom_bar(aes(x=Experience), fill="gray") +
    coord_flip() +
    theme(axis.text.y=element_text(size=rel(0.8)))

plot(Register.On ~ Last.Login, data=ex.1)
