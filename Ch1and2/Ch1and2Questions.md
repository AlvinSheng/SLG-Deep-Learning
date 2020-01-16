
Please answer questions for Chapters 1 and 2, labeled with your name.


**1. Do you buy into the hype of AI and machine learning?**

**David**: To an extent, although I wouldn't phrase it that way. What can be achieved is impressive, but some of the hype behind AI/ML/DL in popular media is overstating or misrepresenting the capablities of what can be done. Used properly, the tools being developed in the field will greatly impact many different fields, but it is important that those using those tools are properly trained and understand what can and cannot be done using these tools.

**Alvin**: Yes, to an extent. There's many impressive things deep learning has achieved, like New Yorker-quality text generation. However, we're still very far from Ray Kurzweil's prediction of the Singularity coming about in 2045, where machine intelligence will be infinitely more powerful than all human intelligence combined.

**Michael**: Yes, I do buy into the hype of AI and machine learning because they have led to many technological advancements in image recognition, speech recognition, and predictive capability. Although I buy into the hype I also recognize that these tools have limitations and I shouldn't have lofty expectations. We are still a ways away from computers that can think on their own.


**Dale**: Yes. But I also notice that deep learning technique is not yet fully explainable and transparent. Decision tree can be regarded as a transparent machine learning classifier as its decision boundary can be revealed to the users. For many other machine learning models, however, the model can contain too many parameters so that the decision boundary cannot be obtained directly. Without knowing the true decision boundary, human users may not "trust" the AI or machine learning models. Note that visualization can improve the trust to some extent,say, the heat map in neural network. On the other hand, deep learning models may not be robust. Pixel attacks may alter the result of a classifier. That indicates that AI models in modern days may not achieve the human level (even in computer vision tasks). 


**Deepak**: Yes, I do. With advances in large data set availability, reduced data storage, computing cost AI is proving to be much more economical than before. AI has huge potential to reduce Operational and Capital costs for various business operations.

**Jimmy**: I am a pretty firm believer into the hype of AI and machine learning. Seeing such a wide breadth of problems tackled by these methods has been very impressive and inspiring. Though I understand it has drawbacks. I do not believe some of the apocalyptic premonitions that many media outlets and movies share; but who knows? Did you hear that [Google assistant that sounded like a human?](https://www.youtube.com/watch?v=JvbHu_bVa_g)


**2.The authors mention on page 5 that machine learning differs from statistics because it “tends to deal with large, complex datasets (such as a dataset of millions of images, each consisting of tens of thousands of pixels) for which classical statistical analysis such as Bayesian analysis would be impractical.  As a result, machine learning, and especially deep learning, exhibits comparatively little mathematical theory -- maybe too little -- and is engineering oriented.  It’s a hands-on discipline in which ideas are proven empirically more often than theoretically.”
What are your thoughts on this viewpoint?  What do you see as the similarities and differences between machine learning and statistics?**      

**Alvin**: When he was talking about a weird method for tracking proximity between words, Lawrence Carin called it "embarrassing" and said "if you don't like it, you'll learn to like it, because it works." However, he also said that it was possible to interpret deep neural networks. I think it's important to try to interpret them, to see if they align with human intuition and aren't relying on spurious associations. We shouldn't put all our faith on a black box just because it seems to work.

**Michael**: I agree with the author's viewpoint to an extent. I believe statistics is very useful when we don't have access to an entire population's information and need to draw inference on samples. With statistics we are able to quantify uncertainty and make inference using mathematically sound theory. In contrast, with machine learning using very large datasets we don't really need to approximate the population as much, and I am not sure that the results allow for inference to be drawn. If you look at the theory behind machine learning it does draw on some of the same concepts that statistics draws on, but it seems that you don't need to pay much attention to this when practicing ML.

**David**: Because we are dealing with large populations here, there may be less of an inclination to worry about certain theory regarding approximations of the entire population. It also is difficult in some cases to draw inference, as ML frameworks can be fairly complex and do not lend themselves to easy interpretation. While ML theory does pull from statistical concepts, it has somewhat diverged into an engineering-oriented field. As a statistician, I think that there should be a stronger push for rigor behind ML methods in an effort to unify them more closely with statistical theory.


**Dale**: I agree with this viewpoint as it explains the current situations. That is, some machine learning models (like deep neural network) are used without fully understand the mathematics behind. Parameter tuning becomes rather an "engineering" task without enough guidelines from mathematics. We however, do know that many machine learning techniques can be studied by statistics. Dense feed-forward neural network, for example, can be viewed as multiple linear regression. Although many other machine learning algorithms have its computer science background, say, convolutional layers from computer vision and signal processing, it doesn't necessarily mean that we should treat statistics and machine learning as two different disciplines, as prediction based on data is always a essential task in statistics. 

**Deepak**: My view, Machine learning is applications of calculus, algebra and statistics delivered together. Statistics provides probabilities, calculus helps tuning models to make probabilities more accurate and linear algebra provides ability to perform large computations more efficiently.

**Jimmy**: I think that ML is very effective at what it is doing, but definitely lacking in some areas where classical statistics shines. I think that a lot of machine learning would benefit from more mathematical rigor, but more importantly (to me at least) is interpretability. I think that trying to mix the prediction effectiveness that black box models give with the interpretability of something like a linear model or even a small decision tree is very important (see the talk that Dr. Cynthia Rudin gave last semester).




**3. Deep learning requires a loss function.  How have you dealt with loss functions in your statistics life so far?  Why do we often use squared error loss?**

**David**: Statisticians use loss functions frequently. One of the more obvious examples used is the sum of squared errors. One of the reasons why squared error loss is preferable is that  is readily interpretable, by default it is measuring a euclidean distance between the values we fit with a model and the true values.. 

**Alvin**: I've used loss functions to compare different estimators. The squared error loss has nice theoretical properties, as it decomposes into a variance and squared bias term.

**Michael**: Yes, in every regression that we perform we use a loss function whether we realize it or not. Regression seeks to find the line of best fit by minimizing the residual sum of square (squared error loss). We often use squared error loss because it is easy to understand; i.e. we want to minimize the (euclidean) distance between our predictions and the true values for our observations.

**Dale**: Yes, the squared error in linear regression can be viewed as a loss function, although we don't actually need to obtain the parameters of a simple linear regresssion through optimization when we have the closed form answer. In LASSO or ridge regression, the loss functions are further added with penalty term, and these are the cases we may actually need optimizers. Note that squared error loss in linear regression is convex and differentiable. That brings many nice properties such as local minimum indicating global minimum. 

**Deepak**:
1.	Dealt with loss functions while using linear regression. Specially using mean squared error to compare linear regression models built for prediction.
2.	
  a) Error loss could be postive or negative depending on predicated value by model is higher or lower than the actual value. By squaring error loss, we ensure it doesn't cancel each other out. 
  b) Error observed comes from noice such as measurement error, environmental distribution etc. Which according to CLT is normally distributed. In order make such error distirubtion tight ( less spread), one need to reduce variance of error distribution. And Variance is calaculated as squared error w.r.t. mean, so we use squiared error loss.



**Jimmy**: I have used loss functions the most in regression with the sum of squared errors. It is easily intepretable with pictures.


**4. Why are classical machine learning algorithms such as SVMs, random forests, gradient boosting, etc., considered "shallow learning," whereas neural nets are considered “deep learning”? Can shallow methods be stacked to emulate neural networks?**


**David**: Neural nets have multiple layers of representations of the data rather than just one, allowing for more "depth", so to speak. The key benefit of neural networks is that the layers are optimized jointly. I don't believe this would be the case with shallow methods, as to my understanding stacking these methods wouldn't innately have a feature where they are optimized jointly.

**Alvin**: Neural nets use successive layers of representations, or data transformations, before the actual classification or regression. By contrast, classical machine learning uses only one or two layers of representations. What’s more, those representations often have to be feature engineered manually. Shallow methods shouldn’t be stacked, as they’re too “greedy”. The key feature of neural networks is that all layers are optimized jointly, rather than layer by layer.


