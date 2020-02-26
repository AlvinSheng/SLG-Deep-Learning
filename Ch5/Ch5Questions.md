Please answer questions for Chapter 5 next to your name.

**1. The book says it may be possible to use a convolutional neural network on a “small” dataset provided the problem is simple enough. Why is this, could we build a densely connected network too?**
  
**Alvin**: 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: 

**Matthew**:

**Michael**: It's possible, since the convolution operation allows the network to learn local features that can be recognized globally because of convolutions equivariance property. CNN's use parameter sharing so for every location we only have one set of parameters to use. In a densely connected network I don't believe you'd be able to use a smal dataset since you will need to estimate a parameter for each location in the image.

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

**Jimmy**: 

**Matthew**:

**Michael**: They define regularization as made to a learning algorithm that is intended to reduce its testing (generalization) error, but not its training error. From this definition I would agree that dataset augmentation is listed as a regularization technique; since you are translating, rotating, stretching, and shrinking images your network will deal perturbations like these when working with test data.

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

**Jimmy**: 

**Matthew**:

**Michael**: The advantage of using a pretrained network is that you don't have to use as much computational power to complete your task. This assumes the network that your pretrained network is similar to what you are working on. In the book they used a pretrained network from ImageNet to be used for binary classification of cats and dogs. They were able to use this network since ImageNet had many cat and dog classes. One disadvantage is you may not fully understand why the original creator made some model selection choices.

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

**Jimmy**: 

**Matthew**:

**Michael**: I think by using more convolutional layers the network will be able to better extract different layers of representations. By having pooling layers between every two convolutional layers the number of total parameters in the network will be larger; this is more computationally expensive.

**Peter**:

**Saran**:

**Yan**:
