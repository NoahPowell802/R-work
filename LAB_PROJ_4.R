# Q1
MA = vector(length = 50000)

n = 10
mu = 60
s = 20

MB = vector(length = 50000)

n2 = 30
mu2 = 60
s2 = 20

for(i in 1:50000) MA = rnorm(n,mu,s)
for(i in 1:50000) MB = rnorm(n2,mu2,s2)

# Q2
hist(MA, breaks = 5)
hist(MB, breaks = 5)

# Q3
sd(MA)
sd(MB)

# Q4
  # The sample size of 30 is better because it 
  # is closer to the sample size of the original sample.

# Q5 
MP = vector(length = 50000)
MQ = vector(length = 50000)

P_n = 15
P_mu = 120
P_s = 5

Q_n = 15
Q_mu = 120
Q_s = 25

for(i in 1:50000) MP = rnorm(P_n,P_mu,P_s)
for(i in 1:50000) MQ = rnorm(Q_n,Q_mu,Q_s)

# Q6
hist(MP, breaks = 10)
hist(MQ, breaks = 10)

# Q7
sd(MP)
sd(MQ)

# Q8
  # The less the standard deviation is the more reliable the 
  # sample means will be because the lower sd indicates the data is
  # more clustered in one area, that being around mu. 

