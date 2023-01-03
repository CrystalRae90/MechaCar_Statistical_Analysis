cdx <-5
numlist <- c(0,1,2,3,4,5,6,7,8,9)
demo_table <- read.csv(file="demo.csv", check.names = F, stringsAsFactors = F)

demo_table
library(jsonlite)
demo_table2 <- fromJSON(txt ="demo.json")
x <- c(3, 3, 2, 2, 5, 5, 8, 8, 9)

x[3]
demo_table[3,"Year"]
demo_table[3,3]

demo_table$"Vehicle_Class"
demo_table$Year[2]

filter_table <- demo_table2[demo_table2$price >10000 ,]
filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status) 
filter_table3 <- demo_table2[("clean" %in% demo_table2$title_status) & (demo_table2$price > 10000) & (demo_table2$drive == "4wd"),]

sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)
num_rows <- 1:nrow(demo_table)
sample_rows <- sample(num_rows, 3)
demo_table[sample_rows,]


library(tidyverse)
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE)
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep')

demo_table3 <- read.csv('demo2.csv',check.names = F,stringsAsFactors = F)
long_table <- demo_table3 %>% gather(key="Metric", value ="Score", buying_price:popularity)

wide_table <-  long_table %>% spread(key = "Metric",value="Score")
all.equal(demo_table3,wide_table)

head(mpg)

plt <- ggplot(mpg,aes(x=class))
plt + geom_bar()

mpg_summary <-  mpg %>%  group_by(manufacturer) %>% summarise(Vehicle_Count=n(), .groups="keep")
plt <- ggplot(mpg_summary, aes(x=manufacturer, y=Vehicle_Count))
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") +
theme(axis.text.x=element_text(angle=45,hjust=1))

mpg_summary <- subset(mpg,manufacturer=="toyota") %>% group_by(cyl) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep')
plt <- ggplot(mpg_summary,aes(x=cyl,y=Mean_Hwy))
plt + geom_line() + scale_x_discrete(limits=c(4,6,8))+ scale_y_continuous(breaks=c(16:30))


plt <- ggplot(mpg,aes(x=displ,y=cty, color=class,shape=drv))
plt + geom_point()+ labs(x="Engine Size (L)", y="City Fuel Effiency (MPG)" , color="Vehicle Class",shape="Type of Drive")



plt <- ggplot(mpg,aes(x=manufacturer,y=hwy))
plt + geom_boxplot() + theme(axis.text.x = element_text(angle=45,hjust=1))

mpg_summary <- mpg %>% group_by(class,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep')
plt <- ggplot(mpg_summary, aes(x=class,y=factor(year),fill=Mean_Hwy))
plt + geom_tile() + labs(x="Vehicle Class",y="Vehicle Year",fill="Mean Highway (MPG)")

mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep')
plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy))
plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") +
  theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5)) #rotate x-axis labels 90 degrees


plt <- ggplot(mpg,aes(x=manufacturer,y=hwy))
plt + geom_boxplot() +
  theme(axis.text.x=element_text(angle=45,hjust=1)) +
  geom_point()

mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ), .groups = 'keep')
plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine))
plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size")


mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ),SD_Engine=sd(displ), .groups = 'keep')
plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) #import dataset into ggplot2
plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") + #add scatter plot with labels
  geom_errorbar(aes(ymin=Mean_Engine-SD_Engine,ymax=Mean_Engine+SD_Engine)) #overlay with error bars


mpg_long <- mpg %>% gather(key="MPG_Type",value="Rating",c(cty,hwy))
head(mpg_long)


plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type))
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1))


plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type))
plt + geom_boxplot() + facet_wrap(vars(MPG_Type)) +
  theme(axis.text.x=element_text(angle=45,hjust=1),legend.position = "none") + xlab("Manufacturer")


ggplot(mtcars,aes(x=wt)) + geom_density()













