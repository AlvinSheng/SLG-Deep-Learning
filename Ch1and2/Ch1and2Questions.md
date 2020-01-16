
Please answer questions for Chapters 1 and 2, labeled with your name.


**1. Do you buy into the hype of AI and machine learning?**
  

**David**: To an extent, although I wouldn't phrase it that way. What can be achieved is impressive, but some of the hype behind AI/ML/DL in popular media is overstating or misrepresenting the capablities of what can be done. Used properly, the tools being developed in the field will greatly impact many different fields, but it is important that those using those tools are properly trained and understand what can and cannot be done using these tools.

**Alvin**: Yes, to an extent. There's many impressive things deep learning has achieved, like New Yorker-quality text generation. However, we're still very far from Ray Kurzweil's prediction of the Singularity coming about in 2045, where machine intelligence will be infinitely more powerful than all human intelligence combined.

**Michael**: Yes, I do buy into the hype of AI and machine learning because they have led to many technological advancements in image recognition, speech recognition, and predictive capability. Although I buy into the hype I also recognize that these tools have limitations and I shouldn't have lofty expectations. We are still a ways away from computers that can think on their own.

**Dale**: Yes. But I also notice that deep learning technique is not yet fully explainable and transparent. Decision tree can be regarded as a transparent machine learning classifier as its decision boundary can be revealed to the users. For many other machine learning models, however, the model can contain too many parameters so that the decision boundary cannot be obtained directly. Without knowing the true decision boundary, human users may not "trust" the AI or machine learning models. Note that visualization can improve the trust to some extent,say, the heat map in neural network. On the other hand, deep learning models may not be robust. Pixel attacks may alter the result of a classifier. That indicates that AI models in modern days may not achieve the human level (even in computer vision tasks). 

**2.The authors mention on page 5 that machine learning differs from statistics because it “tends to deal with large, complex datasets (such as a dataset of millions of images, each consisting of tens of thousands of pixels) for which classical statistical analysis such as Bayesian analysis would be impractical.  As a result, machine learning, and especially deep learning, exhibits comparatively little mathematical theory -- maybe too little -- and is engineering oriented.  It’s a hands-on discipline in which ideas are proven empirically more often than theoretically.”
What are your thoughts on this viewpoint?  What do you see as the similarities and differences between machine learning and statistics?**      

**Alvin**: When he was talking about a weird method for tracking proximity between words, Lawrence Carin called it "embarrassing" and said "if you don't like it, you'll learn to like it, because it works." However, he also said that it was possible to interpret deep neural networks. I think it's important to try to interpret them, to see if they align with human intuition and aren't relying on spurious associations. We shouldn't put all our faith on a black box just because it seems to work.

**Michael**: I agree with the author's viewpoint to an extent. I believe statistics is very useful when we don't have access to an entire population's information and need to draw inference on samples. With statistics we are able to quantify uncertainty and make inference using mathematically sound theory. In contrast, with machine learning using very large datasets we don't really need to approximate the population as much, and I am not sure that the results allow for inference to be drawn. If you look at the theory behind machine learning it does draw on some of the same concepts that statistics draws on, but it seems that you don't need to pay much attention to this when practicing ML.

**David**: Because we are dealing with large populations here, there may be less of an inclination to worry about certain theory regarding approximations of the entire population. It also is difficult in some cases to draw inference, as ML frameworks can be fairly complex and do not lend themselves to easy interpretation. While ML theory does pull from statistical concepts, it has somewhat diverged into an engineering-oriented field. As a statistician, I think that there should be a stronger push for rigor behind ML methods in an effort to unify them more closely with statistical theory.

**Dale**: I agree with this viewpoint as it explains the current situations. That is, some machine learning models (like deep neural network) are used without fully understand the mathematics behind. Parameter tuning becomes rather an "engineering" task without enough guidelines from mathematics. We however, do know that many machine learning techniques can be studied by statistics. Dense feed-forward neural network, for example, can be viewed as multiple linear regression. Although many other machine learning algorithms have its computer science background, say, convolutional layers from computer vision and signal processing, it doesn't necessarily mean that we should treat statistics and machine learning as two different disciplines, as prediction based on data is always a essential task in statistics. 


**3. Deep learning requires a loss function.  How have you dealt with loss functions in your statistics life so far?  Why do we often use squared error loss?**


**David**: Statisticians use loss functions frequently. One of the more obvious examples used is the sum of squared errors. One of the reasons why squared error loss is preferable is that  is readily interpretable, by default it is measuring a euclidean distance between the values we fit with a model and the true values.. 

**Alvin**: I've used loss functions to compare different estimators. The squared error loss has nice theoretical properties, as it decomposes into a variance and squared bias term.

**Michael**: Yes, in every regression that we perform we use a loss function whether we realize it or not. Regression seeks to find the line of best fit by minimizing the residual sum of square (squared error loss). We often use squared error loss because it is easy to understand; i.e. we want to minimize the (euclidean) distance between our predictions and the true values for our observations.

