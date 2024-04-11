# SML- Week 2: Regression w/ Multiple Input Variables

#machine_learning 

## Multiple Linear Regression

### Multiple Features

- Our earlier examples used the size in $feet^2$ to predict the price of a house in $1000's
	- Now we'll be using *multiple* variables such as the number of bedrooms, number of floor and age of the house in years to determine the price of the house in $1000's
- Notation
	- $x_j$, the $j^{th}$ feature
	- $n$, the number of features
	- $x^i$, features of the $i^{th}$ training example (vector)
	- $x_j^i$, value of feature $j$ in the $i^{th}$ training example
- Upgraded Model
	- $f_{w, b}(x) = \sum_{i} w_i x_i + b$
	- Technically $\overrightarrow{w} = [w_1, w_2 ... w_i]$ and $\overrightarrow{x} = [x_1, x_2 ... x_i]$
		- This means that we can treat these parameters as vectors and optimize the model as such:
			- $f_{\overrightarrow{w}, b}(\overrightarrow{x}) = \overrightarrow{w} \cdot \overrightarrow{x} + b$
			- A dot product of $\overrightarrow{w}$ and $\overrightarrow{x}$
- This model is an example of **multiple linear regression**, not to be confused with *multivariate regression*
	- Multiple linear regression involves a **single** dependent variable with multiple independent variables
	- Multivariate regression involves **multiple** dependent variables *and* multiple independent variables

### Vectorization (Part 1)

- X

### Vectorization (Part 2)
- X

### Gradient Descent for Multiple Linear Regression

- X

## Gradient Descent in Practice

### Feature Scaling (Part 1)

- X

### Feature Scaling (Part 2)

- X

### Checking Gradient Descent for Convergence

- X

### Choosing the Learning Rate

- X

### Feature Engineering

- X

### Polynomial Regression

- X