# Variability

# Range of Data
  # Minimum to Maximum value = the range
x = runif(200,0,10)
x
hist(x, breaks = 20)
  # Range of data
minimum_val = min(x)
maximum_val = max(x)
minimum_val
maximum_val

range = max(x) - min(x)
range

# Quartiles and Interquartile range

FirstQuartileLocation = length(x)*0.25
FirstQuartileLocation

ThirdQuartileLocation = length(x)*.75
ThirdQuartileLocation

sort_x = sort(x)
sort_x

q1 = sort_x[FirstQuartileLocation]
q3 = sort_x[ThirdQuartileLocation]

  # Interquartile range = q3-q1
iqr = q3-q1
iqr

q60_location = length(x)*0.6 # finding the 60th percentile
sort_x[q60_location]

# Standard deviation and variance

M = mean(x)
M

deviation = x - M
deviation

square.deviation = deviation^2
square.deviation

n = length(x)
variance = sum(square.deviation)/(n-1)
variance

  # To get the standard deviation we take square root of variance
std = sqrt(variance)
std

std.simplified = sqrt(sum((x-M)^2)/(n-1))

# Percentiles 
q80_location = length(x)*0.8
sorted_x = sort(x)
sorted_x[q80_location]

  # If a value is given(I need to rank percentile of data before this point)

value_given = 6.063393883
x[x < value_given] # indexing all the values
mean(x < value_given) # this shows what % of data lies before the given value


# Z-score = (value - mean)/standard deviation

  # variance = sqrt(sum((x-M)^2)/(n-1))
x[46]
z = (x[46] - M)/std
z














