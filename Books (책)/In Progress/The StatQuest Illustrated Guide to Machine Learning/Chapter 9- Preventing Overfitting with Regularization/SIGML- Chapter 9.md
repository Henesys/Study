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

- "Can ridge regularization ever make things worse?"
	- In theory, as long as you try setting $\lambda = 0$, when you're searching for the best value for $\lambda$, ridge regularization can never perform worse than finding the line that minimizes the SSR
- "How do we find the optimal parameters using ridge regularization?"
	- When we only have one slope to optimize, one way to find the line that minimizes both the SSR and the ridge penalty is to use **gradient descent**
	- However, as we progress to more and more complicated models or for **lasso regularization (least absolute shrinkage and selection operator)** tasks, we have to use **regularization paths** to determine the optimal parameters

## Lasso/ Absolute Value/ L1 Regularization: Details (Part 1)

- Lasso Regularization (Least Absolute Shrinkage and Selection Operator)
	- Alternate Names
		- L1 Regularization
		- Absolute Value Regularization
		- Manhattan Distance
	- Replaces the square used in the **ridge penalty** with the **absolute value**
		- $\text{Lasso Penalty} = SSR + \lambda * |slope|$
- Example
	- Line 1 is a line that fits the training data perfectly
		- $\text{Lasso Penalty} = 0 + 1 * |1.3| = 1.3$
		- Lasso score for line 1 is **1.3**
	- Line 2 is a line that does *not* fit the training data perfectly
		- $\text{Lasso Penalty} = .4 + 1 * |.6| = 1.0$
		- Lasso score for line 2 is **1.0**
	- Conclusion
		- Since $1.0 < 1.3$, we pick line 2

## Lasso/ Absolute Value/ L1 Regularization: Details (Part 2)

- The difference between ridge and lasso regularization is that ridge regularization can *only* shrink the parameters to be *asymptotically close* to **0**
	- Lasso regularization **can** shrink parameters to **0**
- Example
	- In our previous example using ridge regularization, we were able to mitigate the role of color in predicting someone's height, but was **unable to completely get rid of its influence**
	- Lasso regularization can make the slope of the color variable equal **0**, resulting in a model that simply doesn't include color in its prediction of height
- Notes
	- Lasso regularization tends to work better when there are extraneous variables that have little impact on predicting an outcome
	- Ridge regularization works better when most of the variables being used in the model are useful
	- Ridge and lasso regularization are frequently combined together to address each other's shortcomings

## Ridge vs. Lasso Regularization: Details (Part 1)

- Breakdown of why lasso regularization can set parameter values to **0** and why ridge regularization cannot
	- Plot ridge score and corresponding slope of the horizontal line (**0**) on a graph that has $SSR + \lambda * slope^2$ on the y- axis and the slope on the x- axis

## Ridge vs. Lasso Regularization: Details (Part 2)

- Increase the slope, set $\lambda = 0$ and plot
- Repeat until we get a curve on the graph where $SSR + \lambda * slope^2$ is on the y- axis and the slope on the x- axis

## Ridge vs. Lasso Regularization: Details (Part 3)

- Assume that the value for the slope that minimizes the ridge penalty is **.4**
- Now calculate the $SSR + \lambda * slope^2$ again but with $\lambda = 10$
- Overlaying this graph over the previous curve and assume that we can see that the slope that minimizes this particular ridge penalty is slight **less than .4**

## Ridge vs. Lasso Regularization: Details (Part 4)

- The comparison between the first and second plots will reveal that an increase in $\lambda$ will result in an increase in the ridge penalty, resulting in a smaller slope
	- The plot with a larger $\lambda$ has a minimum whose slope value is closer to **0**
- We can start experimenting with larger and larger $\lambda$ values and overlay the plots on the same graph that was used earlier

## Ridge vs. Lasso Regularization: Details (Part 5)

- Notes
	- When we calculate $SSR + \lambda + slope^2$, we get curves for different values for the slope
	- As we increase the $\lambda$, the lowest point in the curve corresponds to a slope value *closer* to **0**, but not quite **0** (asymptotic relationship)
- Next, we'll try the same process, but with **lasso penalty** instead of **ridge penalty**

## Ridge vs. Lasso Regularization: Details (Part 6)

- We plot points on a graph with $SSR + \lambda * |slope|$ on the y- axis and the slope values on the x- axis
- Repeated overlays on the graph reveals that at $slope = 0$, there's a "dent" that appears the curve that becomes more and more prominent as $\lambda$ increases
- Eventually, $\lambda$ reaches a certain point where the dent itself becomes the minimum of the curve, which is also the point where the slope value is **0**
	- This confirms the fact that lasso regularization can indeed reach a value of **0** in a parameter that's being optimized

## Ridge vs. Lasso Regularization: Details (Part 7)

- Notes
	- When we increase the $\lambda$ for ridge regularization, the optimal value of the slope shifts *towards* **0** without every reaching it while maintaining a **parabolic shape**
		- The optimal slope is *never* **0** itself
	- In contrast, when we increase the lasso penalty (absolute value, L1 penalty), the optimal value for the slope shifts *towards* **0** and eventually reaches it by creating a **dent**
		- **0** ends up being the optimal slope