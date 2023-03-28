haveTidyverse <- system.file(package = 'tidyverse')
print(haveTidyverse)
ifelse(nchar(haveTidyverse) < 1, install.packages('tidyverse', dependencies = TRUE), NA)
library(tidyverse)

my_data <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(sleep_total > 18)
#not operator  filter(!sleep_total > 18)

my_data <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(order == 'Primates', bodywt > 20) # comma is and 

my_data <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
 filter(order == 'Primates' | bodywt > 20) # or 

my_data <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(name %in% c('Cow', 'Dog', 'Horse')) # in 

my_data <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(between(sleep_total, 16, 18)) # between included on both side

my_data <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(near(sleep_total, 17, tol = 0.5)) # near by total on both sides
my_data

my_data <- msleep %>% 
  select(name, conservation, sleep_total) %>% 
  filter(is.na(conservation)) # has missing value !is.na(conservation) for no missing data
my_data