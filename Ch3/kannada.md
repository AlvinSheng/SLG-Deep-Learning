# Kannada-MNIST Starter Code

This file contains what you need to get started with the [Kannada-MNIST kaggle competition](https://www.kaggle.com/c/Kannada-MNIST). The competition is a variant of the traditional MNIST dataset, where instead of trying to recognize Arabic numerals we focus on Kannada digits.

### First things first
First we need to make sure that we have the proper data for this task so click on the link above to download the datasets, and place them in a directory of your choosing. After you have done this we need to set our working directory to tell R where to look for our files. Next we need to make sure [Keras](https://keras.rstudio.com/index.html) and [Tensorflow](https://www.tensorflow.org/) installed; you can do so by running the code below. 

```r
install.packages("keras")
library(keras)
install_keras()             #only run this if you haven't before
```
Now that you have all that taken care of we can begin with the our workflow. You'll learn more about what our book calls the "Universal Machine Learning Workflow" in Chapter 4, but I'll just list the key points here:         
> 1. Define the problem and assembling a dataset
> 2. Choosing a measure of success
> 3. Deciding on an evaluation protocol
> 4. Preparing your data
> 5. Developing a model that does better than baseline
> 6. Scaling Up: Developing a model that overfits
> 7. Regularizing your model and tuning your hyperparameters


### Let's Begin! - Preparing your data
We will begin by reading our data into R, and mutating it into the proper format for keras.

```r
setwd("~/Directory/With/Datasets")
train <- read_csv("train.csv")
test <- read_csv("test.csv")
```
      
Through kaggle we were given both a training dataset & a testing dataset. First we need to separate the training dataset into images and their corresponding labels.    

Note that we don't have the labels for the test images, but we do need to remove the rowid column.
```r
# Training Images
train_images <- train[,-1]
train_labels <- train[,1]

# Testing Images
test_images <- test[,-1]

```
I've noticed that keras does not like it when our input is stored in a dataframe object, so we will convert these into a matrix objects. We also will need to [one-hot](https://en.wikipedia.org/wiki/One-hot) encode our labels; this can be done with the to_categorical() keras function.
```r
train_images <- as.matrix(train_images)
train_labels <- as.matrix(train_labels)
train_labels <- to_categorical(train_labels)

test_images <- as.matrix(test_images)
```
In order to protect our model from convergence issues we are going to normalize them to have values in the range 0-1 rather than 0-255.

```r
train_images <- train_images / 255

test_images <- test_images / 255
```
### Defining your Network's Architecture 
From what we've seen so far we saw that a network consisting of a single dense layer, and a softmax output layer performed decently well on the MNIST dataset. We will try this same approach here.
```r
network <- keras_model_sequential() %>%
  layer_dense(units = 512, activation = 'relu', input_shape = c(28 * 28)) %>%
  layer_dense(units = 10, activation = 'softmax')

```

#### Compilation Step      
```r
network %>% compile(
  optimizer = 'rmsprop',
  loss = 'categorical_crossentropy',
  metrics = c('accuracy')
)
```

#### Fit the model
```r
history <- network %>% fit(
  train_images, train_labels, 
  epochs = 5, batch_size = 128,
  validation_split = 0.2)

plot(history)
```

This is the end of starter code walkthrough for a simple neural network applied to the Kannada-MNIST dataset. Experiment and try to improve upon these results throughout the semester as we dive further into the world of deep learning. To see how your model does on the testing data you can enter the kaggle competition!

\**Note:* This is a [kernels only](https://www.kaggle.com/c/Kannada-MNIST/overview/kernels-requirements) competition.    

 
If you would like to copy all the code at once I have included it here.

```r
## Read in data
setwd("~/Directory/With/Datasets")
train <- read_csv("train.csv")
test <- read_csv("test.csv")

# Training Images
train_images <- train[,-1]
train_labels <- train[,1]

# Testing Images
test_images <- test[,-1]

train_images <- as.matrix(train_images)
train_labels <- as.matrix(train_labels)
train_labels <- to_categorical(train_labels)

test_images <- as.matrix(test_images)

train_images <- train_images / 255

test_images <- test_images / 255

## Define Network Architecture
network <- keras_model_sequential() %>%
  layer_dense(units = 512, activation = 'relu', input_shape = c(28 * 28)) %>%
  layer_dense(units = 10, activation = 'softmax')
## Compile the model
network %>% compile(
  optimizer = 'rmsprop',
  loss = 'categorical_crossentropy',
  metrics = c('accuracy')
)


# Fit the model to the training data
history <- network %>% fit(
  train_images, train_labels, 
  epochs = 5, batch_size = 128,
  validation_split = 0.2)

plot(history)
```

Acknowledgements    
This walkthrough is based largely off *Deep Learning with R, by Chollet and Allaire*

Also thank you to [Alvin Sheng](https://github.com/AlvinSheng) and [Michael Burton](https://michaeleburton.github.io/) for taking the time to piece this and the corresponding Rscript together.
