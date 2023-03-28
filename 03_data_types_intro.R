# data types 

# nominal data -> character -> text
# ordinal categoricaly data -> factor -> levels
# integer
# numeric 
# logical

have_dplyr <- system.file(package = 'dplyr')
print(have_dplyr)
ifelse(nchar(have_dplyr) < 1, install.packages('have_dplyr', dependencies = TRUE), NA)
library(dplyr)

friends <- read.csv(file = "Documents/projects/osnoveStatistike/R_101/R_101/data/friends.csv", sep = ';' )
str(friends)


friends$height <- as.factor(friends$height)
str(friends)

friends$height <- factor(friends$height, 
                         levels = c("Tall", "Short"))

friends$more_than_23 <- friends$age > 23
