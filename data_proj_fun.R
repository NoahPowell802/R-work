library(ROCR)
library(RCurl)
library(readr)
library(e1071)
library(lattice)
library(ggplot2)
library(caret)
iris <- read_csv("Downloads/iris.csv")
View(iris)

summary(iris)

# The summation command(sum) is.na to check for any missing data

sum(is.na(iris))

# Installing packages for improved summary function
install.packages("skimr")
library(skimr)

skim(iris)

# Now to group data into species and perform skim on them again
iris %>%
  dplyr::group_by(Species) %>%
  skim()

# Panel plot

plot(iris)
plot(iris, col = "purple")

# Scatter plot w/ color changes using col = __ and xlab and ylab which change the x and y labels
plot(iris$Sepal.Width, iris$Sepal.Length)
plot(iris$Sepal.Width, iris$Sepal.Length, col = "violet")
plot(iris$Sepal.Width, iris$Sepal.Length, col = "violet", 
     xlab = "Sepal Length", ylab = "Sepal Width")

# Histogram
hist(iris$Sepal.Width)
hist(iris$Sepal.Width, col = "navy")        # Making the bars navy blue

# 4 Feature plot we library (lattice, ggplot2, caret)

# The dataset had a small issue, species was not defined as it seemed so in order to redefine it I used these functions

str(iris)
iris$Species <- as.factor(iris$Species)

# The feature plot visualizes

featurePlot(x = iris[,1:4], 
            y = iris$Species,
            plot = "box")

featurePlot(x = iris[,1:4],
            y = iris$Species,
            plot = "box",
            strip=strip.custom(par.strip.text=list(cex=.7)),
            scales = list(x = list(relation="free"),
                          y = list(relation="free")))

################################################################################

# Now for building the classification model

# for achieving a replicable set the seed of the model

set.seed(100)

# Next to perform a stratified random split of the data set into 2 parts.
# The training set will be 80% of the data and the testing set will be 20%

TrainingIndex = createDataPartition(iris$Species, p=0.8, list = FALSE) # p=0.8 specifies 80% of the data
TrainingSet = iris[TrainingIndex,]          # This is the training set
TestingSet = iris[-TrainingIndex,]          # This is the testing set, "-" in front of training for whats left of the data set

plot(TrainingSet, col = "green")
plot(TestingSet, col = "pink")

################################################################################
# Using the SVM model (polynomial kernel) I can build the machine learning model

# Building the model (degree, frame and C would all need to be fine tuned based on the device, but this is just practice)
Model = train(Species ~ ., data = TrainingSet,
              method = "svmPoly",
              na.action = na.omit,
              preProcess=c("scale","center"),
              trControl = trainControl(method = "none"),
              tuneGrid = data.frame(degree=1,scale =1,C=1)
              )

# Now for the CV (cross validation) model
Model.cv = train(Species ~ ., data = TrainingSet,
              method = "svmPoly",
              na.action = na.omit,
              preProcess=c("scale","center"),
              trControl = trainControl(method = "cv", number = 10),
              tuneGrid = data.frame(degree=1,scale =1,C=1)
)

# Applying the model for predictions
Model.training = predict(Model, TrainingSet) # Apply the model to make a prediction on the training set
Model.testing = predict(Model, TestingSet) # Apply the model to make a prediction on the testing set
Model.cv = predict(Model.cv, TrainingSet) # Performs cross-verification

# Now time to display models performance
Model.training.confusion = confusionMatrix(Model.training, TrainingSet$Species)
Model.testing.confusion = confusionMatrix(Model.testing, TestingSet$Species)
Model.cv.confusion = confusionMatrix(Model.cv, TrainingSet$Species)

print(Model.training.confusion)
print(Model.testing.confusion)
print(Model.cv.confusion)

################################################################################


# Feature importance
# Add terms to the model
Importance = varImp(train(Species ~ ., data = 
                            TrainingSet, method = "rf")) # I'm using the `train()` function, 
                                                          # to train a random forest model, 
                                                        # and then extracting variable importance. "rf" is the random forest model which we use for determining the overall feature importance.
plot(Importance)
plot(Importance, col = "orange")

















