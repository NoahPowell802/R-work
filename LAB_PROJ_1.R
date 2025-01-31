library(readr)
Lab_2 = read_csv("Downloads/Lab_2.csv")
data = Lab_2
summary(data)
hist(data$Stress_Level)
data[100,]
data = data[1:99,]
plot(data$Stress_Level, data$Mental_Health_Score)
freq = table(data$Coping_Mechanism)
freq
