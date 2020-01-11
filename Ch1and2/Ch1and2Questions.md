
Please answer questions for Chapters 1 and 2, labeled with your name.


**1. Do you buy into the hype of AI and machine learning?**

**Alvin**: Example Answer
**Justin**: Sure

**Michael**: Yes, I do buy into the hype of AI and machine learning because they have led to many technological advancements in image recognition, speech recognition, and predictive capability. Although I buy into the hype I also recognize that these tools have limitations and I shouldn't have lofty expectations. We are still a ways away from computers that can think on their own.

**2.The authors mention on page 5 that machine learning differs from statistics because it “tends to deal with large, complex datasets (such as a dataset of millions of images, each consisting of tens of thousands of pixels) for which classical statistical analysis such as Bayesian analysis would be impractical.  As a result, machine learning, and especially deep learning, exhibits comparatively little mathematical theory -- maybe too little -- and is engineering oriented.  It’s a hands-on discipline in which ideas are proven empirically more often than theoretically.”
What are your thoughts on this viewpoint?  What do you see as the similarities and differences between machine learning and statistics?**      

**Michael**: I agree with the author's viewpoint to an extent. I believe statistics is very useful when we don't have access to an entire population's information and need to draw inference on samples. With statistics we are able to quantify uncertainty and make inference using mathematically sound theory. In contrast, with machine learning using very large datasets we don't really need to approximate the population as much, and I am not sure that the results allow for inference to be drawn. If you look at the theory behind machine learning it does draw on some of the same concepts that statistics draws on, but it seems that you don't need to pay much attention to this when practicing ML.




**3. Deep learning requires a loss function.  How have you dealt with loss functions in your statistics life so far?  Why do we often use squared error loss?**

**Michael**: Yes, in every regression that we perform we use a loss function whether we realize it or not. Regression seeks to find the line of best fit by minimizing the residual sum of square (squared error loss). We often use squared error loss because it is easy to understand; i.e. we want to minimize the (euclidean) distance between our predictions and the true values for our observations.


**4. Why are classical machine learning algorithms such as SVMs, random forests, gradient boosting, etc., considered "shallow learning," whereas neural nets are considered “deep learning”? Can shallow methods be stacked to emulate neural networks?**

**Michael**: Traditional machine learning algorithms only rely on one layer of data representation that is often derived through feature engineering. In contrast neural networks are considered to be 'deep learners' because they use multiple layers of representation that are learned from the data. Although I am not familiar with the particulars of it, I believe there is a whole ML framework called stacking where you build many 'simple' models and stack them together into one model. So yes I think they can be stacked to emulate neural networks.



**5. Why is stochastic gradient descent better than regular gradient descent for neural networks?**

**Michael**: In regular gradient descent we would need to calculate the gradient at every data point which can be computationally intensive as our dataset size grows. To circumvent this we randomly choose one data point to approximate the gradient and move 1 step size down the gradient. This will allow for faster convergence, and in practice the book says we use a batch of training points.



**6. How does the concept of momentum apply to SGD?**

**Michael**: Momentum allows us to not only use the current gradient but using past 'acceleration' to calculate the velocity. This is important because if the velocity is not very fast then it will allow SGD to not get stuck in a non-optimal local minimum.



**7. What is a tensor, have you seen it before?  Did you understand the section on the dot-product?**

**Michael**: A tensor is a generalization of vectors and matrices to more than 2 dimensions. I found the section on the tensor dot-product to be kind of confusing since it is not presented in the typical matrix algebra notation, but after just thinking about matrix multiplication what they presented makes sense.



**8. In the compilation step notice you need a loss function, an optimizer, and metrics to monitor during training/testing. In linear regression do we need these as well? If so what are they?**

**Michael**: In linear regression we do have all these components even though we may not refer to them in the same manner. The loss function that we typically use is the residual sum of squares. I woudn't typically call this an optimizer but we just try to minimize the RSS using the least squares algorithm. There are many different metrics we can monitor but a common one is the mean squared error.


