# Chapter 4: Linear Regression

#machine_learning 

## Linear Regression: Main Ideas

- The Problem
	- After collecting weight and height measurements from **5** people, we want to use weight to predict height, which is a *continuous variable*
	- We can fit a line to the data to make predictions, but...
		- Didn't talk about *how* we fit a line to the data
		- Didn't calculate a p- value for the fitted line
- A Solution
	- Linear regression fits a line to the data that *minimizes* the Sum of the Squared Residuals (SSR)
	- Once the line is fit, we can calculate the $R^2$, which gives us a sense of how accurate our predictions are
	- Linear regression provides us with a p- value for the $R^2$, which gives us a sense of how *confident* we should be that the predictions made with the **fitted line** are better than predictions made with the **mean** of the y- axis of the data
- Note
	- Linear regression is the gateway to **linear models**, which goes well beyond fitting simple straight lines to data

## Fitting a Line to Data: Main Ideas 

- We can quantify how bad predictions are by calculating residuals, which are the differences between observed and predicted values, in this case, height
- Different values for a line's y- axis intercept and slope changes the SSR
	- Linear regression selects the line (by extension, its y- axis intercept and slope as well) which produces the minimum SSR

## Fitting a Line to Data: Intuition

- Plotting SSR against the y- axis intercept, we can see that SSR changes for different y- axis intercept values, even if we don't change the slope
	- In cases where the slope isn't changed, the goal of linear regression would be to *find the y- axis* that results in the lowest SSR
- This plot is typically in the form of a parabola, so finding the y- axis that produces the lowest SSR is a simple matter of finding the derivative of the curve and solving where the derivative is equal to 0 (bottom of the curve)
	- Analytical solutions and approaches like this are simple, but very hard to find in real life as they're rare and only work in specific environments
- Another way to find an optimal slope and y- axis intercept is to use an iterative method called **gradient descent**
	- The iterative method starts with a *guess* for the value and then goes into a loop that attempts to improve the guess one small step at a time
	- Even though gradient descent takes longer than an analytical solution, it is one of the **most** important tools in machine learning because it can be used in a wide variety of situations (especially situations where an analytical solution is impossible), including **logistic regression** and **neural networks**

## p- values for Linear Regression and $R^2$: Main Ideas

- Assume the following:
	- $SSR(fitted) = .55$$ `--> Predicted`
	- $SSR(mean) = 1.61$$ `--> Observed`
	- $R^2 = \frac{SSR(mean) - SSR(fitted))}{SSR(mean)}$
		- $R^2 = .66$
- $R^2 = .66$ suggests that using weight to predict height *may* be useful, so we need to calculate the p- value to make sure this is statistically significant
	- p- value will tell us the probability that random data could result in a similar $R^2$ value or better
- Assume that we got a p- value of .1, which means that there's a **10%** chance that random data could give us an $R^2$ greater than .66
	- This is a relatively high p- value, so we may not have much confidence in our predictions, which is not surprising since our example only have 5 data points to begin with

## Multiple Linear Regression: Main Ideas

- All the examples that were shown so far were examples of simple linear regression (SLR) because only one variable was used to predict another
- Multiple linear regression is where we use 2 or more variables to predict another variable
	- For example, we can use weight and shoe size to predict height
	- This will result in us plotting a *plane* rather than a line to the data since we end up with a 3- dimensional graph
	- $R^2 = \frac{SSR(mean) - SSR(fitted \: plane)}{SSR(mean)}$

## Beyond Linear Regression

- Linear models allow us to use discrete data to predict something continuous
	- They also allows us to *combine* discrete data with continuous data to predict continuous results as well