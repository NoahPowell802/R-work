library(readr)
data <- read_csv("Downloads/Lab_6_Data.txt")
# Q1
  # The average short term memory score is a 75 for college students on a standardized test

# Q2
mu = mean(data$memory_score)
mu

data_sd = sd(data$memory_score)
data_sd

n = length(data$memory_score)
n

  # The mean is 72.3, sample size is 50, sd = 11.2

# Q3
  # standard error = sd/(sqrt(n))
error = data_sd/(sqrt(n))
  # standard error = 1.583919

# Q4
lower_bound = mu - (2) * error
lower_bound
upper_bound = mu + (2) * error
upper_bound

# Lower bound and upper bound range = (69.12, 75.46)

# Q5
  # here I calculated the confidence interval by taking the mean + and - alpha which was 2
  # and multiplying that by the standard error to get upper and lower bounds. 

# Q6
population_mean = 75
t = (mu - population_mean)/error
t

  # The T statistic for testing the null is -1.707609

# Q7
p = pt(-abs(t),n-1)*2
p

  # The P-value is 0.09403837

# Q8
t.test(data$memory_score, mu = 75)

# Q9
  # The results of my hypothesis test showed that we fail to reject our null hypothesis
  # because p > 0.05. 

