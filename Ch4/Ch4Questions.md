Please answer questions for Chapter 4 next to your name.

**1. In the discussion of missing values on page 93 the authors say to make sure to code the missing values consistently so that the model learns what to do with them.  Do you think that imputation methods would produce a benefit in the model?  What about multiple imputation?**

**Alvin**: I think imputation methods may produce a benefit, but not as much as in classical machine learning algorithms. The neural network should automatically incorporate interrelationships between covariates to make new features. This probably would make imputation/multiple imputation, which rely on associations between covariates, redundant. 

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

**Yan**:


**2. Why isn’t a validation set needed with a linear regression model?  Which algorithms that you’ve used require a validation set or something like cross-validation?**

**Alvin**: A linear regression model has parameters that can be optimized analytically. All other ML methods I've used, e.g. SVM, KNN, tree-based methods, etc. rely on validation sets or cross-validation. A good example is regularized generalized linear models as implemented in glmnet. 

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

**Yan**:

**3. To “regularize” the model you can add weight penalties such as L1 norm, L2 norm, and a combination of the two.  What statistical methods do these remind you of? What additional considerations should we keep in mind when adding in these weight terms?**

**Alvin**: LASSO, Ridge, SCAD, etc. If these penalties are used, it's especially important to scale the variables, lest one variable dominate the others and use up the "budget" from the penalty by itself.

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

**Yan**:


**4. What do you think of the idea of training a very big model and then using the data to make it smaller?  Have you seen this strategy used anywhere else?  What might be the pros and cons?**

**Alvin**: It sounds very engineering-oriented. If the main goal is prediction, it sounds like the way to go. However, interpretability and its potential to be used for inference may suffer.

It's how decision tree algorithms work-- you overgrow the tree, and then prune the leaves with the highest impurity. 

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

**Yan**:


**5. When have you encountered/used hyperparameters or feature engineering?**

**Alvin**: I have used hyperparameters for ML algorithms other than classical linear regression. I've done feature engineering for almost every data science project with ML involved. However, when I did a Kaggle ML competition using convolutional neural nets to diagnose eyes for diabetic retinopathy, I didn't do any feature engineering. In hindsight, maybe I could write a program to detect different kinds of lesions in the eye pictures. That would be quite difficult, however--neural nets may figure it out better on their own. 

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

**Yan**:
