
Please answer questions for Chapters 1 and 2, labeled with your name.


**1. Do you buy into the hype of AI and machine learning?**
  
Alvin: Example Answer

David: To an extent, although I wouldn't phrase it that way. What can be achieved is impressive, but some of the hype behind AI/ML/DL in popular media is overstating or misrepresenting the capablities of what can be done. Used properly, the tools being developed in the field will greatly impact many different fields, but it is important that those using those tools are properly trained and understand what can and cannot be done using these tools.

**2.The authors mention on page 5 that machine learning differs from statistics because it “tends to deal with large, complex datasets (such as a dataset of millions of images, each consisting of tens of thousands of pixels) for which classical statistical analysis such as Bayesian analysis would be impractical.  As a result, machine learning, and especially deep learning, exhibits comparatively little mathematical theory -- maybe too little -- and is engineering oriented.  It’s a hands-on discipline in which ideas are proven empirically more often than theoretically.” What are your thoughts on this viewpoint?  What do you see as the similarities and differences between machine learning and statistics?**

Because we are dealing with large populations here, there may be less of an inclination to worry about certain theory regarding approximations of the entire population. It also is difficult in some cases to draw inference, as ML frameworks can be fairly complex and do not lend themselves to easy interpretation. While ML theory does pull from statistical concepts, it has somewhat diverged into an engineering-oriented field. As a statistician, I think that there should be a stronger push for rigor behind ML methods in an effort to unify them more closely with statistical theory.



**3. Deep learning requires a loss function.  How have you dealt with loss functions in your statistics life so far?  Why do we often use squared error loss?**

Statisticians use loss functions frequently. One of the more obvious examples used is the sum of squared errors. One of the reasons why squared error loss is preferable is that  is readily interpretable, by default it is measuring a euclidean distance between the values we fit with a model and the true values.. 


**4. Why are classical machine learning algorithms such as SVMs, random forests, gradient boosting, etc., considered "shallow learning," whereas neural nets are considered “deep learning”? Can shallow methods be stacked to emulate neural networks?**

Neural nets have multiple layers of representations of the data rather than just one, allowing for more "depth", so to speak. The key benefit of neural networks is that the layers are optimized jointly. I don't believe this would be the case with shallow methods, as to my understanding stacking these methods wouldn't innately have a feature where they are optimized jointly.





**5. Why is stochastic gradient descent better than regular gradient descent for neural networks?**

Stochastic gradient descent is preferable for neural networks because by randomly choosing subsets of the data to perform gradient descent on, we avoid the compuational cost of using all the data at once.



**6. How does the concept of momentum apply to SGD?**

Momentum applies in the sense that we don't consider only the current gradient or velocity, but past acceleration as well. This is more informative and enables the gradient descent algorithm to continue looking for the global minimimum when it might otherwise stop at a local minimum.



**7. What is a tensor, have you seen it before?  Did you understand the section on the dot-product?**

I've experienced several different kinds of tensors before. 0D-2D are just the building blocks of data storage; scalars, vectors, and matrices. 3D tensors are a fairly new concept although I have heard of them before. The dot-product section is understandable, if a tad difficult to grasp at first.



**8. In the compilation step notice you need a loss function, an optimizer, and metrics to monitor during training/testing. In linear regression do we need these as well? If so what are they?**

The loss function in regression is the error sum of squares. While I wouldn't call it an optimizer, the goal of regression is to minimize the SSE using the least squares framework. One such metric to monitor for both training and testing sets is we can monitor in training and testing is mean squared error, although there are a vareity of different metrics we can use. 



