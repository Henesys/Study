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

- Parameters & Features
	- Example
		- $\overrightarrow{w} = [w_1, w_2, w_3]$
		- $\overrightarrow{x} = [x_1, x_2, x_3]$
		- $n = 3$
		- $b$ is a number
	- Code Example (`NumPy`)
		- `w = np.array([1, 2, 3])`
		- `b = 4`
		- `x = np.array([10, 20, 30])`
- Without Vectorization
	- $f_{\overrightarrow{w}, b}(\overrightarrow{x}) = w_1x_1 + w_2x_2 + w_3x_3 + b$
	- `f = w[0] * x[0] + w[1] * x[1] + w[2] * x[2] + b`
- Without Vectorization (Formula Version)
	- $f_{\overrightarrow{w}, b}(\overrightarrow{x}) = \sum_{j = 1}^ n w_jx_j + b$
	- `f = 0`
	- `for j in range(0, n): f = f + w[j] * x[j]`
	- `f = f + b`
- With Vectorization
	- $f_{\overrightarrow{w}, b}(\overrightarrow{x}) = \overrightarrow{w} \cdot \overrightarrow{x} + b$
	- `f = np.dot(w, x) + b`
		- Code is shorter and will run much faster than previous implementations since `np.dot` will be running with **parallel hardware**

### Vectorization (Part 2)

- Without Vectorization
	- `for j in range(0, 16): f = f + w[j] * x[j]`
	- Code is run sequentially, a total of 15 times
- With Vectorization
	- `np.dot(w, x)`
	- Code multiplies all `w[n]` with `x[n]` simultaneously in parallel and adds them all efficiently
	- This efficiency is the hallmark of vectorization and is the main reason why it is used to scale to large datasets
- Example: Gradient Descent & Multiple Linear Regression
	- Parameters
		- $\overrightarrow{w} = [w_1, w_2, w_3 ... w_{16}]$
		- $\overrightarrow{d} = [d_1, d_2, d_3 ... d_{16}]$, derivatives
		- $b$
	- Code Representation
		- `w = np.array([1, 2, 3 ... 16])`
		- `d = np.array([10, 20, 30 ... 160])`
	- Goal
		- Compute $w_j = w_j - \alpha d_j$ for $j = 1 ... 16$
	- Without Vectorization
		- $w_1 = w_1 - .1d_1$
			- Repeated 16 times
		- `for j in range(0, 16): w[j] = w[j] - .1 * d[j]`
	- With Vectorization
		- $\overrightarrow{w} = \overrightarrow[w] - .1\overrightarrow{d}$
		- `w = w - .1 * d`

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