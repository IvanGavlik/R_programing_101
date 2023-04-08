# absolute frequency 
# - the number of observations in a particular category

# relative frequency 
# - f = absolute frequency for some category divided total number of observations
# - give info about proportions of data

# grouped continuous data
# you need to define intervals in which the observed values are contained
# example 0-20, 21-40. 41-60...

# empirical cumulative distribution function (ECDF)
# arrange values in am order (smallest to largest or vice versa)
# current frequency (absolute or relative) is sum of current and previous 

# ECDF for ordinal variables it is a step function
sv <- c(rep(1, 4), rep(2, 16), rep(3, 90), rep(4, 70), rep(5, 20))
plot.ecdf(sv)
# TODO napravi primjer 

# ECDF for continuous variables 
# k -> number of groups (intervals)
# ej-1 -> lower limit of jth interval
# ej -> upper limit of jth interval
# dj -> ej - ej-1 -> width of jth interval
# nj -> number of observations in the jth interval
# TODO napravi primjer 

