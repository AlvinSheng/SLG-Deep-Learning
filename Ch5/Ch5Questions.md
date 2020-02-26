Please answer questions for Chapter 5 next to your name.

**1. The book says it may be possible to use a convolutional neural network on a “small” dataset provided the problem is simple enough. Why is this, could we build a densely connected network too?**
  
**Alvin**: 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:
Convnet learns patterns/concepts, irrespective of it’s location in the image. This allows use data augmentation technique to generate more images from existing image set.
With Convnet you may also use existing pre-trained convnets on some other set of images, this allows training using only higher convnet layers to identify sample dataset related higher features and classifier layers.
This is not possible with Densely connected networks as locality is hard to learn using densely connected network as well as reuse of existing network is not feasible with densely connected network as it’s weights learned are very specific the classes it was trained for


**Jimmy**: 

**Matthew**:

**Michael**: 

**Peter**:

**Saran**:

**Yan**:
  
  
**2. In chapter 7 of Deep Learning by Goodfellow data augmentation is listed as a regularization technique. Do you agree with this, why?**
  
**Alvin**: 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:
Generating more test samples using data augmentation helps regularize model as it’s trained on larger data set. However if augmentation generates large number of samples compared to the original ones then it may lead to overfitting. I expect certain ratio of number of samples between original data set to augmented data set be necessary to avoid overfitting.

**Jimmy**: 

**Matthew**:

**Michael**: 

**Peter**:

**Saran**:

**Yan**:

**3. What are some advantages of using a pretrained network? Do you see any disadvantages?**

**Alvin**: 

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

**Matthew**:

**Michael**: 

**Peter**:

**Saran**:

**Yan**:


**4. The model created in the first half of the chapter had a pooling step after every convolutional layer whereas the pretrained model has a pooling step after every two convolutional layers. What may be the pros and cons of having more convolutional steps before pooling?**

**Alvin**: 

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

**Matthew**:

**Michael**: 

**Peter**:

**Saran**:

**Yan**:
