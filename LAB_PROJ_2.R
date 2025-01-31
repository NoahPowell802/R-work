# Q1
data = read.csv("https://raw.githubusercontent.com/MananDoshi1301/psyc2111-data/main/lab_3.csv", header = TRUE)
data

names(data)
# Q2

# The first variable has the measurement variable of interval scale. 
# The best measure of its central tendency would be mean, because that would take its average. 

# Q3
Length_Reaction_Time = length(data$Reaction_Time)
Sum_Reaction_Time = sum(data$Reaction_Time)
Mean_Reaction_Time = Sum_Reaction_Time/Length_Reaction_Time
Mean_Reaction_Time
# Q4

# The second variable has the scale of nominal. 
# The best measurement tendency for nominal is mode. 

# Q5

length_Condition = length(data$Condition)
t = table(data$Condition)
t
which.max(t)

# Q6

# The 3rd variable has the scale of ordinal.
# the best way to measure its central tendency is median. 

# Q7

sample = values[runif(50,1,4)]
sample
sample.numeric[sample == "Low"] = 1
sample.numeric[sample == "Medium"] = 2
sample.numeric[sample == "High"] = 3
length_sample = length(sample.numeric)
sorted_numeric = sort(sample.numeric)

midpoint = (length_sample + 1)/2

sorted_numeric[midpoint]

# Here the value of 2 is = Medium. So the median or mid point is Medium here.