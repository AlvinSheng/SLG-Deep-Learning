Please answer questions for Chapter 3 next to your name.

![e^{i \pi} = -1](https://render.githubusercontent.com/render/math?math=e%5E%7Bi%20%5Cpi%7D%20%3D%20-1)

**1. On page 61 the authors discuss two options for preparing the data for use.  
Which method do you think makes more sense intuitively?  Do you see any possible pros or cons to one choice or the other?**

**Alvin**: Padding seems more intuitive to me. One-hot encoding seems like it would lead to humongous sparse tensors. Even then, there may be some missing categories, especially with new data.

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**:

**Matthew**:

**Megan**:

**Michael**:

**Peter**:

**Rebekah**:

**Saran**:

**Yan**;


**2. If you’ve set up your machine and are fitting these models, what happens to your test error when you use a model
fit with more epochs for the binary classification? Does it follow the trend of the validation error?**

**Alvin**: For the IMDB binary classification, using more than 4 epochs would likely lead to overfitting. Using 4 epochs as opposed to 20 led to an improvement in accuracy of ~2%, as forecasted by the trend of the validation error. 
Same with the classifying newswires example. However, reducing the number of epochs from 20 to 9 only led to an ~.5 % increase in accuracy.

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**:

**Matthew**:

**Megan**:

**Michael**:

**Peter**:

**Rebekah**:

**Saran**:

**Yan**;


**3. What is the importance of properly choosing a loss function? 
Can you think of any consequences or examples of side effects of choosing a sub-optimal one?**

**Alvin**: Choosing the right loss function is important, as it defines the purpose of the model. Choosing the wrong one would make the model work really hard on figuring out the wrong things. One area in which choosing a loss function is important is unbalanced data sets, where one label dominates the others. Using the typical 0-1 loss would likely make the model choose that dominant label most of the time. To make the model able to predict the other labels, you may need to do things like weight balancing to prioritize the minority labels. 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**:

**Matthew**:

**Megan**:

**Michael**:

**Peter**:

**Rebekah**:

**Saran**:

**Yan**;


**4. Why might we want to scale the data? Why might it be important to use the mean and standard deviation
of the training set to scale both the training and the test set (rather than scaling training with 
training statistics and test with test statistics)?**

**Alvin**: Ensuring that all the features are on the same scale would help a lot with gradient descent algorithms. Standardizing ensures that no variable will be overlooked when trying to minimize the gradient. Also, it helps with algorithms that rely on norms, like lasso/ridge which use the l1/l2 norm, which are affected by the scales of the features. One should never use the test set for anything other than determining final accuracy. Using the test set more than once would give the model an unintentional advantage, skewing the estimate of the true accuracy.

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**:

**Matthew**:

**Megan**:

**Michael**:

**Peter**:

**Rebekah**:

**Saran**:

**Yan**;
