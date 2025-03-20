# Class notes 3/20 
# T-test
pre = c(80, 82, 15, 50, 80, 75, 60, 65)
post = c(75, 60, 25, 40, 60, 75, 61, 62)
plot(pre, post)

# 1) Assumptions: normal distributions repeated
# 2) Hypothesis: H0: mu of d = 0 Ha: mu of d < 0
  # Ha makes this a lower tailed test because of <
# 3) t statistic
d = post - pre
d

d.bar = mean(d)
d.bar
d.sd = sd(d)
d.sd
n = 8
n

t.stat = (d.bar)/(d.sd/sqrt(n))
t.stat

# Construct rejection rejeon

qt(0.05, df = 8-1, lower.tail = TRUE)

# Calculate p-values

pt(t.stat, df = 7, lower.tail = TRUE)


# Now for the independent version

scared = c(80, 82, 15, 50, 80, 75, 60, 65)
unscared = c(75, 60, 25, 40, 60, 75, 61, 62)
plot(pre, post)

# Assumptions: 2 normal distributions
# Hypothesis: H0: mu of scared = mu of unscared Ha: mu of scared < mu of unscared
# T-statistic

us.bar = mean(unscared)
s.bar = mean(scared)
us.var = var(unscared)
s.var = var(scared)
n = 8

t.stat = (s.bar - us.bar)/sqrt((s.var + us.var)/n)
t.stat

# Construct rejection region 

qt(0.05, df = 2*7, lower.tail = TRUE)

# Calculate p-values

pt(t.stat, df = 2*7, lower.tail = TRUE)

# Claim
# we have insufficient evidence to conclude the scaring had an effect.







