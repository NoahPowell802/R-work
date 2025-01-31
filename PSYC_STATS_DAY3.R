# Lab day 3 1/30

# Central Tendency

# Mean = 
# Median = 
# Mode = 

# Nominal = no orders just labels (gender)
# Ordinal = has an order but no exact differences (low-medium-high)
# Interval scale = range if exact values (age)

# First looking at the inbuilt functions

x = c(1, 4, 7, 9, 2, 14, 67, 90, 32, 12, 5, 75, 23 ,45, 3, 2, 4, 6, 8, 10)
mean(x)
median(x)

length_x = length(x)

# lets take the sum of the vector

sum_x = sum(x)
sum_x

mean_x = sum_x/length_x
mean_x
mean(x)

# calculate median by hand
# step 1 -> sort data
x_sorted = sort(x)
midpoint = (length_x+1)/2

median_x = x_sorted[midpoint]

median(x)
median_x

# I have 20 elements
x[midpoint - 0.5]

x[midpoint + 0.5]

# this is ordinal, it has a hierarchy but not exact difference

values = c("good", "excellent", "fair", "poor")

sample = values[runif(99,1,5)]

#for repeatedly creating samples
runif(10,1,5) # "hey R give me 10 values, between 1 and 5"

values[runif(99,1,5)] #"give 99 values between 1 and 5" of values

# defining hierarchy 
sample.numeric = vector(length = 99)
sample.numeric

# poor --> 1
# fair --> 2
# good --> 3
# excellent --> 4

sample.numeric[sample == "poor"] = 1
sample.numeric[sample == "fair"] = 2
sample.numeric[sample == "good"] = 3
sample.numeric[sample == "excellent"] = 4
sample.numeric


length_sample = length(sample.numeric)
sorted_numeric = sort(sample.numeric)

midpoint = (length_sample + 1)/2

sorted_numeric[midpoint]

# Median here is fair because the midpoint was 2 and 2 corresponds to fair

# mode = highest frequency data point

x = c(1, 4, 7, 9, 2, 14, 67, 90, 32, 12, 5, 75, 23 ,45, 3, 2, 4, 6, 8, 10)

#table() --> gives frequency fo each value

f=table(x)
f

# Shows us which of the tabled values is the most occurred value

which.max(f)










