# STATS HW 4
# Q1
  # P(A u B) = 4/8 + 2/8 - 3/8
  # P(1 - P(A u B)) = 5/8

# Q2
qnorm(p = 0.05, mean = 0, sd = 1, lower.tail = TRUE)
qt(p = 0.05, df = 30-1, lower.tail = TRUE)

  # The T value is very slightly more negative than the Z value
  # because the t-distribution has heavier tails

  # The t-distribution would have the more extreme rejection region

# Q3
qt(p = 0.01, df = 20, lower.tail = TRUE)
qt(p = 0.99, df = 20, lower.tail = TRUE)

  # The rejection region is from t < -2.528 to t > 2.528

# Q4
pt(1, df = 49) - pt(-1, df = 49)

  # The probability falls almost exactly at 1 standard deviation so it does
  # in fact follow the empirical rule.

  # For n = 5 the distribution has much heavier tails so it will be lower than 68%

# Q5
pt(1, df = 9999) - pt(-1, df = 9999) 
pt(2, df = 9999) - pt(-2, df = 9999) 
pt(3, df = 9999) - pt(-3, df = 9999) 

  # As our sample size grows larger we can conclude the t-distribution follows 
  # normal distribution almost exactly. 




