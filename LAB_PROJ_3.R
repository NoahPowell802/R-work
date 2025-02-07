library(readr)
lab_4 <- read_csv("~/Downloads/lab_4.csv")
View(lab_4)

# Q1
lab_4_max = max(lab_4)
lab_4_min = min(lab_4)
lab_4_max
lab_4_min

lab_4_range = (lab_4_max - lab_4_min)
lab_4_range

# Range = 17.44975. 

# Q2
FirstQuartileLocation = length(lab_4$study_hours)*0.25
FirstQuartileLocation

ThirdQuartileLocation = length(lab_4$study_hours)*.75
ThirdQuartileLocation

sort_lab_4 = sort(lab_4$study_hours)
sort_lab_4

q1 = sort_lab_4[FirstQuartileLocation]
q3 = sort_lab_4[ThirdQuartileLocation]
q1
q3

iqr = q3-q1
iqr

# q1 = 7.620702, q2 = 11.10112, q3 = 14.26341, iqr = 6.642712.

# Q3
M = mean(lab_4$study_hours)
M

deviation = lab_4$study_hours - M
deviation

square.deviation = deviation^2
square.deviation

n = length(lab_4$study_hours)
n

variance = sum(square.deviation)/(n-1)
variance

standard_deviation = sqrt(variance)
standard_deviation

var(lab_4$study_hours)
sd(lab_4$study_hours)
# Variance = 19.37989, Standard Deviation = 4.40226.

# Q4
q70location = length(lab_4$study_hours)*.70
q70 = sort_lab_4[q70location]
q70
# The 70th percentile is 13.35757.

# Q5
sort_lab_4[10]
sort_lab_4[sort_lab_4 < 5.496013]
mean(sort_lab_4 < 5.496013)
# The Percentile of the 10th subject is 12.

# Q6
z = (lab_4$study_hours[10] - M)/standard_deviation
z
# The z-score for the 10th data point = -0.4640802

# Q7
Raw_score = M + (1.5*standard_deviation)
Raw_score
# Raw score = 17.70451














