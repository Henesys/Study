# Chapter 3: Fundamental Concepts in Statistics

#machine_learning 

## Statistics: Main Ideas

- The Problem
	- In the real world, not everything is uniform
- A Solution
	- Statistics provides us a set of tools to quantify the variation that we find in everything
	- For the purposes of machine learning, it helps us make predictions & quantify how confident (confidence interval, statistical significance) we are in those predictors

## Histograms: Main Ideas

- The Problem
	- We have a lot of measurements and want to gain insights into their hidden trends
		- Sometimes these limitations arise from the method in which the data was plotted (e.g. data point overlap, visualization distortion)
- A Solution
	- Histograms are a useful tool we can use to gain a complete view of our data
		- Instead of stacking measurements that are identical, we divide the range of the values into bins and stack the measurements that fall in the same bin
		- This makes it easy to see trends in the data

## Histograms: Details

- The taller the stack within a bin, the more measurements (data points) we have in that bin
	- Using the histogram, we can estimate the probability of getting future measurements within a certain range
- Note
	- Defining a bin range can be troublesome at times, you may need to experiment with the size to get meaningful insights into the data
	- Histograms will be used to make classifications with an algorithm called Naive Bayes

## Histograms: Calculating Probabilities

- Estimation of the probability within a certain range/ bin is straightforward
	- $\frac{Number \: of \: Observations \: in \: Range}{Total \: Number \: of \: Observations}$ 
	- Note that this confidence you have in this probability will heavily depend on the number of measurements within the histogram itself

## Probability Distributions: Main Ideas

- The Problem
	- If the dataset is small, the histogram isn't very useful to us for probability estimation tasks
	- Conversely, collecting more data to make precise probability estimates is too time- consuming and expensive
- A Solution
	- Use a probability distribution to *approximate* a histogram
	- Area *under* the curve of a probability distribution tells us about the probability of a future data point lying in that range
- Note
	- Since we can deal with discrete and continuous data, we can also use discrete and continuous probability distributions to gain insight

## Discrete Probability Distributions: Main Ideas

- The Problem
	- Histograms are *technically* discrete distributions since the data has been split into discrete bins and can be used to estimate probabilities
	- However, it requires a sizeable amount of data and it isn't always clear what someone should do with the lack of data within bins
- A Solution
	- Instead of collecting more data to fill in any potential holes within the histogram, we can use specialized formulae that can calculate probabilities within a range irrespective of the data's status within that range
- Binomial Distribution
	- Formula
		- $p(x | n, p) = \frac{n!}{x! (n-x)!} p^x (1-p)^{n-x}$
	- Alternative Formula
		- $P(X = k) = \binom{n}{k} p^k (1-p)^{n-k}$
			- $P(X = k)$, probability of observing $k$ successes in $n$ trials
			- $\binom{n}{k}$, binomial coefficient ("$n$ choose $k$")
			- $p$, probability of success in each Bernoulli trial
			- $(1 - p)$, probability of failure in each Bernoulli trial
			- $k$, number of successes

## The Binomial Distribution: Main Ideas (Part 1)

- Example
	- Ask **3** people whether they prefer chocolate or vanilla
		- First **2** people say they prefer chocolate
		- Last person says they prefer vanilla
	- Assume that we have information from a survey that says *70%* of people prefer chocolate and *30%* of people prefer vanilla
	- "What is the probability of observing that the **first 2** people prefer chocolate and the **third** person prefers vanilla?"
		- $.7 * .7 * .3 = .147$ 
		- $.147$ probability of observing that the first 2 people prefer chocolate and the third person prefers vanilla
		- Note that this does **not** mean that 2 out of 3 people prefer chocolate
			- This example isn't dealing with conditional probability

## The Binomial Distribution: Main Ideas (Part 2)

- Even if the first person says they prefer vanilla and the remaining two people say that they prefer chocolate, the probability ($.147$) remains the same
	- Again, note that this example isn't using conditional probability even though the wording is confusing
- Any combination of responses involving two people saying they prefer chocolate and one person saying they prefer vanilla will result in the same probability
	- This means that the probability of observing that **2** out of **3** people prefer chocolate is the **sum** of the **3** possible arrangements of people's flavor preferences
		- $.147 * \text{Number of Combinations} = .147 * 3 = .441$ 

## The Binomial Distribution: Main Ideas (Part 3)

- This calculation is relatively simple for small amounts of data, but when we start to calculate larger and larger scenarios, it will quickly become very complicated
	- This is where binomial distribution comes into play

## The Binomial Distribution: Details (Part 1)

- $p(x | n, p)$
	- $x$, number of people who prefer chocolate
		- $x = 2$
	- $n$, number of people we asked
		- $n = 3$
	- $p$, probability that someone prefers chocolate
		- $p = .7$
	- "The probability that we meet $x = 2$ people who prefer chocolate, given that we ask $n = 3$ people *and* the probability of someone preferring chocolate is $p = .7$"

## The Binomial Distribution: Details (Part 2)

- $\frac{n!}{x! (n-x)!} = 3$
	- Represents the number of different ways we can meet $n =3$ people, **2** of whom prefer chocolate
	- In this example $(n-x)$ represents the number of people who prefer vanilla

## The Binomial Distribution: Details (Part 3)

- $p^x (1-p)^{n-x} = (.7 ^ 2) * (1 - .7) ^ {3 - 2} = .49 * .3 ^ 1 = .49 * .3 = .147$
	- Probability that **2** out of **3** people prefer chocolate 
	- Probability that **1** out of **3** people prefer vanilla

## The Binomial Distribution: Details (Part 4)

- Breakdown:
	- $\text{Number of ways to arrange flavor preferences} \: *$
	- $\text{Probability that 2 people prefer chocolate} \: *$ 
	- $\text{Probability that 1 person prefers vanilla}$ 

## The Poisson Distribution: Details

- Example
	- You can read an *average* of **10** pages per hour
	- You can use the Poisson distribution to calculate the probability that you can read exactly **8** pages in an hour
	- Formula
		- $p(x | \lambda) = \frac{{\lambda^x e^{-\lambda}}}{{x!}}$
		- $\lambda = 10$ pages per hour (average reading speed)
		- $x = 8$ pages per hour (number of pages we think we can read in the next hour)
		- $e = 2.71828$, Euler's number
	- Process
		- $p(x = 8 | \lambda = 10) = \frac{{\lambda^x e^{-\lambda}}}{{x!}} = \frac{{10 ^ 8 e ^ {-10}}}{8!} = .113$
		- Probability that someone will read exactly **8** pages in the next hour, given that on average they read **10** pages per hour is **.113**

## Discrete Probability Distributions: Summary

- Summary
	- Discrete probability distributions can be derived from histograms, but require a sizeable amount of data that can be costly to get and is not always about what to do regarding blank spaces
	- Therefore, for discrete probability distributions, we opt to use statistical equations such as the equation for the binomial distribution instead
		- Binomial distribution is useful for anything that has binary (2) outcomes (e.g. wins vs. losses, yes vs. no)
		- When we have events that happen in discrete units of time or space, we can use the Poisson distribution

## Continuous Probability Distribution: Main Ideas

- The Problem
	- Histograms have two main issues when it comes to continuous data:
		- Gaps in the data aren't always clear cut and they're tricky to deal with
		- Histograms can be sensitive to the size of the bins
			- Extremely wide bins result in loss of precision from a visual perspective
			- Extremely narrow bins result in loss of detail as the trends (if any) are impossible to observe
- A Solution
	- Using a **continuous distribution** allows us to avoid all of these problems by using statistical methods similar to the ones we used for discrete distributions
	- Instead of using a histogram, we can opt to use a *normal distribution*, which create a bell- shaped curve

## The Normal (Gaussian) Distribution: Main Ideas (Part 1)

- Normal (Gaussian) Distribution
	- Bell- shaped curve
	- Symmetrical about the mean
		- Maximum likelihood occurs at its mean
	- `y- axis` represents the *likelihood* of observing an event

## The Normal (Gaussian) Distribution: Main Ideas (Part 2)

- Width of a normal distribution is defined by the standard deviation
	- Normal curves are drawn such that 95% of the measurements fall between 2 standard deviations around the mean

## The Normal (Gaussian) Distribution: Details

- $f(x | \mu, \sigma^2) = \frac{1}{{\sqrt{2\pi\sigma^2}}} \exp\left(-\frac{{(x - \mu)^2}}{{2\sigma^2}}\right)$
	- $f(x | \mu, \sigma^2)$, probability density function of the normal distribution with mean $\mu$ and variance $\sigma ^ 2$
- Example
	- Assume you have a normal distribution of the heights of adults
		- `x- axis` is the heights in cm
		- `y- axis` is the likelihood of an adult being a certain height
		- Assume that the mean is **50**
		- Assume that the standard deviation is **1.5**
	- Process
		- $f(x | \mu, \sigma) = \frac{1}{{\sqrt{2\pi} \sigma}} e^{-\frac{(x - \mu)^2}{2\sigma^2}}$
		- $f(x = 50 | \mu = 50, \sigma = 1.5) = \frac{1}{{\sqrt{2\pi} 1.5}} e^{-\frac{(50 - 50)^2}{2 * 1.5 ^ 2}} = .27$
			- The likelihood for the tallest point (mean) of the normal distribution is **.27**

## Calculating Probabilities with Continuous Probability Distributions: Details

- For continuous probability distributions, the probabilities are the **area under the curve**
	- The total area under the curve is **1**
- Calculation of the Area
	- Calculus (Integration)
		- $\int_{a}^{b} f(x) \, dx$
	- Computer (CDF- Cumulative Distribution Function)
		- $F(x) = P(X \leq x)$
		- CDF tells us the area under the curve *up to* a specific point 
			- Example
				- For a normal distribution with $\mu = 155.7$ and $\sigma = 6.6$, a $CDF(142.5)$ would tell us the area under the curve for *all* `x- axis` values to the left of **and** including $142.5$
				- If we wanted to calculate the area under the normal distribution from $142.5$ to $155.7$, we would simple subtract $CDF(142.5) = .02$ from $.5$, which is simply half the area under the curve to get $.48$
		- Check documentation for `R` or whatever platform you're using for $CDF$ function
- Note
	- Note that the `y- axis` is specifically measuring *likelihoods*, **not** probabilities
		- Meaning, the probability at a specific point is **0**, since there is no "area" under the curve due to the nature of continuous distribution's infinite precision

## Other Continuous Distributions: Main Ideas

- Exponential Distribution
	- Commonly used in scenarios when we're interested in how much *time* passes between events
- Uniform Distribution
	- Commonly used to generate random numbers that are *equally* likely to occur

## Continuous Probability Distributions: Summary

- Similar to discrete distributions, continuous distributions spare us from the pain of having to collect large amounts of data for the histogram and decide the sizes of the bins for the histogram
- Continuous distributions use equations that represent curves and can provide *likelihoods* and probabilities for all possible measurements
- In the context of machine learning, **both** types of distributions allow us to create predictive models 

## Models: Main Ideas (Part 1)

- The Problem
	- We can spend time and money to collect data for a precise histogram, but collecting *all* of the data in the world is usually impossible
- A Solution
	- A statistical, mathematical or machine learning model provides an *approximation* of reality that we can use 
		- A **probability distribution** is a type of model that approximates a histogram with an infinite amount of data
		- A linear relationship (straight line) can model a relationship between the x- axis and the y- axis

## Models: Main Ideas (Part 2)

- Models need training data
	- We build models by *training* machine learning algorithms
- Models can tell us about people we haven't measured yet by predicting the outcome based on inputs
	- Due to the fact that models are only approximations, the ability to measure the *quality* of predictions is critical

## Sum of the Squared Residuals: Main Ideas (Part 1)

- The Problem
	- We need to quantify the quality of the model, as well as its predictions
- A Solution
	- Calculating the **sum of the squared residuals** is one way to quantify the quality of a model and its predictions
	- Residual
		- $\text{Residual} = \text{Observed} - \text{Predicted}$
		- Generally, the smaller the residual, the better the model fits the data
			- Even though its tempting to compare the models by using the sums of their residuals, negative residuals will just cancel out the positive residuals, making this useless
			- This is why we compare using the sum of the *squared* residuals
				- Note that we want to *square* instead of taking the *absolute value* because it makes it easier to derive, which comes in handy when doing **gradient descent**
	- **Sum of the Squared Residuals (SSR)**
		-  $SSR = \sum\limits_{i=1}^{n} (y_i - \hat{y}_i)^2$
			- $n$, the number of observations
			- $i$, index of each observation (1 being the first observation)
			- $y_i$, the observed value of the dependent variable for the $i^{th}$ observation
			- $\hat{y_i}$, the predicted (fitted) value of the dependent variable for the $i^{th}$ observation

## Sum of the Squared Residuals: Main Ideas (Part 2)

- SSR can be flexibly used with other models (e.g. sinusoidal), not just linear ones
	- Note that when we calculate residuals, we're not using the perpendicular distance from the observed to the predicted, we use the vertical distance
		- Measuring the vertical distance helps us compare the difference between the observed fitted value and the predicted fitted value

## SSR: Step by Step

- Example
	- **3** observations with the following observed and predicted values:
		- $SSR = \sum\limits_{i=1}^{3} (1.9-1.7)^2 + (1.6-2.0)^2 + (2.9-2.2)^2 = .69$

## Mean Squared Error (MSE): Main Ideas

- The Problem
	- SSR is not easy to interpret because it depends (partly) on how much data you have
		- Assume for **3** points you have a SSR of **14**
		- Assume you add **2** more data points and have a SSR of **22**
		- Increase in the SSR from **14 to 22 does not** suggest that the second model, which is fit to the second dataset, is worse than the first model
			- It only tells us that the model with more data has more residuals
- A Solution
	- One way to compare two models that may be fit to *different* sized datasets is to calculate the **Mean Squared Error (MSE)**, which is just the average of the SSR
	- $\text{MSE} = \frac{SSR}{n} = \frac{1}{n} \sum_{i=1}^{n} (y_i - \hat{y}_i)^2$

## Mean Squared Error (MSE): Step by Step

- Example
	- **3** points, SSR = **14**
		- $MSE = 14/3 = 4.7$
	- **5** points, SSR = 22
		- $MSE = 22/5 = 4.4$
- Unlike SSR, which increases when we add more data to the model, the **MSE** can **increase** or **decrease** depending on the average residual, which gives us a more accurate view of the model's performance
- Still, MSEs are still difficult to interpret because the maximum values depend on the scale of the data
	- The scale of the dataset can severely affect the MSE (e.g. cm vs. m)
	- Both the SSR and the MSE can be used to calculate something called the $R^2$, which is **independent** of both the size of the dataset and the scale 

## $R^2$: Main Ideas

- The Problem
	- MSE is non- robust and is sensitive to the scale of the dataset
- A Solution
	- Use $R^2$ (coefficient of determination), which is a metric that does not depend on the size of the dataset or its scale
	- $R^2$ is calculated by comparing the SSR or MSE around the *mean* y- axis value with the SSE or MSE around the model we're interested in
		- $R^2$ gives us a percentage of how much the predictions improved by using the model we're interested in instead of **just** the mean
		- $0 < R^2 < 1$ and are interpreted as percentages, the closer the value is to **1**, the better the model fits the data relative to the mean y- axis value

## $R^2$: Details (Part 1)

- $R^ 2 = \frac{SSR(mean) - SSR(fitted)}{SSR(mean)}$
	- $R^2 = 0$, means that the both models' predictions are equally good or equally bad
	- $R^2 = 1$, means that the fitted line fits the data perfectly
- $R^2 = 1 - \frac{{\text{SSR}}}{{\text{SST}}}$
	- $R^2$, coefficient of determination
	- $SSR$, sum of squared residuals
	- $SST$, total sum of squares
- $R^2 = 1 - \frac{{\text{MSE}}}{{\text{Var}(y)}}$
	- $R^2$, coefficient of determination
	- $MSE$, mean squared error
	- $Var(y)$, variance of the observed values of the dependent variable $y$

## $R^2$: Details (Part 2)

- Note
	- Any **2** random points have $R^2 = 1$ because regardless of the residuals around the mean, the residuals around a fitted line will be **0**
		- A **small** amount of random data can have a high $R^2$, so any time we see a trend in a small dataset, it's difficult to have *confidence* that a high $R^2$ is not due to *random chance*
- Instead of using general guesswork, use **p- values** to quantify how much confidence you should have in $R^2$ values and other methods that summarize data

## Calculating $R^2$ with the Mean Squared Error (MSE): Details

- $R^ 2 = \frac{SSR(mean) - SSR(fitted)}{SSR(mean)}$
- We can calculate $R^2$ using the Mean Squared Error (MSE)
	- $\frac{MSE(mean) - MSE(fitted)}{MSE(mean)}$
		- $= \frac{\frac{SSR(mean)}{n} - \frac{SSR(fitted)}{n}}{\frac{SSR(mean)}{n}}$
		- $= R^2$
- Therefore, we can calculate $R^2$ with the SSR or MSE

## $R^2$: FAQ

- "Can $R^2$ be negative?"
	- Yes, when comparing the mean to a fitted line, $R^2$ is positive, but when comparing other types of models, we can get negative $R^2$
- "Is $R^2$ related to Pearson's correlation coefficient?"
	- Yes, if you use Pearson's correlation coefficient ($\rho$ or $r$) to determine a relationship between two things, the square of that coefficient is equal to $R^2$
		- $\rho ^ 2 = r ^ 2 = R^ 2$
			- Consequently, this is where $R^2$ got its name

## p- values: Main Ideas (Part 1)

- The Problem
	- We need to quantify how *confident* we should be in the results of our analysis
- A Solution
	- p- values gives us a *measure of confidence* in the results from a statistical analysis
- Example
	- We have two antiviral drugs, **A** and **B** and we want to determine if they are *different*
		- **A** was given to a person and it cured them
		- **B** was given to a person and it failed to cure them
		- "Can we conclude that **A** is different from **B**?"
			- No, not enough evidence and data
	- Repeated experimentation to obtain more evidence and data
		- Results
			- A
				- Cured: 1043, Not Cured: 3
			- B
				- Cured: 2, Not Cured: 1432
		- Conclusions (Preliminary)
			- A appears to be different from B, quick look suggests that the difference is pretty obvious and didn't occur due to random chance

## p- values: Main Ideas (Part 2)

- Ambiguous Example:
	- A (37% Cured)
		- Cured: 73, Not Cured: 125
	- B (31% Cured)
		- Cured: 59, Not Cured: 131
- Conclusions (Preliminary)
	- Unable to immediately conclude a *statistically significant* difference between the two drugs 
- "How small does a p- value have to be before we're sufficiently confident that A is different from B?"
	- In practice, a commonly used threshold is **.05**
		- "If there's no difference between A & B and we repeated this experiment many times, only **5%** of those experiments would result in the *wrong* decision"
- Another Example
	- Assume we gave A to two different groups resulting in the following:
		- A1
			- Cured: 73, Not Cured: 125
		- A2
			- Cured: 71, Not Cured: 127
		- $p = .9$ 
				- Assume we used a statistical test (e.g. Fisher's exact test
	- Conclusions
		- $p = .9 > .05$, thus we can say that we fail to see a statistically significant difference between these two (A1 & A2) groups, which logically makes sense since we're testing both groups with drug A and are not trying to batch test A for QA purposes

## p- values: Main Ideas (Part 3)

- p- value $< .05$
	- We would say that the two groups are different
	- In cases where we encounter a small p- value when there is **no** difference, we determine the situation as a **false positive**
- .05 Threshold
	- "If there's no difference between A and B, in 5% of the experiments we do comparing the two, we'll get a p- value that is **less than .05**, which is a **false positive**"

## p- values: Main Ideas (Part 4)

- Threshold
	- In life or death situations (where we want to minimize false positives), we can opt to use a smaller threshold (e.g. .01, .001)
		- A threshold of .001 would get a false positive once every 1,000 experiments
		- Conversely, we can opt to increase it in non- critical use cases
	- .05 is the most widely used threshold because reducing the number of false positives to a value below 5% is more trouble than it's worth
- Terminology
	- Determining the difference between two objects (in our case, drugs) is referred to as **hypothesis testing**
	- **Null hypothesis** states that the drugs are the same
		- The p- value helps us determine whether or not we should accept or *reject* the null hypothesis

## p- values: Main Ideas (Part 5)

- A small p- value helps us determine if A is different from B, but not *how different* they are
	- Therefore, it is important to note that a small p- value does **not** imply that the effect size or difference between A and B is large

## Fundamental Concepts of Statistics: Summary

- We can view trends in data with **histograms** and can use them to make classifications with **Naive Bayes**
- Histograms have limitations (size of data, gaps in data), so we utilize **probability distributions** to *represent* trends
	- Can also use probability distributions to make classifications with Naive Bayes
- Instead of collecting a huge amount of data, we use **models** as an approximation of reality
	- The point of machine learning is to create models to make predictions
- We can evaluate how well a model reflects the data using the **Sum of Squared Residuals (SSR**), the **Mean Squared Error (MSE)** and $R^2$
- We use **p- values** to obtain confidence in our predictions that our models make