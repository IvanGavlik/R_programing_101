# R is a programming language especially designed for data analysis and data
# visualization

# R is a functional object oriented language in that everything that happens
# is a function call and everything that exists is an object.

# R is not strongly typed (can define a variable without expressing a type)
a = 3.2
a = "o la la"

# change current directory -> setwd
dir <- getwd()
dir(path = dir, all.files = TRUE)
# setwd("jfla")

# list variable names in workspace memory
ls()
#save.image(file= "testSaveImage") saving variables to a file
#load("testSaveImage")
system("ls -al") # exe command in the shell

# The function install.packages(X) installs the functions and data sets in the package X from the Internet.
# After installation the function library(X) brings the package into scope, thus making the functions and
# variables in the package X available to the programmer. This two-stage process 
# mitigates potential overlap in the namespaces of libraries. Typically, an R
# programmer would install many packages on his or her computer, but have
# only a limited number in scope at any particular time. 


# scalar data types

# numeric -> real number
# interger
# logical TRUE/FALSE
# string
# dates
# factors (categorical data like enum) - can be ordered
#   limited number of different values

a = 3.2
typeof(a)
class(a)

t = "123" 
typeof(t)
class(t)

#factors
#   first parameter is value 
#   levels is possible values that value can take 
current.season = factor("summer", 
                        levels = c("summer", "fall", "winter", "spring"),
                        ordered = TRUE
                        )
current.season

current.season2 = factor("summer", 
                        levels = c("summer", "fall", "winter", "spring"),
                        ordered = FALSE)
current.season2

levels(current.season)
levels(current.season2)

# NA -> missing values

# collections that hold scalar values 
# 1. vector
# 2. arrays
# 3. list
# 4. data frames

# vector
#   one-dimenisional
#   ordered collection 
#   same type

x1 <- c(4, 2, "1") # be careful
x1

x2 <- c(4, 2, TRUE) # be careful
x2

# array 
#   multidimensional vector

z <- seq(1, 20, length.out = 20)
fuckingA <-array(data = z, dim = c(4, 5)) # 2-d array
fuckingA[1,1:2]

y <- fuckingA[1,1:2]
1 + y + 1

# list 
#   ordered collections 
#   different types

# data frame
#   matrix 

# access - no 0 index
x[0]
x[-1] # all elements nut not element at index 1
x[c(TRUE, TRUE, FALSE)] # return only tree


r = rep(3, times = 10) # repeat value n time
s = seq(0, 1, by= 0.1) 

any(r <= 4) # any element match condition TRUE/FALSE
all( r > 4) # all elements match condition TRUE/FALSE
which(r <= 4) # retun index

# filtering
subset(s, s > 0.5)
s[s > 0.5]

# running r interactively
# best option inside R sution 
# in terminal type R use q() for quit 


# running r non-interactively
# 1. inside r script call another script by running source("foo.R") 
# 2. call from shell R CMD BATCH foo.R passing arguments 
#   R CMD BATCH --args arg1 arg2 foo.R
# 3. call from shell Rscript foo.R passing arguments
#   Rscript foo.R arg1 arg2
# 4. execute script #!/usr/bin/Rscript ./foot.r <inputFIle> <outputFile>

print("args ")
args <- commandArgs(TRUE)
args
print("--- end ---")