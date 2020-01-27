## Title: Kannada Starter Code
##
## Author(s): Michael Burton
##            Alvin Sheng
##
## Purpose: This file is intended to help someone get started
##          with the Kannada MNIST Kaggle Competition
##          (https://www.kaggle.com/c/Kannada-MNIST). For a
##          more thorough walkthrough please see the corresponding 
##          mark down file.
##
## Date Edited: 1/27/2020

library(readr)
library(keras)

# Read in data
train <- read_csv("train.csv")
train_images <- train[,-1]
train_labels <- train[,1]
train_images <- as.matrix(train_images)
train_labels <- as.matrix(train_labels)

test <- read_csv("test.csv")
test_images <- test[,-1]
test_images <- as.matrix(test_images)


# Define Network Architecture

network <- keras_model_sequential() %>%
  layer_dense(units = 512, activation = 'relu', input_shape = c(28 * 28)) %>%
  layer_dense(units = 10, activation = 'softmax')

# Compile the model

network %>% compile(
  optimizer = 'rmsprop',
  loss = 'categorical_crossentropy',
  metrics = c('accuracy')
)

# Preprocess Data

train_images <- train_images / 255


test_images <- test_images / 255

# Prepare the labels

train_labels <- to_categorical(train_labels)


# Fit the model to the training data

network %>% fit(train_images, train_labels, epochs = 5, batch_size = 128)


