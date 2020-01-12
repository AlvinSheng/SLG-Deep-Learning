
Please answer questions for Chapters 1 and 2, labeled with your name.


**1. Do you buy into the hype of AI and machine learning?**

Alvin: Example Answer
Justin: Sure
Deepak: Yes, I do. 

**2.The authors mention on page 5 that machine learning differs from statistics because it “tends to deal with large, complex datasets (such as a dataset of millions of images, each consisting of tens of thousands of pixels) for which classical statistical analysis such as Bayesian analysis would be impractical.  As a result, machine learning, and especially deep learning, exhibits comparatively little mathematical theory -- maybe too little -- and is engineering oriented.  It’s a hands-on discipline in which ideas are proven empirically more often than theoretically.”
What are your thoughts on this viewpoint?  What do you see as the similarities and differences between machine learning and statistics?**






**3. Deep learning requires a loss function.  How have you dealt with loss functions in your statistics life so far?  Why do we often use squared error loss?**

Deepak: 
1) Dealt with loss fuctions while using linear regression. Specially using R square to comapre various models built for prediction.
2) 
 a) Error loss could be postive or negative depending on predicated value by model is higher or lower than the actual value. By squaring error loss, we ensure it doesn't cancel each other out.
 b) Error distribution is epxeted to be normally distributed as per CLT.


**4. Why are classical machine learning algorithms such as SVMs, random forests, gradient boosting, etc., considered "shallow learning," whereas neural nets are considered “deep learning”? Can shallow methods be stacked to emulate neural networks?**
Deepak:
1) In Deep Learning all layres of the Model learn jointly, at the same time rather than in scuession. With such joint leanring, whenever model adjust its one of the feature, all other features depending on it adjust accordingly. All such features and layers adjustment happend based on the feedback singal which is generated to serve the end goad that model has.
2) Shallow learning models such as SVMs, random forest,  etc. tend to focus on learning from one of two layers of reprensentations. Where as deep learning model learns from 100s/1000s of layres of represenations. 
Shallow learning models also require greater length of users inputs to format input data to suit models. Where as deep learning can accept less formated data. 


**5. Why is stochastic gradient descent better than regular gradient descent for neural networks?**





**6. How does the concept of momentum apply to SGD?**





**7. What is a tensor, have you seen it before?  Did you understand the section on the dot-product?**





**8. In the compilation step notice you need a loss function, an optimizer, and metrics to monitor during training/testing. In linear regression do we need these as well? If so what are they?**




