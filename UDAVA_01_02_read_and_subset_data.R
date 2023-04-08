getwd()

statesInfo <- read.csv('data/stateData.csv');
statesInfo

head(statesInfo, 5)
tail(statesInfo, 5)

names(statesInfo)
str(statesInfo)
dim(statesInfo)

class(statesInfo$state.abb)
row.names(statesInfo)

# filter data
subset(statesInfo, state.region == 1)
statesInfo[statesInfo$state.region==1, ] # firs params row secon params columns

