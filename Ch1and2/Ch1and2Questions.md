
Please answer questions for Chapters 1 and 2, labeled with your name.


**1. Do you buy into the hype of AI and machine learning?**

**Alvin**: Yes, to an extent. There's many impressive things deep learning has achieved, like New Yorker-quality text generation. However, we're still very far from Ray Kurzweil's prediction of the Singularity coming about in 2045, where machine intelligence will be infinitely more powerful than all human intelligence combined.

**Michael**: Yes, I do buy into the hype of AI and machine learning because they have led to many technological advancements in image recognition, speech recognition, and predictive capability. Although I buy into the hype I also recognize that these tools have limitations and I shouldn't have lofty expectations. We are still a ways away from computers that can think on their own.

**2.The authors mention on page 5 that machine learning differs from statistics because it “tends to deal with large, complex datasets (such as a dataset of millions of images, each consisting of tens of thousands of pixels) for which classical statistical analysis such as Bayesian analysis would be impractical.  As a result, machine learning, and especially deep learning, exhibits comparatively little mathematical theory -- maybe too little -- and is engineering oriented.  It’s a hands-on discipline in which ideas are proven empirically more often than theoretically.”
What are your thoughts on this viewpoint?  What do you see as the similarities and differences between machine learning and statistics?**      

**Alvin**: When he was talking about a weird method for tracking proximity between words, Lawrence Carin called it "embarrassing" and said "if you don't like it, you'll learn to like it, because it works." However, he also said that it was possible to interpret deep neural networks. I think it's important to try to interpret them, to see if they align with human intuition and aren't relying on spurious associations. We shouldn't put all our faith on a black box just because it seems to work.

**Michael**: I agree with the author's viewpoint to an extent. I believe statistics is very useful when we don't have access to an entire population's information and need to draw inference on samples. With statistics we are able to quantify uncertainty and make inference using mathematically sound theory. In contrast, with machine learning using very large datasets we don't really need to approximate the population as much, and I am not sure that the results allow for inference to be drawn. If you look at the theory behind machine learning it does draw on some of the same concepts that statistics draws on, but it seems that you don't need to pay much attention to this when practicing ML.




**3. Deep learning requires a loss function.  How have you dealt with loss functions in your statistics life so far?  Why do we often use squared error loss?**

**Alvin**: I've used loss functions to compare different estimators. The squared error loss has nice theoretical properties, as it decomposes into a variance and squared bias term.

**Michael**: Yes, in every regression that we perform we use a loss function whether we realize it or not. Regression seeks to find the line of best fit by minimizing the residual sum of square (squared error loss). We often use squared error loss because it is easy to understand; i.e. we want to minimize the (euclidean) distance between our predictions and the true values for our observations.


**4. Why are classical machine learning algorithms such as SVMs, random forests, gradient boosting, etc., considered "shallow learning," whereas neural nets are considered “deep learning”? Can shallow methods be stacked to emulate neural networks?**

**Alvin**: Neural nets use successive layers of representations, or data transformations, before the actual classification or regression. By contrast, classical machine learning uses only one or two layers of representations. What’s more, those representations often have to be feature engineered manually. Shallow methods shouldn’t be stacked, as they’re too “greedy”. The key feature of neural networks is that all layers are optimized jointly, rather than layer by layer.

**Michael**: Traditional machine learning algorithms only rely on one layer of data representation that is often derived through feature engineering. In contrast neural networks are considered to be 'deep learners' because they use multiple layers of representation that are learned from the data. Although I am not familiar with the particulars of it, I believe there is a whole ML framework called stacking where you build many 'simple' models and stack them together into one model. So yes I think they can be stacked to emulate neural networks.



**5. Why is stochastic gradient descent better than regular gradient descent for neural networks?**

**Alvin**: minibatch-SGD is gradient descent on randomly chosen small subsets of the training data. This is more efficient than using all the data at once.

**Michael**: In regular gradient descent we would need to calculate the gradient at every data point which can be computationally intensive as our dataset size grows. To circumvent this we randomly choose one data point to approximate the gradient and move 1 step size down the gradient. This will allow for faster convergence, and in practice the book says we use a batch of training points.



**6. How does the concept of momentum apply to SGD?**

**Alvin**: The gradient can be considered as a slope that can accelerate the ball more the steeper it is. Momentum is a way to account for velocity accrued via past acceleration in addition to the current gradient. Thus, if the optimizer, or ball, arrives at a local minimum, the momentum may be sufficient for the optimizer to escape the local minimum.

**Michael**: Momentum allows us to not only use the current gradient but using past 'acceleration' to calculate the velocity. This is important because if the velocity is not very fast then it will allow SGD to not get stuck in a non-optimal local minimum.



**7. What is a tensor, have you seen it before?  Did you understand the section on the dot-product?**

**Alvin**: tensors are generalizations of vectors and matrices to an arbitrary number of dimensions. 

**Michael**: A tensor is a generalization of vectors and matrices to more than 2 dimensions. I found the section on the tensor dot-product to be kind of confusing since it is not presented in the typical matrix algebra notation, but after just thinking about matrix multiplication what they presented makes sense.



**8. In the compilation step notice you need a loss function, an optimizer, and metrics to monitor during training/testing. In linear regression do we need these as well? If so what are they?**

**Alvin**: To fit a linear regression model, we try to minimize the squared error loss. To do so, we set the derivative of the loss equal to zero, giving rise to the normal equations, which can be solved using QR decomposition or some other method. Thus, linear regression can be solved analytically in a finite number of steps. It doesn't need to iterate through minibatches/epochs like a neural net does, and so doesn't use an optimizer or metrics.  

**Michael**: In linear regression we do have all these components even though we may not refer to them in the same manner. The loss function that we typically use is the residual sum of squares. I woudn't typically call this an optimizer but we just try to minimize the RSS using the least squares algorithm. There are many different metrics we can monitor but a common one is the mean squared error.