**Michael**: Traditional machine learning algorithms only rely on one layer of data representation that is often derived through feature engineering. In contrast neural networks are considered to be 'deep learners' because they use multiple layers of representation that are learned from the data. Although I am not familiar with the particulars of it, I believe there is a whole ML framework called stacking where you build many 'simple' models and stack them together into one model. So yes I think they can be stacked to emulate neural networks.


**Dale**: In "shallow learning", the result obainted by a group of classifiers are not feeded to another group but directly produced as an output. In "deep learning", there will be multiple layers of classifiers which increase the complexity of the model. Some shallow methods could be stacked. Note that a softmax regression model could be stacked into a deep neural network (during this process, we may need to change the filters into ReLU).


**Deepak**:
1.	In Deep Learning all layers of the Model learn jointly, at the same time rather than in succession. With such joint learning, whenever model adjust its one of the feature, all other features depending on it adjust accordingly. All such features and layers adjustment happened based on the feedback signal which is generated to serve the end goad that model has.
2.	Shallow learning models such as SVMs, random forest, etc. tend to focus on learning from one of two layers of representations. Where as deep learning model learns from 100s/1000s of layers of representations. Shallow learning models also require greater length of users inputs to format input data to suit models. Where as deep learning can accept less formatted data.



**Jimmy**: The individual layers of a neural network are each performing simple operations/transformations, perhaps even simpler than what a single shallow model would do. The difference is that the neural network is optimizing its performance of all of these transformations together whereas each shallow model is greedily trying to perform best for itself. A neural network. I see the disparity as if a neural network is a bunch of simple models working together to perform the best while stacking is like each model trying to do the best on its own and then averaging their predictions.




**5. Why is stochastic gradient descent better than regular gradient descent for neural networks?**

**David**: Stochastic gradient descent is preferable for neural networks because by randomly choosing subsets of the data to perform gradient descent on, we avoid the compuational cost of using all the data at once.

**Alvin**: minibatch-SGD is gradient descent on randomly chosen small subsets of the training data. This is more efficient than using all the data at once.

**Michael**: In regular gradient descent we would need to calculate the gradient at every data point which can be computationally intensive as our dataset size grows. To circumvent this we randomly choose one data point to approximate the gradient and move 1 step size down the gradient. This will allow for faster convergence, and in practice the book says we use a batch of training points.


**Dale**: Regular gradient descent which computes the gradient from the whole data can be way too expensive in a single iteration when the volumn of the raw data is large. On the contrary, when we use a small batch of data and calculates the gradient, each iteration will take much less time and computational cost.


**Deepak**:
To minimize the error, regular GD, goes through all the training samples to perform single update for a parameter in a given iteration. In Stochastics GD subset of training samples are used to update the parameter in a given iteration. In neural networks, very large training dataset is expected and stochastic GD provides better performance than regular SD as it uses limited but random samples.



**Jimmy**: There are large computational impacts to making the change to stochastic gradient descent. Using a subset of the data to feed into a gradient descent rather than the whole data set saves lots of time, especially considering the big data problems that we are often trying to solve with neural networks. 



**6. How does the concept of momentum apply to SGD?**

**David**: Momentum applies in the sense that we don't consider only the current gradient or velocity, but past acceleration as well. This is more informative and enables the gradient descent algorithm to continue looking for the global minimimum when it might otherwise stop at a local minimum.

**Alvin**: The gradient can be considered as a slope that can accelerate the ball more the steeper it is. Momentum is a way to account for velocity accrued via past acceleration in addition to the current gradient. Thus, if the optimizer, or ball, arrives at a local minimum, the momentum may be sufficient for the optimizer to escape the local minimum.

**Michael**: Momentum allows us to not only use the current gradient but using past 'acceleration' to calculate the velocity. This is important because if the velocity is not very fast then it will allow SGD to not get stuck in a non-optimal local minimum.

**Dale**: Original gradient descent only uses information from the current iteration, while momentum uses information from past iterations. Momentum can help the optimizer converge in a fast manner and escape from the local minimum to a global minimum. 

