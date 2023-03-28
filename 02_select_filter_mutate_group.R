haveTidyverse <- system.file(package = 'tidyverse')
print(haveTidyverse)
ifelse(nchar(haveTidyverse) < 1, install.packages('tidyverse', dependencies = TRUE), NA)
library(tidyverse)

starwars %>% 
  select(gender, mass, height, species) %>%
  filter(species == 'Human') %>%
  na.omit() %>% # remove NA
  mutate(height = height / 100) %>% #update and change variable
  mutate(BMI = mass / height^2) %>% 
  group_by(gender) %>%  #TODO
  summarise(Average_BMI = mean(BMI)) #TODO


# group by and summarise
# https://www.geeksforgeeks.org/group-by-function-in-r-using-dplyr/

have_dplyr <- system.file(package = 'dplyr')
print(have_dplyr)
ifelse(nchar(have_dplyr) < 1, install.packages('have_dplyr', dependencies = TRUE), NA)
library(dplyr)
df <- read.csv(file = "Documents/projects/osnoveStatistike/R_101/R_101/data/Sample_Superstore.csv")

df_group_region <- df %>% 
  group_by(Region) %>% 
  summarise(sales = sum(Sales),
            profit = sum(Profit),
            .groups = 'drop')
View(df_group_region)

df_group_region_category <- df %>% 
  group_by(Region, Category) %>% 
  summarise(sales = sum(Sales),
            profit = sum(Profit),
            .groups = 'drop')
View(df_group_region_category)