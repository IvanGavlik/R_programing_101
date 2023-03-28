haveTidyverse <- system.file(package = 'tidyverse')
print(haveTidyverse)
ifelse(nchar(haveTidyverse) < 1, install.packages('tidyverse', dependencies = TRUE), NA)
library(tidyverse)

sw <- starwars %>% 
  select(name, height, mass, gender) %>% 
  rename(new_name = name, weight = mass)

a
sw2 <- starwars %>% 
  select(name, height, mass, gender) %>% 
  rename(weight = mass) %>% 
  na.omit() %>% 
  mutate(height = height / 100) %>% 
  filter(gender == "masculine" | gender == "feminine") %>% # or file(gender %in% c("masculine", "feminine"))
  mutate(gender = recode(gender,
                         masculine = "m",
                         feminine = "f"
                         )) %>% 
  mutate(size = height > 1 & weight > 75, # will give logical type TRUE, FALSE for each item
         size = ifelse(size == TRUE, "big", "small"))


