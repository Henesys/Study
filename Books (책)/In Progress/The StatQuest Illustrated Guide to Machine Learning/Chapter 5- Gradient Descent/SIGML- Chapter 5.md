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
			- $\frac{d SSR}{d intercept} = \frac{d SSR}{d Residual} * \frac{d Residual}{d intercept}$
		- From here, we can use the Power Rule to solve for the two derivatives
			- $\frac{d SSR}{d Residual} = \frac{d}{d Residual} * (Residual)^2$
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

## Gradient Descent for One Parameter: Step- by- Step (Part 1)

- The SSR is the loss function and we will be plugging in the **observed** values into its derivative
	- The observed **weight** and **height** measurements will be inputted into the derivative of the SSR
	- $\frac{d SSR}{d intercept} = -2 \times (Height - (intercept + .64 * Weight))$
- Initialize the parameter we want to optimize with a random value (e.g. **0**)
	- We're trying to optimize the y- intercept in this example, so we set the intercept to **0**

## Gradient Descent for One Parameter: Step- by- Step (Part 2)

- Evaluate the derivative at the *current value* of the intercept, which is **0**
	- $\frac{d SSR}{d intercept} = -5.7$
	- When the intercept is **0**, the slope of the tangential line of the curve is **-5.7**
- Step Size
	- $\text{Step Size} = Derivative \times \text{Learning Rate}$
		- $= -5.7 \times .1 = -.57$
- Note
	- The magnitude of the derivative for the step size is proportional to how large of a step we need to take towards the minimum (optimized) value
	- The **learning rate** ensures that we don't *overstep* and miss the lowest point in the curve
		- Generally for gradient descent, learning rate is determined automatically and gradually becomes smaller with every step
		- A **cross validation** test can be done to determine a good value for the learning rate
			- For the purpose of this example, the learning rate is **.1**
- Take a step from the initial intercept to get closer to the minimum value
	- $\text{New Intercept} = \text{Current Intercept} - \text{Step Size}$
		- $= .57$
	- The new intercept with be a better fit to the data and will result in a lower SSR

## Gradient Descent for One Parameter: Step- by- Step (Part 3)

- Iterations of the previous steps will eventually result in the step size approaching **0** or the iterations will stop once it reaches the maximum number of steps, which is typically **1,000** iterations
	- The Iteration
		- Evaluate derivative of SSR at current intercept
		- Calculate step size
		- Calculate new intercept
	- Note
		- The step size shrinks with every iteration because the tangential line to the curve's slope will not be as steep as its previous iteration and will approach a value of **0** at the minimum

## Gradient Descent for One Parameter: Step- by- Step (Part 4)

- Remember that the height vs. weight example that we used until now *does* have an analytical solution, which was **.95**
- In our gradient descent example, the intercept we got was **.95** as well, which means that gradient descent did a decent job of optimizing the intercept

## Optimizing Two or More Parameters: Details

- We will finally optimize two variables, the *intercept* and the *slope*
	- Optimizing two parameters will result in a 3- dimensional graph of the SSR
	- However, the goal of finding parameter values that will achieve the lowest SSR remains the same
	- Gradient descent will also function the same and initialize both parameters with random values

## Taking Multiple (Partial) Derivatives of the SSR (Part 1)

- $SSR = (Height - (intercept + slope * Weight))^2$
	- Taking the **derivative with respect to the intercept** is the same as before since we can use the Chain Rule to determine how the SSR changes with respect to the intercept
	- An extrapolation of the above equation will result in the following:
		- $\frac{d SSR}{d intercept} = -2 \times (Height - (intercept + slope * Weight))$

## Taking Multiple (Partial) Derivatives of the SSR (Part 2)

- Taking the **derivative with respect to the slope** is similar to the aforementioned process and will result in the following:
	- $\frac{d SSR}{d slope} = -2 \times Weight * (Height - (intercept + slope * Weight))$
- Note
	- A *collection* of derivatives of the **same** function but with respect to **different** parameters is called a **gradient**, which is where gradient descent gets its namesake from
		- We're using the *gradient* to *descend* the SSR curve to obtain the lowest SSR

## Gradient Descent for Two Parameters: Step- by- Step (Part 1)

- Similar to the gradient descent for one parameter example, we will be plugging in the observed **weight** and **height** into the derivatives of the SSR
	- The only difference is that we're now plugging in values to **two** different derivatives since we're dealing with two parameters:
		- $\frac{d SSR}{d intercept} = -2 \times (Height - (intercept + slope * Weight))$
		- $\frac{d SSR}{d slope} = -2 \times Weight * (Height - (intercept + slope * Weight))$

## Gradient Descent for Two Parameters: Step- by- Step (Part 2)

- We initialize the two parameters will random values
	- Here, the intercept will be set to **0** and the slope will be set to **.5**

## Gradient Descent for Two Parameters: Step- by- Step (Part 3)

- Entering those values into the derivatives will result in the following:
	- $\frac{d SSR}{d intercept} = -7.3$
	- $\frac{d SSR}{d slope} = -14.8$
- We need to calculate the step sizes of **both** parameters
	- $\text{Step Size}_{intercept} = Derivative * \text{Learning Rate}$
		- $=-.073$
	- $\text{Step Size}_{slope} = Derivative * \text{Learning Rate}$
		- $=-.148$
- We take a step from the current intercept and slope to their new values:
	- $\text{New Intercept} = \text{Current Intercept} - \text{Step Size}_{Intercept}$
		- $=.073$
	- $\text{New Slope} = \text{Current Slope} - \text{Step Size}_{Slope}$
		- $=.648$
	- Results
		- The intercept increases from **0** to **.073**
		- The slope increases from **.5** to **.648**
- Note
	- Learning rate is determined automatically, but note that learning rate will oftentimes be less than **.01** because the gradient descent can be very sensitive

## Gradient Descent for Two Parameters: Step- by- Step (Part 4)

- After multiple iterations of the gradient descent process, we stop when the step size is close to **0**, with $intercept = .95$ and $slope = .64$ at the lowest SSR
- Note
	- Instead of using gradient descent, if we set the derivatives to **0** and simply solved for the intercept and slope, we would've gotten these values as well
	- This suggests that gradient descent did do a good job and we can be confident in its applications in logistic regression and neural networks, where analytical solutions do not exist

## Stochastic Gradient Descent: Main Ideas

- All of our examples thus far had limited amounts of data points, parameters and derivatives
	- "What if we had **1,000,000** data points?"
		- **1,000,000** terms per derivative
	- "What if we had **10,000** parameters?"
		- **10,000** derivatives
	- Simply put, the more complicated the model becomes, the slower gradient descent becomes as well
		- This is especially true if you try to use gradient descent in big data domains
- Stochastic Gradient Descent (SGD)
	- **Stochastic gradient descent** can reduce the amount of computation required to optimize parameters
		- **Stochastic** means "randomly determined" and stochastic gradient descent randomly selects **one** data point per step regardless of how large your dataset is
			- Therefore, only **one** term is computed per derivative for *each* iteration

## Stochastic Gradient Descent: Details (Part 1)

- We'll revisit the height vs. weight example with **3** data points
	- Just like "normal" gradient descent we start by initializing the intercept and slope with random values, **but** we'll also select one point and evaluate derivatives using that point
		- $\frac{d SSR}{d intercept} = -2 * (Height - (intercept + slope * Weight))$
		- $\frac{d SSR}{d slope} = -2 * Weight * (Height - (intercept + slope * Weight))$
	- Proceed calculating step sizes and calculating the new values of the parameters with each iteration as usual

## Stochastic Gradient Descent: Details (Part 2)

- After the new values of the parameters have been calculated, the iteration starts again beginning with the selection of a random point
- Note
	- Technically, SGD states that we select a single point per iteration but in practice, a small subset of observations called **mini- batches** are randomly selected
		- This particular practice is called mini- batch stochastic gradient descent
		- Using this subset rather than a single point, usually converges on the optimal values in fewer steps and in less time than using the entire data
	- It *is* possible for the selected data point to be selected more than once, especially in cases where the dataset is small compared to the number of iterations or when random sampling is done *without* replacement
		- However, this particular probability becomes relatively negligible when working with larger datasets and many variations of SGD perform random sampling without replacement to ensure each data point gets selected only once per epoch 

## Gradient Descent: FAQ

- "Will gradient descent **always** find the best parameter values?"
	- No, one of gradient descent's biggest flaws is that the algorithm might get stuck at a **local** minimum instead of finding the **global** minimum
	- This is a common issue, especially when we have many parameters, making it impossible to graph the SSR in the first place
	- The best thing we can do is try using different random numbers to initialize the parameters that we want to optimize so as to avoid a local minimum or try adjusting the step size so that we can step "over" the local minimum
	- If the above does not work, we can attempt to use SGD since its randomness can help us with avoiding local minimum traps
- "How do you choose the size of a mini- batch for SGD?"
	- It depends on your hardware
		- If you have a lot of high- speed memory dedicated to your model, you can afford to have a larger mini- batch