**Dale**: Yes, the squared error in linear regression can be viewed as a loss function, although we don't actually need to obtain the parameters of a simple linear regresssion through optimization when we have the closed form answer. In LASSO or ridge regression, the loss functions are further added with penalty term, and these are the cases we may actually need optimizers. Note that squared error loss in linear regression is convex and differentiable. That brings many nice properties such as local minimum indicating global minimum. 


**4. Why are classical machine learning algorithms such as SVMs, random forests, gradient boosting, etc., considered "shallow learning," whereas neural nets are considered “deep learning”? Can shallow methods be stacked to emulate neural networks?**


**David**: Neural nets have multiple layers of representations of the data rather than just one, allowing for more "depth", so to speak. The key benefit of neural networks is that the layers are optimized jointly. I don't believe this would be the case with shallow methods, as to my understanding stacking these methods wouldn't innately have a feature where they are optimized jointly.

**Alvin**: Neural nets use successive layers of representations, or data transformations, before the actual classification or regression. By contrast, classical machine learning uses only one or two layers of representations. What’s more, those representations often have to be feature engineered manually. Shallow methods shouldn’t be stacked, as they’re too “greedy”. The key feature of neural networks is that all layers are optimized jointly, rather than layer by layer.


**Michael**: Traditional machine learning algorithms only rely on one layer of data representation that is often derived through feature engineering. In contrast neural networks are considered to be 'deep learners' because they use multiple layers of representation that are learned from the data. Although I am not familiar with the particulars of it, I believe there is a whole ML framework called stacking where you build many 'simple' models and stack them together into one model. So yes I think they can be stacked to emulate neural networks.





**5. Why is stochastic gradient descent better than regular gradient descent for neural networks?**

**David**: Stochastic gradient descent is preferable for neural networks because by randomly choosing subsets of the data to perform gradient descent on, we avoid the compuational cost of using all the data at once.

**Alvin**: minibatch-SGD is gradient descent on randomly chosen small subsets of the training data. This is more efficient than using all the data at once.

**Michael**: In regular gradient descent we would need to calculate the gradient at every data point which can be computationally intensive as our dataset size grows. To circumvent this we randomly choose one data point to approximate the gradient and move 1 step size down the gradient. This will allow for faster convergence, and in practice the book says we use a batch of training points.




**6. How does the concept of momentum apply to SGD?**


**David**: Momentum applies in the sense that we don't consider only the current gradient or velocity, but past acceleration as well. This is more informative and enables the gradient descent algorithm to continue looking for the global minimimum when it might otherwise stop at a local minimum.

**Alvin**: The gradient can be considered as a slope that can accelerate the ball more the steeper it is. Momentum is a way to account for velocity accrued via past acceleration in addition to the current gradient. Thus, if the optimizer, or ball, arrives at a local minimum, the momentum may be sufficient for the optimizer to escape the local minimum.

**Michael**: Momentum allows us to not only use the current gradient but using past 'acceleration' to calculate the velocity. This is important because if the velocity is not very fast then it will allow SGD to not get stuck in a non-optimal local minimum.



**7. What is a tensor, have you seen it before?  Did you understand the section on the dot-product?**

**David**: I've experienced several different kinds of tensors before. 0D-2D are just the building blocks of data storage; scalars, vectors, and matrices. 3D tensors are a fairly new concept although I have heard of them before. The dot-product section is understandable, if a tad difficult to grasp at first.

**Alvin**: tensors are generalizations of vectors and matrices to an arbitrary number of dimensions. 

**Michael**: A tensor is a generalization of vectors and matrices to more than 2 dimensions. I found the section on the tensor dot-product to be kind of confusing since it is not presented in the typical matrix algebra notation, but after just thinking about matrix multiplication what they presented makes sense.




**8. In the compilation step notice you need a loss function, an optimizer, and metrics to monitor during training/testing. In linear regression do we need these as well? If so what are they?**


**David**: The loss function in regression is the error sum of squares. While I wouldn't call it an optimizer, the goal of regression is to minimize the SSE using the least squares framework. One such metric to monitor for both training and testing sets is we can monitor in training and testing is mean squared error, although there are a vareity of different metrics we can use. 

**Alvin**: To fit a linear regression model, we try to minimize the squared error loss. To do so, we set the derivative of the loss equal to zero, giving rise to the normal equations, which can be solved using QR decomposition or some other method. Thus, linear regression can be solved analytically in a finite number of steps. It doesn't need to iterate through minibatches/epochs like a neural net does, and so doesn't use an optimizer or metrics.  

**Michael**: In linear regression we do have all these components even though we may not refer to them in the same manner. The loss function that we typically use is the residual sum of squares. I woudn't typically call this an optimizer but we just try to minimize the RSS using the least squares algorithm. There are many different metrics we can monitor but a common one is the mean squared error.


