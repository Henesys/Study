# Chapter 5: Gradient Descent

#machine_learning 

## Gradient Descent: Main Ideas

- The Problem
	- A major portion of machine learning is dedicated to optimizing a model's fit to the data, which can be done with an analytical solution
		- There are cases where analytical solutions do not work 
			- e.g. Logistic Regression, Neural Networks
- A Solution
	- **Gradient descent** is an *iterative* solution that **incrementally** steps towards an optimal solution and is widely used today
	- Gradient descent starts with an initial guess and improves the guess one step at a time until it finds an optimal solution or reaches the predefined maximum number of steps 

## Gradient Descent: Details (Part 1)

- Note
	- The height vs. weight example that was used earlier has an analytical solution but gradient descent can still be used to estimate the intercept and slope of the line of best fit to minimize the Sum of the Squared Residuals (SSR)
	- The analytical solution for the *slope* was **.64** and the following steps will showcase how gradient descent optimizes the *intercept* and later, it will demonstrate how it optimizes both the intercept *and* slope at the same time

## Gradient Descent: Details (Part 2)

- In the height vs. weight example, we're fitting a line of best fit to the data and we can evaluate how well the line fits with the SSR
	- $Residual = Observed - Predicted$
		- $= (Height - (Intercept + .64 * Weight))$
	- Calculate the residuals for the **3** data points
		- $(Height_{i}, Weight_{i})$ 
		
## Gradient Descent: Details (Part 3)

- In the first example, we're only optimizing the y- intercept after knowing the slope (.64)
	- We assign a random value to the y- intercept
		- e.g. Initialize the y- intercept with a value of **0**
	- $Height = 0 + .64 * Weight$
- $SSR = \sum_{i=1}^{3} (Height_{i} - (Intercept + .64 * Weight_{i})^2$ 
	- $= \sum_{i=1}^{3} (Height_{i} - (0 + .64 * Weight_{i})^2$ 
- Plug in the observed $Height$ and $Weight$ values for each datapoint
	- $SSR = 3.1$, when  the y- intercept was set to **0**

## Gradient Descent: Details (Part 4)

- The goal is to *minimize* the SSR using a **loss function**
	- In gradient descent, we minimize the loss function by approaching the optimal value from the initial guess
		- In our example, as we *increase* the intercept, the SSR *decreases*
	- We plot the SSR as a *function* of the y- axis intercept, meaning the SSR equation from above corresponds to the curve on a graph that has the **SSR** on the y- axis and the **intercept** on the x- axis
- Note
	- **Loss function** refer to anything we want to optimize when we fit a model to data
		- In some cases, the **loss function** specifically refers to a function (like the SSR) applied to a *single* data point and use the term **cost function** to specifically refer to a function that is applied to *all* of the data
		- The terms are generally used interchangeably but be aware that some choose to use it in specific instances

## Gradient Descent: Details (Part 5)

- Since we started with **0** for the y- axis, we need to determine how many steps we should take towards the optimal intercept that gives us the lowest SSR and how do determine when we've overstepped in our iteration
	- To determine our bounds, we can simply use the derivative of the curve plotted on the graph with the intercept on the x- axis and the SSR on the y- axis
		- A large value for the derivative suggests that we're far away from the curve, suggesting that we need to take a relatively large step
		- A relatively small value for the derivative suggests that we're close to the bottom (minima) of the curve, suggesting that we need to take a relatively small step
		- A negative value for the derivative suggests that we need to take a step to the *right* to get closer to the minimum SSR
		- Conversely, a positive value suggests that we need to take a step to the *left*
	- In conclusion, the derivative tells us the direction that we need to move on the curve to reach the minima
		

## Gradient Descent: Details (Part 6)

- Since the SSR is essentially a chain of residuals, you can use the Chain Rule to take the derivative of the SSR
	- $SSR = (Residual)^2$
		- Derivative of the SSR with respect to the intercept:
			- $\frac{\delta SSR}{\delta intercept} = \frac{\delta SSR}{\delta Residual} * \frac{\delta Residual}{\delta intercept}$
		- From here, we can use the Power Rule to solve for the two derivatives
			- $\frac{\delta SSR}{\delta Residual} = \frac{\delta}{\delta Residual} * (Residual)^2$
			- $= 2 * Residual * -1$
		- **Final** derivative of the SSR with respect to the intercept:
			- $= -2 * (Height - (intercept + .64 * Weight))$

## Gradient Descent: Details (Part 7)

- Note that the above is a derivative of the SSR for a *single* observation
	- In our example, we have three observations so the SSR and its corresponding derivative has *three* terms as well
- Note
	- Again, note that this height vs. weight example has an analytical solution and all we'd need to do is just set the derivative equal to **0** and solve for the intercept

## Terminology: Parameters

- The steps we've taken above are a crude demonstration of **parameter tuning**
	- In our case, the y- intercept that we're trying to optimize is a parameter
	- If we were to optimize both the y- intercept and the slope simultaneously, both would be considered parameters as well

## Gradient Descent for One Parameter: Step- by- Step

- X