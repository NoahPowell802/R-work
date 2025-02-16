# Lab week 5

# sample and population

# population - 135 students. average = 17 for example
# sample - 50 students. avg = 17.3. now does this sample represent the population

# Random samples from population
runif(10,1,10)

# lets create a vector of length n and mean mu and standard deviation. s, let this be our population


n = 100000
mu = 20 # mean
s = 7.5 # standard deviation

x = rnorm(n,mu,s)
hist(x)

# Reliability of the sample mean
# now we will compare the mean of samples with the 
# mean of our population (mean(x))

# now to create a sample using a small n value

n = 100000
mu = 20
s = 2.5

sample = rnorm(n,mu,s)
mean(sample)
# mean value = 19.99

# mean with n = 1000 = 20.03654
# mean with n = 10000 = 20.00731
# mean with n = 100000 = 19.98896

# we notice that the mean deviates by a small margin

# when the mean of population is closer to mu,
# data has low uncertainty and high reliability

# when the mean of the sample is not closer to the mean of the population
# data is highly uncertain and has low reliability

# use of for loop
# for() loop runs command multiple times as specified

for(i in 1:10) print(i)

for(i in 5:6) print(i)

example = vector(length = 50)
for(i in 1:50) example[i] = i

example

# lets create multiple samples and analyze them
M = vector(length = 10000)

n = 10000
mu = 20
s = 2.5

# trying to take 100000 samples and store the mean
# of each sample in the vector M

for(i in 1:10000) M[i] = mean(rnorm(n,mu,s))
hist(M, breaks = 100)

# standard error and uncertainty
# standard error measures the uncertainty 
# i.e how far the mean of sample is from the population mean
# when standard error is low, M is more reliable
# when standard error is high, M is less reliable 








