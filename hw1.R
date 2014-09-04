# check that the data file exists, if not, exit
if (!file.exists("/Users/geo/Code/octocats/Coursera_R_Programming/hw1_data.csv")) {
          stop("Directory /Users/geo/Code/octocats/Coursera_R_Programming/hw1_data.csv does not exist.")
    }

# set the working directory 
setwd("/Users/geo/Code/octocats/Coursera_R_Programming/")

# read the csv file and place in data frame
airquality <- read.csv("hw1_data.csv")

# what are the column names of the dataset?
names(airquality)

# what are the dimensions the dataset?
dim(airquality)

# Extract the first 2 rows of the data frame and print them to the console. 
airquality[1:2,]

# Extract the last 2 rows of the data frame and print them to the console.
airquality[152:153,]

# What is the value of Ozone in the 47th row?
airquality[47,1]

# How many missing values are in the Ozone column of this data frame?
ozone <- airquality[,1]
good <- complete.cases(ozone)
missing <- length(ozone) - length(ozone[good])
missing

# What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
mean(ozone[good])

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. 
# What is the mean of Solar.R in this subset?
# get the Ozone, Solar.R and Temp columns from the dataframe
columns <- c(1,2,4)
triad <- airquality[,columns]
good <- complete.cases(triad)
hold <- triad[good, ][,1:3]

o <- hold[,1] > 31
t <- hold[,3] > 90

mean(hold[t,2])

# What is the mean of "Temp" when "Month" is equal to 6? 
columns <- c(4,5)
duple <- airquality[,columns]  
m <- duple[,2] == 6
mean(duple[m,1])

# What was the maximum ozone value in the month of May (i.e. Month = 5)?
columns <- c(1,5)
duple <- airquality[,columns]  
good <- complete.cases(duple)
m <- duple[good,][,2] == 5
G <- complete.cases(duple)
max(duple[G,1])




sink("sink_utility.txt")
