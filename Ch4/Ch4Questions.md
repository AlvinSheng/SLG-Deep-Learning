Please answer questions for Chapter 4 next to your name.

**1. In the discussion of missing values on page 93 the authors say to make sure to code the missing values consistently so that the model learns what to do with them.  Do you think that imputation methods would produce a benefit in the model?  What about multiple imputation?**

**Alvin**: 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: 

**Matthew**:

**Michael**: I think that imputation would be helpful in this case. The book also talks about feature engineering and how even though a neural network will be able to extract appropriate representations this process can be sped up by creating new, more elegant features. This is similar to imputation if we can fill in the missing values then I believe it should benefit the model. I think that [Multiple Imputation](https://stats.idre.ucla.edu/stata/seminars/mi_in_stata_pt1_new/) may be too computationally difficult since you would need to build m models, and combine them; plus how would we use SGD with this?

**Peter**:

**Saran**:

**Yan**:


**2. Why isn’t a validation set needed with a linear regression model?  Which algorithms that you’ve used require a validation set or something like cross-validation?**

**Alvin**: 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: 

**Matthew**:

**Michael**: We could use a validation set for linear regression. Since they are typically used when we want to draw inference, like in an experiment, we don't necessarily have many data points to separate into training, validation, and testing sets. 

**Peter**:

**Saran**:

**Yan**:

**3. To “regularize” the model you can add weight penalties such as L1 norm, L2 norm, and a combination of the two.  What statistical methods do these remind you of? What additional considerations should we keep in mind when adding in these weight terms?**

**Alvin**: 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: 

**Matthew**:

**Michael**: L1 and L2 regularization makes me think of Lasso and Ridge regression. When we use "weight decay" regularization we need to use cross validation to determine what the optimal hyperparameter is.

**Peter**:

**Saran**:

**Yan**:


**4. What do you think of the idea of training a very big model and then using the data to make it smaller?  Have you seen this strategy used anywhere else?  What might be the pros and cons?**

**Alvin**: 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: 

**Matthew**:

**Michael**: In general I think this is a good strategy for prediction because we are using a validation set to help create a more generalizable model. This is the same as the idea behind decisions trees; build a very deep tree, and then prune it down to the optimum of some criterion. Although this can lead to a more generalizable model this could also be computationally expensive if the model is very complex; one could employ early stopping in this case (Goodfellow Ch. 7).

**Peter**:

**Saran**:

**Yan**:


**5. When have you encountered/used hyperparameters or feature engineering?**

**Alvin**: 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: 

**Matthew**:

**Michael**: I've used cross-validation to select hyperparameters for projects every now and again, but haven't really engineered any features.

**Peter**:

**Saran**:

**Yan**:
