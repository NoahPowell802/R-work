# Lab week 11
  #ANOVA

# ANOVA  = ANalysis Of VAriance 
# A one-way ANOVA allows us to test whether or not any number of
# groups have reliably different means.

data = read.table("http://matt.colorado.edu/teaching/stats/labs/lab10-1.txt", header = TRUE)
data

data_a = data$Performance[data$Condition == 'a']
data_a

mean(data_a)

# tapply -> this function uses:
# 1) performance columns -> data
# 2) The conditional column -> categorize into groups
# 3) function that we want to run on the groups/data

m = tapply(data$Performance, data$Condition, mean)
m

barplot(m, ylim = c(0,100))

# Null Hypothesis: There is no difference between the groups or
# The mean difference is 0

# ANOVA is built on a method which internally uses the linear model
# we will us the lm() function to calculate the model

model = lm(Performance ~ Condition, data)
#             Outcome ~ Predictor, (groups)
model

# Model is used to predict the outcome with the help of one or more predictors
 
# The '~' means that we are trying to explain the variable on the left using the 
# variable on the right or the predictor. 

# Now to build ANOVA Model
anova(model)


# Results

# First row give us details across all conditions (groups)

# Difference between the means -> within the group
# F-values is a ratio of means between to means within

# P values = significance 

# df = degrees of freedom(n-1)

# residuals = number of samples - number of groups

# F-value is 3.41 means that variability between the groups is 3.41 times
# larger than we expect just by chance

# the Pr(>F) = less than 0.05 so we must reject the null hypothesis. 
# in other words means that there are differences between these groups.

# Post-hoc comparison:
# We know that there are significant differences, we might want to know which conditions
# differ significantly 

barplot(m, ylim = c(0,100))

TukeyHSD(aov(Performance ~ Condition,data))

# We get the group a-b as the most statistically different groups/conditions
# therefore we reject the null hypothesis and report the results with these 
# conditions. 

# If p-value for all is not less than 0.05 for any than no comparisons are significant.

































