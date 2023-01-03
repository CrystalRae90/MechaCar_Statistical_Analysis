a <- 3
b <- 3.14
c <- "This is a string"
e <- TRUE
g <- T


m<- matrix(1:12, 3,4)
dim(m)
v1 <- c ("a","b","c","d")
v2 <- c(1,2,3,4)
print(v2)
v3= c("a",1,"b",2)
print(v3)
v1[1]


v4 <- c(v1,v3)
for (x in v4) { print(x) }
presidents <- c("Washington", "Adams", " Lincoln", " Roosevelt")

for (x in presidents){
  if (nchar(x) >5) {
    print("Greater than 5")
  }
  else if(nchar(x)< 1){
    print("less than 1")
  }
  else {
    print ("something else")
    
    }
}

randomList <- list("movies" = c("Star wars", "titanic", "avatar"),
                  "States" = c("CA", "OK", "TX", "NY"),
                  "Coins" = c("penny", "dime", "nickel", "quarter"),
                  "presidents" = presidents,
                  "nums" = c(1,2,3,4,5),
                  "bools" = c(T,F,T,T,F)
                  )


months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
precipitation <- c(3.9, 2.9, 4.1, 3.9, 4.5, 3.5, 4.5, 4.1, 4.0, 3.4, 3.8, 3.6)


names(precipitation) <- months
print(months)
precipitation["Mar"]
prepSummary <- summary(precipitation)
p1 <- prepSummary["Min."]
p2 <- prepSummary[["Min."]]

library(dplyr)
summary (precipitation)
precipitation %>% summary() 

sd(precipitation)
precipitation %>%  sd()

round(sd(precipitation),2)
length(precipitation)
precipitation %>%  length()

sum(precipitation) %>% sum()


library(tidyverse)
data("diamonds")
nrow(diamonds)
dim(diamonds)
head(diamonds)


tail(diamonds)


diamonds  %>% head()
diamonds %>%  tail()
diamonds %>%  slice (11:15)
names(diamonds)

colnames(diamonds)
View(diamonds)


diamonds %>% select(c("carat","color")) %>%  head()



diamonds %>% select(-c("carat")) %>% head(3)

diamonds %>%  filter(cut == "Ideal" & color == "E" & clarity == "SI1" & price <2000 )

diamonds <-  diamonds %>%  mutate(xyz = x*y*z)
diamonds %>%  head(2)
diamonds %>%  summarise(mean(price))
mean(diamonds$price)
diamonds %>%  group_by(cut) %>%  summarise(avg = mean(price), n=n() )


diamonds$cut %>% unique()
unique(diamonds$cut)

install.packages("gapminder")
library("gapminder")
data("gapminder")
head(gapminder)

gapminder %>% 
  filter(country, %in% c("South Korea", "Germany")) %>% 
  ggplot(aes(year,lifeExp, color = country)) + geom_point

plot(diamonds$price)

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")


temp1 <- c(5,10,12,24,42,60,63,72)
temp2 <- c(8,1,3,88,33,0,77,42)

cbind(temp1,temp2)
k <- rbind(temp1,temp2)
print(k)

k[1,1:3]
