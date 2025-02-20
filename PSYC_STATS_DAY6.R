# Lab week 6
# 1. Confidence interval
# 2. T-test (form of hypothesis testing to determine if there is enough evidence to support the claim)

# Confidence to interval

# this gives interval\/
# M +- error
# lower bound = M - error
# upper bound = M + error

# confidence to our interval. here z is a standardized value
# lower bound = M - (error*z)
# upper bound = M + (error*z)

data = read.table("http://matt.colorado.edu/teaching/stats/labs/lab6-1.txt", header = TRUE)
data

# this data is the weights of pumpkins
# Normal pumpkin weights 12 pounds
# What do we want to measure here?
# whether or not adding a additive gives larger pumpkins. 

# Now to find the standard error(sd)

summary(data)

n = length(data$Weight)
M = mean(data$Weight)

# standard error = standard_deviation/sqrt(n)
standard_deviation = sd(data$Weight)
error = standard_deviation/sqrt(n)
error

# M - error
# M + error

# z = 90% = 1.68
# z = 95% = 1.96 ~2
# z = 99% = 2.57

# confidence interval
# CI = M +/- (z) * Standard_error
# CI = M +/- (z) * (standard_deviation/sqrt(n))

M = mean(data$Weight)
s_d = sd(data$Weight)
n = length(data$Weight)
se = (s_d/sqrt(n))

lower_bound = M - (2) * se
lower_bound
upper_bound = M + (2) * se
upper_bound

# Lower bound and upper bound range = (11.94, 13.46)


# T-test | 3 different kinds: 
  # 1. One sample t-test, comparing the population with the sample
  # 2. Two sample t-test, comparing between two samples
  # 3. Paired t-test, comparing 1 sample(under "treatment") to control sample


# step 1, define null and alternative hypothesis

# Null hypothesis: the additive does not change the pumpkin weight. 
  # mean weight would = 12
# Alternate hypothesis: the additive change the weight. 
  # the mean weight /= to 12

# step 2, calulate the mean
M = mean(data$Weight)

# step 3, calulate standard deviation
s_d = sd(data$Weight)

# step 4, compute standard error
se = (s_d/sqrt(n))

# step 5, calculate the t-statistic
  # t = (sample_mean - population mean)/se
population_mean = 12
t = (M - population_mean)/se
t

# t, tells us how far the data is from population mean = 12

# t-statistics value came out to 1.850992. What does this mean to me? is it significant?
# how do we get a probability value? 

# pt(), give us the cumulative probability (-abs) = "absolute value"
p = pt(-abs(t),n-1)*2
p

# p = 0.069
# p < 0.05 we reject null hypothesis
# p > 0.05 we fail to reject the null hypothesis

# one sample t-test
# Population mean > given to us
# sample mean = mean(data$columnname)
# standard deviation = sd(data$columnname)
# standard error = sd/(sqrt(n))
# t-statistics = (sample mean - population mean)/se
# calculate the p value

# simpler way\/

t.test(data, mu = 12)

# to calculate the confidence interval
# asking for 95% lets say
# cI = sample_mean +/- z * se
# sample_mean = mean()
# z = 2
# se  = sd/sqrt(n)







