**1. Why might bidirectional RNNs be useful?**
  
**Alvin**: It offers an alternative way of analyzing the data. If there's enough data to prevent overfitting, ensembiling anti-chronological RNNs with a chronological one could improve performance.

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: 

**Matthew**:
  
**Michael**: Bidirectional recurrent neural networks are useful when we have data in which the order is meaningful. For example, we may be looking at text data and want to predict the next word in a sequence. We know that the meaning of a word relies on the word directly before or after it, so it would make sense to use these when predicting a word at a given point. Bidirectional RNN's allow us to incorporate this logic by fitting a forward and a backwards recurrent neural network.
  
**Peter**:
  
**2. Can you think of other types of data that RNNs would be useful for?**
  
**Alvin**: In addition to text data, it can analyze other kinds of sequence data, like timeseries data or videos. 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: 

**Matthew**:
  
**Michael**: In addition to text data, I imagine you could use a recurrent neural network to predict the next frame in a film. The book also mentions they can be used for forecasting.
  
**Peter**:

**3. What are some pitfalls of regular RNN layers? **

**Alvin**: It cannot retain information from many timesteps before effectively, like LSTM layers can. 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: 

**Matthew**:
  
**Michael**: Long-term time dependencies are often hard to learn, and the regular RNN layer is subject to the vanishing gradient problem. 
  
**Peter**:

**4. What are the similarities and differences between the CNNs in this chapter and those in chapter 5?**

**Alvin**: The CNNs in this chapter are just for one-dimensional sequences. Otherwise, they are the same as those in Chapter 5. 

**Antonio**:

**Cameron**:

**Dale**:

**David**:

**Deepak**:

**Jimmy**: 

**Matthew**:
  
**Michael**: I think it's hard to dial down similarities that aren't things like "they use gradient descent," but i think one of the differences is they have their own strengths. CNNs perform well on text data while RNNs are great for sequential data.
  
**Peter**:
