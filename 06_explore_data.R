haveTidyverse <- system.file(package = 'tidyverse')
print(haveTidyverse)
ifelse(nchar(haveTidyverse) < 1, install.packages('tidyverse', dependencies = TRUE), NA)
library(tidyverse)

# It is about what data is missing and why ?  
# do for each variable

dim(starwars) #number rows/observations and columns/variables 
glimpse(starwars) #structure of data variable name, type, data example
# View(starwars) #view data

names(starwars) # names of variables
length(starwars) # number of variables if you pass variable you get number of observations
class(starwars)
class(starwars$name)
unique(starwars$hair_color) # see uniqe data

table(starwars$hair_color) # for each possible value number or items 
sort(table(starwars$hair_color), decreasing = TRUE)
View(sort(table(starwars$hair_color), decreasing = TRUE))
barplot(sort(table(starwars$hair_color), decreasing = TRUE))

#same using tidyverse pipe operator
starwars %>% 
  select(hair_color) %>% 
  count(hair_color) %>%  #creates new color and counts 
  arrange(desc(n)) %>% 
  View()
  
# select all observations were hair_color is NA -> , ] mean all variables from data frame
starwars[is.na(starwars$hair_color), ]

# check numeric data
summary(starwars$height)
boxplot(starwars$height)
hist(starwars$height)

#stao
https://www.youtube.com/watch?v=sV5lwAJ7vnQ&list=PLtL57Fdbwb_Chn-dNR0qBjH3esKS2MXY3&index=12