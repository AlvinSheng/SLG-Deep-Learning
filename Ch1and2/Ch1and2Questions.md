
Please answer questions for Chapters 1 and 2, labeled with your name.


**1. Do you buy into the hype of AI and machine learning?**

Alvin: Yes, to an extent. There's many impressive things deep learning has achieved, like New Yorker-quality text generation. However, we're still very far from Ray Kurzweil's prediction of the Singularity coming about in 2045, where machine intelligence will be infinitely more powerful than all human intelligence combined.

Justin: Sure

**2.The authors mention on page 5 that machine learning differs from statistics because it “tends to deal with large, complex datasets (such as a dataset of millions of images, each consisting of tens of thousands of pixels) for which classical statistical analysis such as Bayesian analysis would be impractical.  As a result, machine learning, and especially deep learning, exhibits comparatively little mathematical theory -- maybe too little -- and is engineering oriented.  It’s a hands-on discipline in which ideas are proven empirically more often than theoretically.”
What are your thoughts on this viewpoint?  What do you see as the similarities and differences between machine learning and statistics?**

Alvin: When he was talking about a weird method for tracking proximity between words, Lawrence Carin called it "embarrassing" and said "if you don't like it, you'll learn to like it, because it works." However, he also said that it was possible to interpret deep neural networks. I think it's important to try to interpret them, to see if they align with human intuition and aren't relying on spurious associations. We shouldn't put all our faith on a black box just because it seems to work.



**3. Deep learning requires a loss function.  How have you dealt with loss functions in your statistics life so far?  Why do we often use squared error loss?**

Alvin: I've used loss functions to compare different estimators. The squared error loss has nice theoretical properties, as it decomposes into a variance and squared bias term.



**4. Why are classical machine learning algorithms such as SVMs, random forests, gradient boosting, etc., considered "shallow learning," whereas neural nets are considered “deep learning”? Can shallow methods be stacked to emulate neural networks?**

Alvin: Neural nets use successive layers of representations, or data transformations, before the actual classification or regression. By contrast, classical machine learning uses only one or two layers of representations. What’s more, those representations often have to be feature engineered manually. Shallow methods shouldn’t be stacked, as they’re too “greedy”. The key feature of neural networks is that all layers are optimized jointly, rather than layer by layer.




**5. Why is stochastic gradient descent better than regular gradient descent for neural networks?**

Alvin: minibatch-SGD is gradient descent on randomly chosen small subsets of the training data. This is more efficient than using all the data at once.



**6. How does the concept of momentum apply to SGD?**

Alvin: The gradient can be considered as a slope that can accelerate the ball more the steeper it is. Momentum is a way to account for velocity accrued via past acceleration in addition to the current gradient. Thus, if the optimizer, or ball, arrives at a local minimum, the momentum may be sufficient for the optimizer to escape the local minimum.



**7. What is a tensor, have you seen it before?  Did you understand the section on the dot-product?**

Alvin: tensors are generalizations of vectors and matrices to an arbitrary number of dimensions. 



**8. In the compilation step notice you need a loss function, an optimizer, and metrics to monitor during training/testing. In linear regression do we need these as well? If so what are they?**

Alvin: To fit a linear regression model, we try to minimize the squared error loss. To do so, we set the derivative of the loss equal to zero, giving rise to the normal equations, which can be solved using QR decomposition or some other method. Thus, linear regression can be solved analytically in a finite number of steps. It doesn't need to iterate through minibatches/epochs like a neural net does, and so doesn't use an optimizer or metrics.  


