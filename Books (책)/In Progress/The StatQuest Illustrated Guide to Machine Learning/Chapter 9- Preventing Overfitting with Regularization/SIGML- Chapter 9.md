# Chapter 9: Preventing Overfitting with Regularization

#machine_learning 

## Regularization: Main Ideas

- The Problem
	- The larger and more complex a machine learning method is, the easier it is to overfit the training data
		- The "squiggle" might fit the training data well, but make horrible predictions with the new data
		- In this case, the squiggle has *low* **bias** because it fits the training data well, but *high* **variance** because it does poorly with the new data
- A Solution
	- We use regularization to deal with overfitting with training data
		- Regularization reduces how sensitive the model is to the training data
	- Regularization *increases* **bias**, which in return results in a *decrease* in **variance**

## Ridge/ Squared/ L2 Regularization: Details (Part 1)

- **Ridge Regularization**
	- Sum of squared values of vector components
	- L2 Regularization/ Euclidean Distance
- **Lasso Regularization**
	- Sum of absolute values
	- L1 Regularization/ Manhattan Distance

## Ridge/ Squared/ L2 Regularization: Details (Part 2)

- When we fit a line to the training data, we want to find the y- axis intercept and slope to minimize the SSR
- When we use **ridge regularization** to optimize parameters, we *simultaneously* minimize the SSR and a *penalty* that's proportional to the square of the slope
	- $SSR + \lambda * slope^2$
		- $\lambda$, a positive number that determines how strong of an effect the ridge regularization has on the new line
- Example
	- Assume we have a line that fits the training data *perfectly*
	- If we're using ridge regularization, we want to minimize the equation:
		- $SSR + \lambda * slope^2$
			- SSR is **0** since the line fits the training data perfectly
			- Assume $\lambda = 1$
			- $slope = 1.3$
		- $\text{Overall Score} = 1.69$, ridge score for the line that fits the training data perfectly

## Ridge/ Squared/ L2 Regularization: Details (Part 3)

- If we use this ridge score for the new line that doesn't fit the training data well:
	- $SSR = .4$
	- Assume $\lambda = 1$
	- $slope = .6$
- $\text{Ridge Penalty} = .76$
- Conclusion
	- Ridge score for the line that fits the training data perfectly is **1.69**
	- Ridge score for the new line that had a smaller scope and didn't fit the training data as well is **.76**
	- We want to pick the line that *minimizes* the **ridge score**, so we pick the new line ($.76 < 1.69$)

## Ridge/ Squared/ L2 Regularization: Details (Part 4)

- If $\lambda = 0$: 
	- Ridge penalty is also **0**
	- This means that we only minimize the SSR, which makes it similar to *not using* ridge regularization in the first place
		- This new line will simply be a line that minimizes the SSR
- As we continue to increase $\lambda$, the slope gets closer and closer to **0** and the y- axis intercept becomes the average y- value in the training dataset
	- In other words, the x- axis variable no longer plays a significant role in making predictions
	- We now need a good way to choose a value for $\lambda$
	
## Ridge/ Squared/ L2 Regularization: Details (Part 5)

- There's no way to know in advance what the optimal value of $\lambda$ is, so we have to choose a few potential values and see how they perform using **cross validation**
- Our earlier example was simple, resulting in a ridge penalty that only contained a single parameter, which was the slope
	- If we use a more complicated model that used multiple variables to predict the height of someone, the ridge penalty would include the sum of the squares of those slopes associated with those variables
	- $SSR + \lambda * (slope_A^2 + slope_B^2 + slope_C^2)$
- Note
	- The ridge penalty doesn't include the intercept because the intercept doesn't affect how any of the variables predict height

## Ridge/ Squared/ L2 Regularization: Details (Part 6)

- When we apply ridge regularization to models with multiple parameters, it will shrink the parameters (e.g. $slope_A^2$) but not equally
	- If a variable is relatively irrelevant (e.g. favorite color) in predicting the output variable (e.g. height), shrinking its parameter (e.g. $slope_c^2$) will shrink the ridge penalty significantly, **without** increasing the SSR
	- Conversely, if we shrink the parameters of useful variables, we will shrink the ridge penalty significantly, but also **increases** the SSR significantly

## Ridge/ Squared/ L2 Regularization: FAQ

- 173