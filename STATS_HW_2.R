# Q1 
rb1 = rbinom(n = 10, size = 7, p = 0.5) # rb = random binomial
rb2 = rbinom(n = 100, size = 7, p = 0.5) # n = the number of trails per observation
rb3 = rbinom(n = 1000, size = 7, p = 0.5) # size = the number of observations
barplot(table(rb1))
barplot(table(rb2))
barplot(table(rb3))
  # When we increase the number of trials we see a, 
  # more even spread as the number of trials is filling in the gaps in a sense.
# Q2
rb1_v2 = rbinom(n = 10, size = 100, p = 0.5) 
rb2_v2 = rbinom(n = 100, size = 100, p = 0.5) 
rb3_v2 = rbinom(n = 1000, size = 100, p = 0.5)
barplot(table(rb1_v2))
barplot(table(rb2_v2))
barplot(table(rb3_v2))
  # When the Binomial Distributions become more,
  # approximated towards the center point or mean.
  # the distribution of this graph would be unimodal,
  # normally distributed, and bell curved.
# Q3
drv = c(1, 2, 3, 4, 5) # drv = discrete random variable
drv_data = sample(drv, size = 7, replace = TRUE) 
drv_data
drv_mean = mean(drv_data)
drv_mean
# Q4
x = runif(n = drv_data, min = 0, max = 1)
x
# Q5

flips1 = rbinom(n = 10, size = 1, p = x[1])
flips2 = rbinom(n = 10, size = 1, p = x[2])
flips3 = rbinom(n = 10, size = 1, p = x[3])
flips4 = rbinom(n = 10, size = 1, p = x[4])
flips5 = rbinom(n = 10, size = 1, p = x[5])
flips6 = rbinom(n = 10, size = 1, p = x[6])
flips7 = rbinom(n = 10, size = 1, p = x[7])
list(flips1, flips2, flips3, flips4, flips5, flips6, flips7)
# the winner of the contest was the largest probability in 
# question 4. that being the 4th group in my case.

