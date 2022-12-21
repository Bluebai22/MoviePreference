library(dplyr)
library(ggplot2)

imbd <- read.csv("/Users/blue/Desktop/Bigdata2/imdb_data.csv")
head(imbd)

summary(imbd)

sum(is.na(imbd2$runtimeminutes2))
imbd2<- imbd %>% mutate(runtimeminutes2 = as.numeric(runtimeMinutes))
imbd2$IsNull<- ifelse(imbd2$runtimeminutes2 == "NA","Null","Not Null")
imbd2$IsNull
plot_2 <- ggplot(imbd2,aes(x=IsNull,fill =IsNull))+geom_bar()+geom_text(stat='count', aes(label=..count..), vjust=-0.3)+
  labs(title = "The Number of Null Value in Runtimeminutes") +theme_classic()
plot_2

plot_1 <- ggplot(imbd, aes(x=startYear,color=startYear))+ 
  geom_bar(width = 0.5,fill="skyblue") +
  labs(title = "The Distribution of Movie's Start Year") +theme_classic()
plot_1

plot_3 <- ggplot(imbd,aes(x=genres))+geom_bar() + labs(title = "The Number of Movies in Different Genres")+theme_classic()+
  theme(axis.text.x = element_blank())
plot_3

plot_4 <- ggplot(imbd,aes(x=as.factor(isAdult) , y = averageRating,notchwidth = 0.2)) +geom_boxplot( notch = TRUE)+ labs(title = "Boxplot for Average Rating of Adult Movie")+theme_classic()
plot_4

plot_5 <- ggplot(imbd,aes(x=isAdult , y = averageRating,notchwidth = 0.2)) +geom_boxplot( notch = TRUE)+ labs(title = "Boxplot for Average Rating of Adult Movie")+theme_classic()
plot_5

plot_6 <- ggplot(imbd,aes(x=averageRating))+geom_histogram(binwidth = 0.2) + labs(title = "Histogram for Average Rating")+theme_classic()
plot_6
