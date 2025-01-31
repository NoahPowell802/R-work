# DATA FRAMES

# Lets say we have measurements on the same subject (age, gender, eye color)
# Its useful to organize into a data frame

sex = c('f', 'f', 'f', 'm', 'm')
age = c(19, 23, 34, 33, 29)
height = c(120, 143, 146, 154, 133)

# How to create data frames from the vectors

data = data.frame(sex, age, height)
data


# fetch the column names from the data frame
names(data)

names(data) = c('gender', 'age', 'height')
names(data)


# Another useful function summary() -> gives summary of multiple descriptive,
# statistics at once

summary(data)

# getting dimension of the data frame
data
dim(data)

# Output 5 x 3, which is # of rows x # of columns


x = c(1,4,7,6,5)
x[3]

# lets fetch the age of the third row
data[3, 2]

# fetch the complete row
data[2,]

#fetching the complete details for rows 1, 2, and 3
data[1:3,]

# I want details about just age and height for candidate 1
data[1, 2:3]

# I want all the age details for all the candidates
data[,3]
# or
data$age
data$height
data$gender

# Creating a histogram, hist()
hist(age)
hist(height)
hist(age, breaks = 10)


# creating a scatter plot(shows relationship between 2 values/variables)

plot(age, height)

# frequency distribution
# lets create a score vector with at least 20 values

x = c(1,2,3,4,5,7,8,3,1,4,6,7,8,9,4,3,2,4,7,8,6,4,2,1,7,4,2,9)
x

# lets create a frequency distribution table for x
f = table(x)
f

# Lets get the length of the vector(x) and also the sum of, 
# frequencies f and verify if they are same

n = length(x)
n

sum(f)

# Lets create a bar plot for our frequency table
barplot(f)

# loading data
# if we have data stored as a text file, 
# R will read it in and create a data frame of its own. 
# We will be using a url to load the file
# the file could be local(on the system) or on the cloud.

data = read.table('http://matt.colorado.edu/teaching/stats/labs/lab2-1.txt',, header = TRUE)
data

summary(data)

data[13:19,]

data$exam2[data$final > 80]
