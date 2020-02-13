Please answer questions for Chapter 4 next to your name.

**1. In the discussion of missing values on page 93 the authors say to make sure to code the missing values consistently so that the model learns what to do with them.  Do you think that imputation methods would produce a benefit in the model?  What about multiple imputation?**

**Alvin**: I think imputation methods may produce a benefit, but not as much as in classical machine learning algorithms. The neural network should automatically incorporate interrelationships between covariates to make new features. This probably would make imputation/multiple imputation, which rely on associations between covariates, redundant. 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: Imputation of missing data is done by creating relationships between other covariates or from other samples to fill in the missing covariate data. I think of this as a specific case of feature engineering. And as we have seen, neural networks are able to build their own features. So, imputation may be beneficial, but the network may be able to pick up on the pattern we would use to impute, or perhaps a better one, on its own. I wonder how thier method of dealing with missing data would deal with informative missingness.

**Matthew**:

**Michael**: I think that imputation would be helpful in this case. The book also talks about feature engineering and how even though a neural network will be able to extract appropriate representations this process can be sped up by creating new, more elegant features. This is similar to imputation if we can fill in the missing values then I believe it should benefit the model. I think that [Multiple Imputation](https://stats.idre.ucla.edu/stata/seminars/mi_in_stata_pt1_new/) may be too computationally difficult since you would need to build m models, and combine them; plus how would we use SGD with this?

**Peter**:

**Saran**:

**Yan**:


**2. Why isn’t a validation set needed with a linear regression model?  Which algorithms that you’ve used require a validation set or something like cross-validation?**

**Alvin**: A linear regression model has parameters that can be optimized analytically. All other ML methods I've used, e.g. SVM, KNN, tree-based methods, etc. rely on validation sets or cross-validation. A good example is regularized generalized linear models as implemented in glmnet. 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: With linear regression we aren't usually tweaking parameters. If we want to experiment with different coefficients, then we could use a validation set to test those. In the past I have used K-fold cross validation on all of my machine learning models (random forests, neural nets, etc).

**Matthew**:

**Michael**: We could use a validation set for linear regression. Since they are typically used when we want to draw inference, like in an experiment, we don't necessarily have many data points to separate into training, validation, and testing sets. 

**Peter**:

**Saran**:

**Yan**:

**3. To “regularize” the model you can add weight penalties such as L1 norm, L2 norm, and a combination of the two.  What statistical methods do these remind you of? What additional considerations should we keep in mind when adding in these weight terms?**

**Alvin**: LASSO, Ridge, SCAD, etc. If these penalties are used, it's especially important to scale the variables, lest one variable dominate the others and use up the "budget" from the penalty by itself.

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: When I think of L1 and L2 norm penalties I think of Lasso, Ridge, and Elasticnet regression. If we want to adjust these parameters, we need to use some form of validation so that we are not leaking information on the test set.

**Matthew**:

**Michael**: L1 and L2 regularization makes me think of Lasso and Ridge regression. When we use "weight decay" regularization we need to use cross validation to determine what the optimal hyperparameter is.

**Peter**:

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

**Jimmy**: This is actually the opposite of what I generally think to do. I prefer to start with the simplest solution (often a model simpler than a neural net like a linear regression) and then build up. This allows for quick prototyping as building a large model can take a long time. Additionally, I think it is usually best to use the minimum sufficient model (Occam's Razor). It may not be worth all the extra time for a marginal increase in accuracy. One interesting strategy may be to perform a binary search for a preferred model. Start with small model and a big model and then make one in the middle and continue the process until you get a model that you are happy with.

**Matthew**:

**Michael**: In general I think this is a good strategy for prediction because we are using a validation set to help create a more generalizable model. This is the same as the idea behind decisions trees; build a very deep tree, and then prune it down to the optimum of some criterion. Although this can lead to a more generalizable model this could also be computationally expensive if the model is very complex; one could employ early stopping in this case (Goodfellow Ch. 7).

**Peter**:

**Saran**:

**Yan**:


**5. When have you encountered/used hyperparameters or feature engineering?**

**Alvin**: I have used hyperparameters for ML algorithms other than classical linear regression. I've done feature engineering for almost every data science project with ML involved. However, when I did a Kaggle ML competition using convolutional neural nets to diagnose eyes for diabetic retinopathy, I didn't do any feature engineering. In hindsight, maybe I could write a program to detect different kinds of lesions in the eye pictures. That would be quite difficult, however--neural nets may figure it out better on their own. 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: I have used hyper parameters in all of the machine learning models that I have used. Depth of a deicion tree, number of trees in a random forest, etc. I have also done some feature engineering on various projects. Ex: we were given data on number of emails received and number of emails that they actually opened; click rate ( opened / received ) ended up being a more vauble predictor than either individually. We have also done some domain specific feature engineering for a Kaggle competition which ended up being among the most important variables in our model.

**Matthew**:

**Michael**: I've used cross-validation to select hyperparameters for projects every now and again, but haven't really engineered any features.

**Peter**:

**Saran**:

**Yan**:
