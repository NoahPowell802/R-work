# Functions in R

# sum Sums up all data

sum(1,2,3,4)

x=8
y=3

sum(1,2,3,x,y)

# BODMAS Rule(ORDER OF EXECUTION) --> 1. Brackets 2.OF(functions) 3.DIVISION/MULTIPLICATION 4. ADDITION 5. SUBTRACTION

# Vectors
# c -> concate (combine) I am noah, im from vermont, a student, and a dog dad. they are all relevant things about me.
x = c(1,2,3,4,5,6)
x

y = c(9,8,7,6,x)
y


points = c(1,2,3,4,7,3,2,5,8,9,6,4,3)

sort(points)

# Arthinmetic operations on vectors
points
points + 1
points * 10

points_1 = c(1,2,3,4,7,3,2,5,8,9,6,4,3)
points_2 = c(5,3,5,7,8,9,3,2,1,3,4,5,6)

points_1 + points_2

sum(points_1) + sum(points_2)


length(points_1)

# The : operator

p = c(1:100)
p

z = c(0.5:9)
z

# Truth Values

1 < 3

3 < 1

exam1 = c(59, 89, 88, 76, 44, 23)
exam2 = c(22, 91, 88, 34, 99, 51)

exam_cutoff = 40

exam1 > exam_cutoff

exam1 > exam2

# Strings

name = "Noah"
names = c("will", "jake", "calvin", "john")
print(names)
sex = c("M", "F", "M", "F")
sex == "M"
names[sex == "M"]
