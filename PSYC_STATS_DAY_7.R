# PSYC_STATS_DAY_7

# Independent sample t-test (2 sample t-test)

# Steps for 1 sample t-test (just for comparison/recall)
# 1. calculate length of data -> n / length()
# 2. calculate the mean of the data -> mean()
# 3. calculate the standard deviation -> sd()
# 4. calculate standard error ->sd/sqrt(n)
# 5. calculate the t metric -> (sample mean - population mean)/ standard error
# 6. using t calculate p value

# 2 sample t-test
data = read.table("http://matt.colorado.edu/teaching/stats/labs/lab7-1.txt", header = TRUE)
data

# null hypothesis and alternatice hypothesis
# Null hypothesis -> There are no differences in the means of both the groups
# The average depression score of both the groups are same
# Mean_experiment = Mean_control

# Alternative Hypothesis -> The mean of the two samples are different.
# Mean_experiment /= Mean_control

# T-test is for only small amount of data and used to reduce randomness

experiment_group = data$score[data$condition == 'experimental']
experiment_group
control_group = data$score[data$condition == 'control']
control_group

mean_control_group = mean(control_group)
mean_experiment_group = mean(experiment_group)
mean_control_group
mean_experiment_group

mean_diff = mean_control_group - mean_experiment_group
mean_diff

# calculating standard deviation
sd_experiment = sd(experiment_group)
sd_control = sd(control_group)
sd_experiment
sd_control

# Calculating length
len_experiment = length(experiment_group)
len_control = length(control_group)
len_experiment
len_control

# Calculating Standard error
se_experiment = sd_experiment/sqrt(len_experiment)
se_control = sd_control/sqrt(len_control)
se_experiment
se_control

# 2 sample /(independent) t.test()
t.test(experiment_group,control_group, var.equal = TRUE) 
  # var.equal means the varience in both samples is the same


# alternative hypothesis states that the means are different
# degrees of freedom is = to n-2 (30-2) = 28
# confidence interval we can see that the 0 value lies in our range,
# so the Null hypothesis could be plausible/ we fail to reject.  
# p value -> is greater than 0.05 or 5% so we fail to reject the Null,
# and accept the alternate. 

# To report the results: 
# we performaed an independed sample t-test(2sample t-test), 
# showed the average depression scores for the patient given
# the medication (experimental -> 21.53) and the average of the control group
# was (control -> 23.20), we got a p-value of 0.55 meaning we accept that means
# of both the groups are different. 



# option 1 -> 165cms
# option 2 -> 160cms - 170cms
# option 3 -> 155cms - 175cms
# option 4 -> 160cms - 175cms 95% of the time
