
library(readr)

train <- read_csv("Kannada-MNIST/train.csv")

test <- read_csv("Kannada-MNIST/test.csv")



train_images <- train[,-1]
train_labels <- train$label

# test_images <- test[,2:dim(test)[2]]
# test_labels <- test[,1]



network <- keras_model_sequential() %>%
  layer_dense(units = 512, activation = "relu", input_shape = c(28 * 28)) %>%
  layer_dense(units = 10, activation = "softmax")



network %>% compile(
  optimizer = "rmsprop",
  loss = "categorical_crossentropy",
  metrics = c("accuracy")
)



train_images <- train_images / 255

test_images <- test_images / 255



train_labels <- to_categorical(train_labels, 10)



network %>% fit(train_images, train_labels, epochs = 5, batch_size = 128)


# install_tensorflow(version = "1.12")
# does this solve the issue?

