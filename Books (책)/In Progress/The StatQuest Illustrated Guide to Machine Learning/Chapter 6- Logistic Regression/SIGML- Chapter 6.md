# Chapter 6: Logistic Regression

#machine_learning 

## Logistic Regression: Main Ideas (Part 1)

- The Problem
	- Linear regression and linear models are useful for ***continuous*** data, but not for **discrete** data
	- We want a classifier that uses continuous data to classify discrete data
- A Solution
	- **Logistic regression** (which is functionally "logistic classification"), fits a "squiggle" to the data that tells us the predicted probability (between 0 and 1) for **discrete** variables
	- Like linear regression, logistic regression has metrics similar to $R^2$ to give us a sense of how accurate our predictions are
	- We can mix and match **both** discrete and continuous features to make *discrete* classifications

## Logistic Regression: Main Ideas (Part 2)

- On a logistic regression graph, the y- axis represent **probability** from 0 to 1 for the discrete feature
	- The x- axis represents the continuous feature
- Example
	- Assume that the goal of the classifier is to determine the amount of popcorn someone eats to classify whether or not they will like a movie
		- `x- axis`: Popcorn (g)
		- `y- axis`: Probability that someone like a movie
	- Points on the graph are training data which have been colored to determine whether or not someone did or did not like a movie
	- The squiggle, which is fit to the points of the training data tells us the predicted probability that someone likes a movie
		- The closer the squiggle is to the top of the graph, there's a higher probability that someone will like a movie
		- Conversely, the lower the squiggle is on the graph, there's a higher probability that someone will **not** like a movie

## Logistic Regression: Main Ideas (Part 3)

- Usually the threshold for classification is **.5**
	- Since we know the probability of a person liking a movie, we can *classify* them as someone who either likes or dislikes a movie
		- $P(\text{liking a movie}) > .5 = P(\text{likes movie})$
		- $P(\text{liking a movie}) <= .5 = P(\text{dislikes movie})$
- We'll see different examples that use different classification thresholds when we deal with **receiver operator curves** (ROCs)