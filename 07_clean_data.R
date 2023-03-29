# Explore -> 06
# Clean -> 07
# Manipulate
# Describe and summarize
# Visualize
# Analyse

# Clean data is about
#   Variable types 
#   Select and filter
#   Deal with missing data
#   Deal with duplicates
#   Recode values 

library(tidyverse)

glimpse(starwars) # columns, types, data example
class(starwars) # investigate class

unique(starwars$gender) # unieqe data

#convert to factor
sw <- starwars
sw$gender <- as.factor(sw$gender)
class(sw$gender)
levels(sw$gender) #have levels with factor

sw$gender <- factor((sw$gender),
                    levels = c("masculine", "feminine"))

levels(sw$gender) #have levels with factor

# select variables 
names(sw)

sw %>% 
  select(name, height, ends_with("color")) %>% 
  names()

# filter observations
unique(sw$hair_color)

sw %>% 
  select(name, height, ends_with("color")) %>% 
  filter(hair_color %in% c("blond", "brown") & height < 180) 
  
#missing data
mean(sw$height, na.rm = TRUE)

sw %>% 
  select(name, gender, hair_color, height) %>% 
  na.omit() # remove NA -> we do what is removed

sw %>% 
  select(name, gender, hair_color, height) %>% 
  filter(!complete.cases(.)) #get rows with NA Explanation -> complete.cases(.)  no missing data 

#sw %>% 
#  select(name, gender, hair_color, height) %>% 
#  filter(!complete.cases(.)) %>% 
#  drop_na(sw$height) # remove7/delete where height is NA

# mutate create new or update existing variable
sw %>% 
  select(name, gender, hair_color, height) %>% 
  filter(!complete.cases(.)) %>% 
  mutate(hair_color = replace_na(hair_color, "none")) 

#Duplicates
names <- c("p", "j", "a", "p")
ages <- c(22, 43,44, 22)

f <- data.frame(names, ages)

duplicated(f) #false/true vector (logical vector)

f[!duplicated(f), ]  # not duplicated
f %>% 
  distinct()

# recode variables 
sw %>% 
  select(name, gender) %>% 
  mutate(gender = recode(gender,
                         "masculine" = 1,
                         "feminine" = 2)) %>% 
  
# stao 
https://www.youtube.com/watch?v=kg9Kgvv9-0g&list=PLtL57Fdbwb_Chn-dNR0qBjH3esKS2MXY3&index=13