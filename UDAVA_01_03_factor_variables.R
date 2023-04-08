# data types https://www.statmethods.net/input/datatypes.html

reddit <- read.csv('data/reddit.csv')

reddit$age.range   <- as.factor(reddit$age.range)

levels(reddit$age.range)

library(ggplot2)
qplot(data = reddit, x = age.range)

# ordered factors
#library(dpylr)
names <- unique(reddit$age.range)
names
reddit2 <- reddit
reddit2$age.range <- ordered(reddit2$age.range, 
                             c('Under 18', '18-24', '25-34', '35-44', '45-54', '55-64', '65 or Above'))
qplot(data = reddit2, x = age.range)