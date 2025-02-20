# Class notes 02/20
# 1:10 "random" number data

fp = c(3, 7,  2, 5, 9, 6, 4, 7)
bp = c(7, 8, 5, 9, 2, 2, 8, 3, 8, 3, 5, 10, 18, 5, 7, 8)

plot(seq(fp), fp, type = "l") # here the plot type = l means line graph
plot(seq(bp), bp, type = "l")

table(fp)
table(bp)

# here I create an ab line to show our hypothesis
abline(h=5)

data = c(fp, bp)

# here the plot type = b means line graph w/ points

plot(seq(data), data, type = "b") 

barplot(table(fp)) # this shows our uniform distribution 
barplot(table(bp))
barplot(table(data))

# H1 P = 0.5
# Ha P /= 0.5
# alpha = 5%

qbinom(p = 0.025, size = 10, prob = 0.5, lower.tail = TRUE)
# 2 or below is the lower tail rejectable data

# To verify this \/
pbinom(q = 1, size = 10, prob = 0.5, lower.tail = TRUE)

data = data[-21] # to get rid of the outliar data
data

mean(data)

# Z-test
  # H1 mu = 5
  # Ha mu /= 5
  # alpha = 5%

sd(data)

Z = (5.78 - 5)/(2.49/sqrt(23))
Z


qnorm(p = 0.025, mean = 0, sd = 1, lower.tail = TRUE)

# Calculating a P value \/

pnorm(q = Z, mean = 0, sd = 1, lower.tail = FALSE)

# To find a p value of an upper and lower tailed test = 2(minimum value)

# There is insufficient evident to conclude that the true mean 
# is different from 5 based on an alpha of 5%.
# alpha is controlling the amount of truth essentially 

curve(dnorm(x, mean = 0, sd = 1), from = -3, to = 3)
curve(dt(x, df = 22), from = -3, to = 3)
# T-test

t.test(x = data, alternative = "two.sided", mu = 5)







