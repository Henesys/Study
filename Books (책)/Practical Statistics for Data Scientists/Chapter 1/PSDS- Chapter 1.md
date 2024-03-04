# Chapter 1: Exploratory Data Analysis

#data_science #statistics 

## Elements of Structured Data

- Information Age
	- We live in an age where data comes from many sources
		- Internet of Things (IoT)
			- Emits streams of information, much of it is unstructured
			- Images --> Pixels --> RGB values
			- Text --> Sequences of words and nonword characters
			- Clickstreams --> Sequences of actions by a user
	- One of the fundamental challenges of data science is harnessing the torrent of raw information into actionable information
		- Unstructured raw data must be processed and manipulated into a structured format for it to be useful (generally speaking)
- Numeric vs. Categorical
	- Numeric
		- *Continuous*
			- Can take any value in an interval
			- e.g. wind speed, time duration
		- *Discrete*
			- Can only take integer values, such as counts
			- e.g. count of the occurrence of an event
	- Categorical
		- Can only take a specific set of values representing a set of possible categories
		- *Binary*
			- Type of categorical data that takes one of two values
		- *Ordinal*
			- Categories are ordered
			- e.g. ratings from 1 to 5
## Rectangular Data

- Rectangular Data
	- General term for a two- dimensional matrix with rows indicating records (cases) and columns indicating features (variables)
	- Data in relational DBs must be extracted and put into a single table for most data analysis and modeling tasks

### Data Frames and Indexes

- Using Python, in conjunction with `pandas`, the basic rectangular structure is a `DataFrame` object
	- By default, an automatic integer index is created for a DF based on the order of the rows
	- In `pandas`, it's possible to also set hierarchical indices to improve efficiencies of certain processes
- In R, the basic rectangular structure is a `data.frame` object
	- `data.frame` has an implicit integer index based on the row order
	- Use the `data.table` and `dplyr` packages to enhance the functionalities that base R does not provide (e.g. multilevel indices)

### Nonrectangular Data Structures

- Time Series Data
	- Key component of statistical forecasting and is prevalent in IoT tasks
	- Data is outputted as a stream rather than being chunked into rows and columns
- Spatial Data
	- Prevalent in mapping and location analytics
		- *Object* Representation
		- *Field* View
- Graph (Network) Data
	- Represents physical, social and abstract relationships
	- Used in network optimization tasks and recommender systems

## Estimates of Location

- Basic Terminology (a.k.a. LaTeX practice)
	- Mean
		- $\frac{\sum All \: Values}{Number \: of \: Values}$  
	- Weighted Mean
		- $\frac{\sum All \: Values}{\sum Weights}$
	- Trimmed Mean
		- Average of all values *after* dropping a fixed number of outliers
	- Median
		- `50%- ile`
	- Percentile
		- *Value such that `P` percent of the data lies below*
	- Robust
		- Not sensitive or resistant to extreme values (outliers)
### Mean

- Mean for a set of $n$ values $x_1, x_2 ... x_n$
	- $Mean = \bar x = \frac{\sum_{i = 1}^{n} x_i}{n}$
	- $n$ refers to the total number of records or observations
		- It is capitalized when referring to a population,  lowercase if it is referring to a sample from a population
- Trimmed mean for a set of sorted values $x_{1}, x_{2} ... x_{n}$, where $x_{1}$ is the smallest value and $p$ smallest and largest values were trimmed
	- $Trimmed \: Mean = \bar x = \frac{\sum_{i = p + 1}^{n - p} x_{i}}{n - 2p}$ 
- Weighted mean, which is calculated by multiplying each data value by $x_{i}$ by a specified weight $w_{i}$ and dividing the sum by the sum of the weights
	- $Weighted \: Mean = \bar x_{w} = \frac{\sum_{i = 1}^{n} w_{i}x_{i}}{\sum_{i = 1}^{n} w_{i}}$ 
	- Weights allow us to give more importance to intrinsically variable values and allow us to correct under/ over representations in the data

### Median and Robust Estimates

- Median
	- Less resistant to outliers than mean
	- It is possible to compute a *weighted median*
		- Sort the data, each value will have an associated weight
		- Weighted median is the value such that the sum of the weights is equal for upper and lower halves of the sorted list
			- Also robust to outliers compared to the mean
- Outliers
	- Outliers should be identified and are usually worthy of further investigation before you choose to get rid of them properly
	- *Anomaly Detection*
		- Field that focuses points of interest in outliers 
		- Larger volumes of data primarily serve as a way to define "normal" data and distinguish it from anomalies

### Example: Location Estimates of Population and Murder Rates

## Estimates of Variability

- Basic Terminology
	- Variability 
		- a.k.a. **Dispersion**
		- Measures whether the data values are tightly clustered or not
	- Variance
		- Sum of squared deviations from the mean divided by $n - 1$, where $n$ is the number of data values
		- $Variance (\sigma^2) = \frac{1}{N} \sum_{i=1}^{N} (x_i - \mu)^2$
	- Standard Deviation
		- Square root of the variance
	- Mean Absolute Deviation (MAD)
		- a.k.a. **L1 Norm**, **Manhattan Distance**, Taxicab Norm
		- Mean of the absolute values of the deviations from the mean
		- $MAD = \frac{1}{N} \sum_{i=1}^{N} |x_i - \mu|$

### Standard Deviation and Related Estimates

- Variance
	- $Variance = \sigma ^2 = \frac{1}{N-1} \sum_{i=1}^{N} (x_i - \bar{x})^2$ 
- Standard Deviation
	- $Standard \: Deviation = \sigma = \sqrt{\text{Variance}}$
- Degrees of Freedom
	- Biased Estimate
		- $N$ as degrees of freedom
		- Represents total number of observations in the dataset
	- Unbiased Estimate
		- $N - 1$ as degrees of freedom
		- Represents sample of the population in the dataset
	- Explanation
		- Using $N$ in the denominator tends to underestimate the population variance
		- Dividing by $N - 1$ provides an unbiased estimator of the population variance
			- Increases the degrees of freedom by 1
			- Reduces bias, especially in smaller samples
- MAD
	- MAD is oftentimes multiplied by a constant scaling factor $k$
		- $k$ is a value related to the inverse of a quantile of the standard normal distribution at a specific level of significance
	- Example
		- $k$ is commonly used to correspond to the $.6745$ quantile of the normal distribution
		- Approximation of the standard deviation of a normal distribution with a 95% CI
			- $k = 1.4826$, which corresponds to MAD being multiplied $\frac{1}{.6745}$
			- This means that the 50% of the normal distribution falls within the range of $\pm MAD$

### Estimates Based on Percentiles

- Interquartile Range (IQR)
	- Difference between the 25th percentile and the 75th percentile
	- Can be very computationally expensive to calculate in larger datasets
		- [Algorithms](https://www.semanticscholar.org/paper/A-Fast-Algorithm-for-Approximate-Quantiles-in-High-Zhang-Wang/03a0f978de91f70249dc39de75e8958c49df4583) designed to calculate approximate percentile for machine learning purposes have been developed
- Percentile
	- Weighted average for some weight $w$ between 0 and 1
	- $Percentile(P) = (1 - w)x_{(j)} + wx_{(j+1)}$ 
	- Note that different software have different approaches to choosing $w$, as an example, Python's `numpy.quantile` supports 5 different approaches with linear interpolation being the default 

### Example: Variability Estimates of State Population

## Exploring the Data Distribution

- Basic Terminology
	- Density Plot
		- Smoothed version of the histogram, often based on a kernel density estimate

### Percentiles and Boxplots

- By default, the R function extends the whiskers to the furthest point beyond the box, except that **it will not go beyond 1.5 times the IQR (Interquartile Range)**
	- `Matplotlib` uses this same policy

### Frequency Tables and Histograms

- Frequency tables and percentiles summarize the data by creating bins
	- Quartiles and deciles will have the same count in each bin, but the size of the bins will be different
	- In frequency tables, there will be different counts in the bins, but the size of the bins will be equal
- In statistical theory, location and variability are referred to as the 1st and 2nd *moments* of a distribution
	- The 3rd and 4th *moments* of a distribution are called *skewness* and *kurtosis* respectively
		- Skewness
			- Refers to whether the data is skewed to larger or smaller values
		- Kurtosis
			- Indicates the propensity of the data to have extreme (outlier) values

### Density Plots and Estimates

- Density Plot
	- Can be thought of as a smoothed histogram, although it is computed directly via a *kernel density estimate*
	- Unlike a histogram, a density plot corresponds to plotting the histogram as a proportion rather than counts
	- Area under the curve of a density plot is 1
		- Instead of counts in bins, the area under the curve between two points of the x- axis correspond to the proportion of the distribution
- Density Estimation
	- R
		- `ASH`
		- `KernSmooth`
	- Python
		- `pandas`
		- `scikit-learn`

## Exploring Binary and Categorical Data

### Mode

- Simple summary statistic for categorical data, but is generally not used for numeric data

### Expected Value

- Expected Value
	- Form of weighted mean, in which the weights serve as probabilities
	- Calculation
		- Multiple outcome by its probability of occurrence
		- Sum of these values

### Probability

- Probability
	- Simple Explanation: Proportion of time an event will occur if the situation could be repeated infinitely

## Correlation

- Correlation Coefficient
	- Estimate of the correlation between two variables that always lie on the same scale
- Pearson's Correlation Coefficient
	- Calculation
		- Multiply deviations from the mean from `Variable 1` times those for `Variable 2` and divide by the product of the standard deviations
	- In Practice
		- $r = \frac{{\sum (x_i - \bar{x})(y_i - \bar{y})}}{{\sqrt{{\sum (x_i - \bar{x})^2}} \sqrt{{\sum (y_i - \bar{y})^2}}}}$
		- $r = \frac{{\sum (x_i - \bar{x})(y_i - \bar{y})}}{{\sqrt{{\sum (x_i - \bar{x})^2 / (n-1)}} \sqrt{{\sum (y_i - \bar{y})^2 / (n-1)}}}}$
		- $r = \frac{{\sum (x_i - \bar{x})(y_i - \bar{y})}}{(n - 1){s_x s_y}}$
			- $s_x$ and $s_y$ denote sample standard deviations of x and y respectively
	- Interpretation
		- `+1`: perfect positive correlation
		- `-1`: perfect negative correlation
		- `0`: no correlation
	- For nonlinear relationships or dependencies, the correlation coefficient may not be as useful
		- Additionally, correlation does not imply causation and only implies the degree of *linear association* between variables
- Correlation Matrix
	- R
		- `corrplot`
	- Python
		- `seaborn.heatmap` (no implementations in common packages)
- Other Correlation Estimates
	- Rank- based estimates are mostly used for small datasets and specific hypothesis testing
	- These two correlation coefficients still measure the association between variables, but particularly for relationships that are not necessarily linear
		- Spearman's Rank Correlation Coefficient ($\rho$)
			- **Non- parametric** measure of correlation that assesses how well the relationship between two variables can be described using a **monotonic** function
			- Calculation
				- Rank values of each variable
				- Compute Pearson's on the ranked variables
			- In Practice
				- $\rho = 1 - \frac{{6 \sum d_i^2}}{{n(n^2 - 1)}}$
			- Interpretation
				- $\rho = 1$ : perfect monotonic relationship
					- As one variable increases, the other variable increases monotonically
				- $\rho = -1$: perfect negative monotonic relationship
					- As one variable increases, the other variable decreases monotonically
				- $\rho = 0$: no monotonic relationship
			- Robust to outliers and does not assume that the relationship between variables is linear
		- Kendall's Rank Correlation Coefficient ($\tau$)
			- **Non- parametric** measure of correlation that assesses the *strength* and *direction* of the **ordinal association** between two variables
			- Calculation
				- Difference between number of concordant and discordant pairs of observations
			- In Practice
				- $\tau = \frac{{\text{Number of Concordant Pairs} - \text{Number of Discordant Pairs}}}{{\frac{1}{2} n (n - 1)}}$
			- Interpretation
				- $\tau = 1$: perfect positive rank correlation
					- All pairs of observations are **concordant**
					- Pairs increase and decrease together
				- $\tau = -1$: indicates a perfect negative rank correlation
					- All pairs of observations are **discordant**
					- Pairs do not increase and decrease together
				- $\tau = 0$: no association between ranks of variables
			- Used for ordinal data or when the assumptions of linearity or normality are not met
			- Robust to outliers and does not rely on the assumption of linearity

### Scatterplots

- R
	- `plot`
- Python
	- `pandas scatter`

## Exploring Two or More Variables

- Univariate Analysis
	- Using estimators such as mean and variance to analyze variables one at a time
- Bivariate Analysis
	- Using methods such as correlation analysis to compare two variables
- Multivariate Analysis
	- Using additional estimates and plots to observe more than two variables

### Hexagonal Binning and Contours (Plotting Numeric vs Numeric Data)

- 

### Two Categorical Variables

- 

### Categorical and Numeric Data

- 

### Visualizing Multiple Variables

- 

## Summary

- 