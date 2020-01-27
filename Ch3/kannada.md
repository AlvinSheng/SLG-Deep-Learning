# Kannada-MNIST Starter Code

This file contains what you need to get started with the [Kannada-MNIST kaggle competition](https://www.kaggle.com/c/Kannada-MNIST). The competition is a variant of the traditional MNIST dataset, where instead of trying to recognize Arabic numerals we focus on Kannada digits.

### First things first
First we need to make sure that we have the proper data for this task so click on the link above to download the datasets, and place them in a directory of your choosing. After you have done this we need to set our working directory to tell R where to look for our files. Next we need to make sure Keras and Tensorflow installed; you can do so by running the code below. 

```r
install.packages("keras")
library(keras)
install_keras()             #only run this if you haven't before
```
Now that you have all that taken care of we can begin with the our workflow. You'll learn more about what our book calls the "Universa Machine Learning Workflow" in Chapter 4, but I'll just list the key points here:         
> 1. Define the problem and assembling a dataset
> 2. Choosing a measure of success
> 3. Deciding on an evaluation protocol
> 4. Preparing your data
> 5. Developing a model that does better than baseline
> 6. Scaling Up: Developing a model that overfits
> 7. Regularizing your model and tuning your hyperparameters

```r
setwd("~/Directory/With/Datasets")
train <- read_csv("train.csv")
train_images <- train[,-1]
train_labels <- train[,1]
train_images <- as.matrix(train_images)
train_labels <- as.matrix(train_labels)

test <- read_csv("test.csv")
test_images <- test[,-1]
test_images <- as.matrix(test_images)

```

