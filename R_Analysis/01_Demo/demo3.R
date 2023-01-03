set.seed(3)
prop1 <-rnorm(1000)
prop2 <- rnorm(1000)
ttest <- t.test(prop1,prop2)
ttest
names
ttest$statistic
ttest$p.value


alpha <- 0.05
ttable <- 1.96
tcaclulated <- ttest$statistic
tcaclulated

if(ttable < tcaclulated){
  print("Reject null")
}else {print("do not reject null")}



if(ttest$p.value < alpha) {
  print("reject null") }
  else {
    print("Do not reject Null")
  }


library(tidyverse)
students_df <- read_csv("students (1).csv")
schools_df <- read.csv("schools.csv")


ss <- left_join(students_df, schools_df, by = c("school_name"))
ss %>% 
  group_by(type, school_name) %>% 
  summarise(avg.reading.score = mean(reading_score), 
            avg.math.score = mean(math_score),
            total.students = n(),
            avg.budget = mean(budget),
            per.student.budget = mean(avg.budget)/n()
            )

students_df$school_name %>% 
  unique() %>% 
  length()

student_count <- students_df %>% nrow()

students_df %>%  
  filter(reading_score >70) %>% 
  nrow() * 100/ student_count %>% 
  round(2)


ttest <- t.test(students_df$reading_score, students_df$math_score)
alpha <- 0.05
tcalculated <- ttest$statistic
ttable <- 1.96

if(ttable < tcaclulated){
  print("Reject null")
}else {print("do not reject null")}
 #############################################################

sardines_df <- read_csv("sardines.csv")


pop1 <-  subset(sardines_df, location ==1)
mean(pop1[["vertebrae"]])

pop2 <-  subset(sardines_df, location ==6)
mean(pop2[["vertebrae"]])

ttest<- t.test(pop1["vertebrae"], pop2["vertebrae"])
alpha <-  0.05
tcalculated <-  ttest$statistic
ttable <- 2.064
if(ttable < tcaclulated){
  print("Reject null")
}else {print("do not reject null")}


