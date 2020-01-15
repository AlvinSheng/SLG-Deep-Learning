
Please answer questions for Chapters 1 and 2, labeled with your name.


**1. Do you buy into the hype of AI and machine learning?**
Deepak: Yes, I do. 

**2.The authors mention on page 5 that machine learning differs from statistics because it “tends to deal with large, complex datasets (such as a dataset of millions of images, each consisting of tens of thousands of pixels) for which classical statistical analysis such as Bayesian analysis would be impractical.  As a result, machine learning, and especially deep learning, exhibits comparatively little mathematical theory -- maybe too little -- and is engineering oriented.  It’s a hands-on discipline in which ideas are proven empirically more often than theoretically.”
What are your thoughts on this viewpoint?  What do you see as the similarities and differences between machine learning and statistics?**
Deepak:
My view, Machine learning is applications of calculus, algebra and statistics delivered together.
Statistics provides probabilities, calculus helps tunning models to make probabilities more accurate and linear algebra provides ability to perform large computations more efficently. 


**3. Deep learning requires a loss function.  How have you dealt with loss functions in your statistics life so far?  Why do we often use squared error loss?**

Deepak: 
1) Dealt with loss fuctions while using linear regression. Specially using mean squared error to comapre linear regression models built for prediction.
2) 
 a) Error loss could be postive or negative depending on predicated value by model is higher or lower than the actual value. By squaring error loss, we ensure it doesn't cancel each other out.
 b) Error observed comes from noice such as measurement error, environmental distribution etc. Which according to CLT is normally distributed. In order make such error distirubtion tight ( less spread), one need to reduce variance of error distribution. And Variance is calaculated as squared error w.r.t. mean, so we use squiared error loss.


**4. Why are classical machine learning algorithms such as SVMs, random forests, gradient boosting, etc., considered "shallow learning," whereas neural nets are considered “deep learning”? Can shallow methods be stacked to emulate neural networks?**
Deepak:
1) In Deep Learning all layres of the Model learn jointly, at the same time rather than in scuession. With such joint leanring, whenever model adjust its one of the feature, all other features depending on it adjust accordingly. All such features and layers adjustment happend based on the feedback singal which is generated to serve the end goad that model has.
2) Shallow learning models such as SVMs, random forest,  etc. tend to focus on learning from one of two layers of reprensentations. Where as deep learning model learns from 100s/1000s of layres of represenations. 
Shallow learning models also require greater length of users inputs to format input data to suit models. Where as deep learning can accept less formated data. 


**5. Why is stochastic gradient descent better than regular gradient descent for neural networks?**
Deepak:
To minimize the error, regular GD, goes through all the training samples to perform single update for a parameter in a given iteration. In Stochastics GD subset of training training samples are used to update the parameter in a given iteration.
In neural newtworks, very large training dataset is expected and stochastic GD provides better prefrormance than regular SD as it uses limited but radom samples.


**6. How does the concept of momentum apply to SGD?**
Deepak:
With small learning rate SGD would stuck at local minimum and would take long time to converge. With large learning rate SGD would increase the converge speed but intrdouces risk to go pass golobal minima.
In Momentum based SGD, each increment is based on current gradient value and also on the previous parameter update. This approach provides quicer convergence and avoid getting stuck at locak minima.


**7. What is a tensor, have you seen it before?  Did you understand the section on the dot-product?**
Deepak:
Tensor is container of data / data set. Have used arrays, vectors, matrices which are differnt dimention tensors. yes, understood matrix dot-product operations performed Numpy library. Will need more hands-on practice to get used to syntax.




**8. In the compilation step notice you need a loss function, an optimizer, and metrics to monitor during training/testing. In linear regression do we need these as well? If so what are they?**
Deepak:
In linear regression -
loss function = square of [(hypothesis prediction) - (actual value)] for all samples in data set, divided by number of samples.
Optimizer = Gradient Descent
metrics to monitor = 



