# Class notes 4/10 
  # ANOVA = Analysis of Variance
  # Anova Table


# Put the data into the data frame showing each free throw made
# next to the group they were in 

# Using y_bar = mean(data) for overall average
# y_p_bar = mean(y_p) for 


y_p = rbinom(n = 30, size = 50, prob = 0.60)
y_100 = rbinom(n = 30, size = 50, prob = 0.45)
y_300 = rbinom(n = 30, size = 50, prob = 0.75)

data = data.frame(list(y = c(y_p, y_100, y_300), treatment = rep(c("Placebo", "100 MG", "300 MG", each = 30))))

y_bar = mean(data$y)
y_p_bar = mean(y_p)
y_100_bar = mean(y_100)
y_300_bar = mean(y_300)

SSW = sum((y_p - y_p_bar)^2 + (y_100 - y_100_bar)^2 + (y_300 - y_300_bar)^2)
SSB = ((y_p_bar - y_bar)^2) + ((y_100_bar - y_bar)^2) + ((y_300_bar - y_bar)^2)

MSW = SSW/(90-3)
MSB = SSB/(3-1)

f_stat = MSB/MSW
f_stat

pf(q = f_stat, df1 = 2, df2 = 87, lower.tail = FALSE)

