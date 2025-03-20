# LAB WEEK 8
# Paired sample t-test
# Paired sample t-test are used for paired sample studies
# in which the subjects come in pairs or each subject is measured twice.

# In today experiment, we give a placebo pill for the first values and 
# measure the depression score and after one month we give them the actual
# medication and measure their depression score. 

# null Hypothesis: There is no effect of medication on depression score(mean difference is 0). 

data = read.table("http://matt.colorado.edu/teaching/stats/labs/lab8-1.txt", header = TRUE)
data

# step 1: we will calulate the difference between the scores
diff = data$placebo - data$medication
diff

# step 2: lets perform a t-test on teh diff values

# mean
mean_diff = mean(diff)

# standard deviation
sd_diff = sd(diff)

# standard error
n = length(diff)
std_diff = sd_diff/sqrt(n)

# t-statistic
t = mean_diff/std_diff

# p-value
p = pt(-abs(t), n-1)*2
p

# as the p value is less than 0.05(significance level), we reject the null
# or the mean difference is not 0

t.test(diff, mu = 0)

# lets see the standard error in medication

sd(data$medication)/sqrt(n)

# this accounts for differences in sample size

std_diff

t.test(data$medication, data$placebo)
# p-value = 0.5253

# we can see that we got a p-value of 0.5253 which is greater than the significance
# level and is yielding completely opposite results when compared to paired
# sample t-test.

# Power analysis
  # this is something we run before we collect data
  # this is to know how many data points are needed to be a certain amount accurate
  
  # this calculated the power of our data, meaning it calculates the probability that 
  # the study will yield evidence that lets us reject the null

power.t.test(type = 'one.sample', n = 30, sig.level = 0.05, delta = 5, sd = 10)

# power = 0.7539627 means we have a 75% chance of rejecting the null
# concluding that there's a real difference between the groups


# how do we find out the sample size? 
power.t.test(type = 'two.sample', power = 0.8, sig.level = 0.05, delta = 5, sd = 10)

# we can see that for power = 0.8(80%) this means we need at least 64 data points
# or sample size to significantly reject the null hypothesis. 









