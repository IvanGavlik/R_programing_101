library(httr)

# Define endpoint and X-Auth-Token header 0
endpoint <- "http://api.football-data.org/v4/competitions/2003/matches"
token <- "5b287a57c337497cb99cab75e2db112d"

# Make request with X-Auth-Token header
response <- GET(endpoint, add_headers("X-Auth-Token" = token))

# Check response status
status_code(response)

# Print response content
footballData  <- content(response)

m <- footballData$matches

head(m, 1)

m[[1]]$homeTeam$name
m[[1]]$awayTeam$name
m[[1]]$score$fullTime$home
m[[1]]$score$fullTime$away
m[[1]]$odds

library(tidyverse)

# Soccer 


seriea_data <- read.csv(file = "/home/ivan/Documents/projects/R_programing_101/data/seriea_scores.csv")


seriea <- seriea_data %>% 
  mutate(home = as.integer(substring(seriea_data$X0.2, 1,1))) %>% 
  mutate(home = ifelse(home <= 5, home, 5)) %>% 
  mutate(guess = as.integer(substring(seriea_data$X0.2, 3,3))) %>%
  mutate(guess = ifelse(guess <= 5, guess, 5)) %>% 
  mutate(sum = home + guess) %>% 
  select(home, guess, sum)


hnl_data <- read.csv(file = "/home/ivan/Documents/projects/R_programing_101/data/hnl_scores.csv")
hnl <- hnl_data %>% 
  mutate(home = as.integer(substring(hnl_data$X3.2, 1,1))) %>% 
  mutate(home = ifelse(home <= 5, home, 5)) %>% 
  mutate(guess = as.integer(substring(hnl_data$X3.2, 3,3))) %>%
  mutate(guess = ifelse(guess <= 5, guess, 5)) %>% 
  mutate(sum = home + guess) %>% 
  select(home, guess, sum)

par(mfrow=c(1,2)) 
#boxplot(seriea$sum)
#boxplot(hnl$sum)

#summary(seriea$home)
#summary(hnl$home)

hist(hnl$sum, 
     xlim = c(0, 10),
     ylim=c(0,100),
     breaks = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),)
hist(seriea$sum, 
     xlim = c(0, 10),
     ylim=c(0,100),
     breaks = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))