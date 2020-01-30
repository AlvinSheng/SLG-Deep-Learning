Please answer questions for Chapter 3 next to your name.

**1. On page 61 the authors discuss two options for preparing the data for use.  
Which method do you think makes more sense intuitively?  Do you see any possible pros or cons to one choice or the other?**

**Alvin**: Padding seems more intuitive to me. One-hot encoding seems like it would lead to humongous sparse tensors. Even then, there may be some missing categories, especially with new data.

**Antonio**: Padding seems like the more flexible approach, in the event the hypothesis space needs to change.

**Cameron**:

**Dale**:

**David**: Intuitively speaking, padding makes more sense to me. However, this still has to be passed through an embedding layer. I also think that if dealing with large data, one-hot encoding will lead to very sparse data and potential computational inefficiencies could arise.

**Deepak**:
Padding make more sense intuitively.  With One-hot encoding, frequency of occurrence a word in a given sentence/sequence is lost, which may be important factor in some usecases. With Padding, longest statement will determine length of the sequence tenser, which could be costly for processing. Padding however will preserve relative relative words placement information for model to use. Also needs to take into consideration on how well Dense and Embedded layer can consume on-hot encoded and padded tensors.

**Jimmy**: Padding seems more intuitive to me. Unless I am misunderstanding, it seems like one-hot encoding only tracks if a word is used, losing all information about the ordering of the words. The reviews "This movie was funny and not bad." and "This movie was bad and not funny" would have the same representation. Also repeated words are accounted for.

**Justin**:

**Matthew**:

**Megan**:

**Michael**: One-hot encoding seems more inuitive to me since you would be storing the data in columns that are the same from observation to observation. The other method makes it possible to have columns contain different words.   

**Peter**:

**Rebekah**:

**Saran**:

**Yan**;


**2. If you’ve set up your machine and are fitting these models, what happens to your test error when you use a model
fit with more epochs for the binary classification? Does it follow the trend of the validation error?**

**Alvin**: For the IMDB binary classification, using more than 4 epochs would likely lead to overfitting. Using 4 epochs as opposed to 20 led to an improvement in accuracy of ~2%, as forecasted by the trend of the validation error. 
Same with the classifying newswires example. However, reducing the number of epochs from 20 to 9 only led to an ~.5 % increase in accuracy.

**Antonio**: Still need to setup a workstation (download Unix & install packages..possibly add a GPU)

**Cameron**:

**Dale**:

**David**:



**Deepak**:
With More epochs training accuracy increases / training loss decreases as effect of gradient descent, however this indicates model being tuned for specific training set. With validation set with more epochs after certain point accuracy starts decreasing and loss increases. 

**Jimmy**: I tried only varying the epoch while using the same network architecture that was provided in the book. Epochs: test set accuracy; 4: 0.84092, 20: 0.8424, 50: 0.84356.

**Justin**:

**Matthew**:

**Megan**:

**Michael**: The test error seems to follow the same trend as the validation error. As the number of epochs used to fit the data increases the testing error starts to decrease, which is an indication that we have overfit our data.

**Peter**:

**Rebekah**:

**Saran**:

**Yan**;


**3. What is the importance of properly choosing a loss function? 
Can you think of any consequences or examples of side effects of choosing a sub-optimal one?**

**Alvin**: Choosing the right loss function is important, as it defines the purpose of the model. Choosing the wrong one would make the model work really hard on figuring out the wrong things. One area in which choosing a loss function is important is unbalanced data sets, where one label dominates the others. Using the typical 0-1 loss would likely make the model choose that dominant label most of the time. To make the model able to predict the other labels, you may need to do things like weight balancing to prioritize the minority labels. 

**Antonio**: The loss function is the means for measuring the effectiveness of the parameters within the layers of our network. The better the measure, the more effective other features such as the optimizer will be.

**Cameron**:

**Dale**:

**David**: Choosing the loss function properly is key. Choosing a loss function which isn't proper for the data can result in models that aren't useful. Failing to ensure that a good loss function is chosen will result in wasted time for results that are likely useless to the analysis we are hoping to conduct.

**Deepak**:
It’s important that loss function you chose is aligned with the success of task at hand. Choosing sub-optimal one may results undesired outcomes as model will take any shortcut to achieve outcomes at hand. E.g. auto driving car taking decision to kill x number of pedestrians to avoid save driver.

**Jimmy**: Understanding your choice of loss function is critical to the performance of your neural network. It will train itself with the express purpose of optimizing the loss function. If you choose correctly, your network will improve its performance on metrics that you care about. If you choose an inappropriate loss function, the model will still work, but the results will not be helpful in achieving your goal.

**Justin**:

**Matthew**:

**Megan**:

**Michael**: A loss function tells your model how closely it fits your data. Imagine you're in the woods and you are lost, but you have a special gps that must be tuned to give accurate results. If we don't tune this gps properly then we end up going the wrong way and end up farther from our desired destination. So, imagine that tuning the gps is like selecting the right loss function; if we choose the wrong one we may end up with less than optimal results.

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

Scaling the data using training set statistics is useful because it allows everything to be on the same scale. This will be helpful for ensuring the efficiency of the gradient descent algorithm. If we fail to scale properly we run the risk of making our gradient descent algorithm have to update many variables that are not on the same scale, which slows down the model fitting process. Since the model we will be fitting the test data on is trained  on the training data, it is important that everything has the same scale.

**Deepak**:
Sending widely different range of data will increase difficulties for model learning. Features wise normalization will help solve this problem, as it will be maintain the relative spread between features values while scaling. It’s important to use training set mean and SD while normalizing Validation data as well, else scaling for same values of a feature may result in different outputs

**Jimmy**: A data set can contain many features measuring completely different covariates of interest. We have to be careful when using this information because each feature comes with its own units and range of likely values. In order to put the covariates on the same level, we need to scale them. Otherwise one variable may dominate the others not because it is more important/useful but because its units were larger. You may only use training data to build your model. We are setting aside the test set as new data to examine performance. We cannot use any of its structure to help predict. 

**Justin**:

**Matthew**:

**Megan**:

**Michael**: Scaling is important because it allows all variables to be on the same scale, otherwise if you try to update your gradient with variables on vastly different scales this could slow down the fitting of your model. It's important to use the training mean and standard deviation on your test set because the model was trained on data that relied on these values. I think that you wouldn't want to scale the testing and traing sets together because this could lead to some information leak, which can invalidate your testing error estimate.

**Peter**:

**Rebekah**:

**Saran**:

**Yan**;
