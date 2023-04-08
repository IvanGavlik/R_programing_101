# TODO https://swirlstats.com/students.html
# TODO https://www.rdocumentation.org/packages/DescTools/versions/0.99.48
# TODO https://www.statmethods.net/index.html
# TODO https://www.rdocumentation.org/ -> robustHD
# TODO https://blog.revolutionanalytics.com/2013/08/foodborne-chicago.html

# ggplot2
# data sets
#   mpg -> fuel economy https://ggplot2.tidyverse.org/reference/mpg.html
#   midwest -> midwest counties from 2000 US census
#   diamonds

# plyr
# data sets
#   baseball
#   osone

# reshape2
# data sets
#   tips
# change the structure and format your data 
# Ex: melt funtion

# robustHD
# statistics and model selection methods for high-dimenional data

#inpsecting datasets
?iris

data(iris)

head(iris) # list first few rows
levels(iris$Species) # list classes (different) -> for factors
class(iris$Species)

summary(iris)