**Deepak**:
With small learning rate SGD would stuck at local minimum and would take long time to converge. With large learning rate SGD would increase the converge speed but introduces risk to go pass global minima. In Momentum based SGD, each increment is based on current gradient value and also on the previous parameter update. This approach provides quicker convergence and avoid getting stuck at local minima.


**Jimmy**: Momentum takes into account the past gradient calculations and uses them in calculating the current change. Without this, it is likely that we would get stuck at whichever minimum value we find first. This could be a local minimum. Momentum gives us a chance to get out of the "well" from the local minimum and continu trying to find a global minimum.



**7. What is a tensor, have you seen it before?  Did you understand the section on the dot-product?**

**David**: I've experienced several different kinds of tensors before. 0D-2D are just the building blocks of data storage; scalars, vectors, and matrices. 3D tensors are a fairly new concept although I have heard of them before. The dot-product section is understandable, if a tad difficult to grasp at first.

**Alvin**: tensors are generalizations of vectors and matrices to an arbitrary number of dimensions. 

**Michael**: A tensor is a generalization of vectors and matrices to more than 2 dimensions. I found the section on the tensor dot-product to be kind of confusing since it is not presented in the typical matrix algebra notation, but after just thinking about matrix multiplication what they presented makes sense.

**Dale**: A tensor is essentially an array with multiple dimentions. Vectors and matrices are all instances of tensor. The dot-product is generalization of matrix product. That is, for the dot product of (a,b,c,d) and (d,e) tensors, the result is a (a,b,c,e) tensor, with each term (i,j,k,m) being the inner product of the two vectors (i,j,k,:) and (:,m). 

**Deepak**:
Tensor is container of data / data set. Have used arrays, vectors, matrices which are tensors with different dimensions. yes, understood matrix dot-product operations performed Numpy library. Will need more hands-on practice to get used to syntax.

**Jimmy**: A tensor can be thought of as a matrix with an arbitrary amount of dimensions. E.x. A scalar has 0 dimensions, a vector has 1, and a matrix has 2. I very briefly encountered the [Electromagnetic Tensor](https://en.wikipedia.org/wiki/Electromagnetic_tensor) in an electromagnetic theory class.




**8. In the compilation step notice you need a loss function, an optimizer, and metrics to monitor during training/testing. In linear regression do we need these as well? If so what are they?**

**David**: The loss function in regression is the error sum of squares. While I wouldn't call it an optimizer, the goal of regression is to minimize the SSE using the least squares framework. One such metric to monitor for both training and testing sets is we can monitor in training and testing is mean squared error, although there are a vareity of different metrics we can use. 

**Alvin**: To fit a linear regression model, we try to minimize the squared error loss. To do so, we set the derivative of the loss equal to zero, giving rise to the normal equations, which can be solved using QR decomposition or some other method. Thus, linear regression can be solved analytically in a finite number of steps. It doesn't need to iterate through minibatches/epochs like a neural net does, and so doesn't use an optimizer or metrics.  

**Michael**: In linear regression we do have all these components even though we may not refer to them in the same manner. The loss function that we typically use is the residual sum of squares. I woudn't typically call this an optimizer but we just try to minimize the RSS using the least squares algorithm. There are many different metrics we can monitor but a common one is the mean squared error.


**Dale**: In the simplest cases of leinear regression, we typically don't need an optimizer as we already got the closed form of the 
normal equation, and the loss function is the sqaured error. However, when we add some penalty terms such as norms of parameters to the loss function, there can be no closed form solution. Since norms are typically convex, we can use an optimizer together (say, Newton's method) to obtain the estimated parameters.

**Deepak**:
In linear regression -

loss function = cost function = minimise  squared error loss = square of [(hypothesis prediction) - (actual value)] for all samples in data set, divided by number of samples.

Optimizer = Linear regression optimizes to reduce cost using least square.

metrics to monitor = Root Mean Square Error, R squared and adjusted R squared, 


**Jimmy**: In linear regression, we use the sum of squared errors as the loss function that we are trying to minimize. We do so through solving the normal equations.
