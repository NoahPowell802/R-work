# Q1
Outcomes = c("H", "T")
Var1 = sample(Outcomes, size = 100, replace = TRUE)
Var1
# Q2
Number_Heads = sum(Var1 == "H")
Porbability_Heads = Number_Heads / 100
# The probability is exactly in line with what it should be. 
# Q3
Var1[10] = "NA"
Var1[50] = "NA"
Var1
sum(Var1 == "H")
New_Porbability_Heads = sum(Var1 == "H")/ 100
# The probability shifted slightly because 2 values were assigned NA. 
# Those values will shift slightly every time the code is run because,
# of the nature of the random distribution of the heads and tails values.
# Q4
table(Var1)
barplot(table(Var1))
# Tails represents the mode here 
# Q5
Var2 = sample(Outcomes, size = 2, replace = TRUE)
# Q6
Var1[10] = Var2[1]
Var1[50] = Var2[2]
Var1
