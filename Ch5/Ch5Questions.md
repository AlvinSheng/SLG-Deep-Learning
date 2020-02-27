Please answer questions for Chapter 5 next to your name.

**1. The book says it may be possible to use a convolutional neural network on a “small” dataset provided the problem is simple enough. Why is this, could we build a densely connected network too?**
  
**Alvin**: If the dataset is simple enough, the neural network will not need to learn as many features. However, CNNs will probably still outperform densely connected networks, as it can incorporate spatial relationships among pixels.

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:
Convnet learns patterns/concepts, irrespective of it’s location in the image. This allows use data augmentation technique to generate more images from existing image set.
With Convnet you may also use existing pre-trained convnets on some other set of images, this allows training using only higher convnet layers to identify sample dataset related higher features and classifier layers.
This is not possible with Densely connected networks as locality is hard to learn using densely connected network as well as reuse of existing network is not feasible with densely connected network as it’s weights learned are very specific the classes it was trained for


**Jimmy**: This goes back to the difference between how convnets and densely connected networks learn patterns. Convnets learn small pattern that can be applied to any part of an image whereas dense networks learn very specific patterns localized to certain spatial areas. Like the book said, if a dense network recognizes a pattern in the top left corner of an image, it will not recognize that same pattern in the bottom right corner (unless it learns it independently). This means that dense networks would need more data to learn all the same patterns as a convnet.

**Matthew**:

**Michael**: It's possible, since the convolution operation allows the network to learn local features that can be recognized globally because of convolutions equivariance property. CNN's use parameter sharing so for every location we only have one set of parameters to use. In a densely connected network I don't believe you'd be able to use a smal dataset since you will need to estimate a parameter for each location in the image.

**Peter**: The translation invariant property surely helps here.  In any dataset, variation in the location of the signals exists.  For larger datasets, the greater signal might power through, but maybe not with smaller.  Tranlational invariance helps make the model robust to this variance which is obviously appealing with smaller datasets -- and larger as well. 

**Saran**:

**Yan**:
  
**2. In chapter 7 of Deep Learning by Goodfellow data augmentation is listed as a regularization technique. Do you agree with this, why?**
  
**Alvin**: Yes, because it combats overfitting. Data augmentation seems akin to bagging, or bootstrap aggregation: both methods make new data sets from the original one, fit the model on all of them, and aggregate results to decrease variance.

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:
Generating more test samples using data augmentation helps regularize model as it’s trained on larger data set. However if augmentation generates large number of samples compared to the original ones then it may lead to overfitting. I expect certain ratio of number of samples between original data set to augmented data set be necessary to avoid overfitting.

**Jimmy**: 
The purpose of other regularization techniques such as LASSO and ridge, a penalty is added to reduce covariates. While data augmentation is not changing the loss function, it does add additional samples to help generalize the model. Both methods are used to acheive the same goal of minimizing overfitting.

**Matthew**:

**Michael**: They define regularization as made to a learning algorithm that is intended to reduce its testing (generalization) error, but not its training error. From this definition I would agree that dataset augmentation is listed as a regularization technique; since you are translating, rotating, stretching, and shrinking images your network will deal perturbations like these when working with test data.

**Peter**:

**Saran**:

**Yan**:

**3. What are some advantages of using a pretrained network? Do you see any disadvantages?**

**Alvin**: Using a pretrained network would allow you to use features learned on much larger data sets, like ImageNet, for a smaller dataset. However, if the pretrained network was trained on a vastly different task, then the features learned on that task may be useless or even detrimental for the current task. 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:
Advantages:
Provides best result with limited test samples are available.
Reduced time for training models as not all layers needs to be trained.

Disadvantages:
Fine tuning could be a challenging process


**Jimmy**: 
Advantages:
Effectively increase sample size.
Quick to use and evaluate (can check if it is actually useful).


Disadvantages:
Don't know at first whether it will be useful.
Lose control over your full model/ all hyperparameters.

**Matthew**:

**Michael**: The advantage of using a pretrained network is that you don't have to use as much computational power to complete your task. This assumes the network that your pretrained network is similar to what you are working on. In the book they used a pretrained network from ImageNet to be used for binary classification of cats and dogs. They were able to use this network since ImageNet had many cat and dog classes. One disadvantage is you may not fully understand why the original creator made some model selection choices.

**Peter**:

**Saran**:

**Yan**:


**4. The model created in the first half of the chapter had a pooling step after every convolutional layer whereas the pretrained model has a pooling step after every two convolutional layers. What may be the pros and cons of having more convolutional steps before pooling?**

**Alvin**: More convolutional steps before pooling would require more parameters to be trained. Pooling more frequently would cut down the number of parameters that have to be trained. However, if the images are more complex, perhaps more convolutional layers would be needed to filter the important details at every step. 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:
Pros:
More convolution layers before pooling allows, using more data for generating higher level filters by convolution layers, as with pooling some data is lost and so less original data available for next set of Convnet to process.
Cons:
Having more Convolution layers before pooling layers increase number of parameters and activations processing. Which leads to increase in training time for the model.


**Jimmy**: 
Advantages:
Pooling less gives more use of the full data set before culling it down. This could lead to learning new patterns that would be lost when pairing down the data.

Disadvantages:
Pooling shrinks the amount of nodes in a layer. So the less pooling you do, the more nodes that you have to train, which can take a very long time depending on your problem size.


**Matthew**:

**Michael**: I think by using more convolutional layers the network will be able to better extract different layers of representations. By having pooling layers between every two convolutional layers the number of total parameters in the network will be larger; this is more computationally expensive.

**Peter**:

**Saran**:

**Yan**:
