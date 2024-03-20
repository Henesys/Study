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