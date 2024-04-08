# Chapter 7: Naive Bayes

#machine_learning 

## Naive Bayes: Main Ideas

- The Problem
	- We have an email account that has **normal** messages from friends and family and **spam** messages that are scams
	- We want to separate the **normal** messages from the **spam**
- A Solution
	- We use a **naive bayes classifier**, one of the simplest and widely used machine learning method to do this task
		- Assume we have a message that says "Dear Friend" and we want to classify it as either **normal** or **spam**
			- We will require a separate equation for each classification
	- Naive Bayes (Normal)
		- Prior probability, an initial guess that the message is **normal**
			- $p(N)$
		- Probability of seeing the words "Dear" and "Friend", given that the message is **normal**
			- $p(Dear | N) \times p(Friend | N)$
		- Final Equation
			- $p(N) \times p(Dear | N) \times p(Friend | N)$
	- Naive Bayes (Spam)
		- $p(S) \times p(Dear | S) \times p(Friend | S)$
	- A comparison between the two must be done, whichever equations that gives us the **larger** value (score) tells us the **final** classification

## Multinomial Naive Bayes: Details (Part 1)

- One of the most commonly used version of Naive Bayes is **Multinomial Naive Bayes**
- Example
	- We train with **8 normal** messages and **4 spam** messages
	- Create a histogram for all of the words in the **normal messages** and a histogram for all of the words in the **spam messages**
	- Calculate the probabilities of seeing each word *given* that they came from **normal** messages
		- $p(Dear | N) = \frac{8}{17} = .47$
			- We repeat this process for every word in the **normal** messages

## Multinomial Naive Bayes: Details (Part 2)

- We apply the same process to the **spam** messages as well
	- $p(Dear | S) = \frac{2}{7} = .29$
		- We also repeat this process for every word in the **spam** messages
- We proceed by calculating **prior probabilities**, which are "guesses" we make without looking at the words in the message about whether or not a message is **normal** or **spam**
	- Note that prior probabilities can actually be any pair of probabilities, but generally they are derived from the training data
- Prior Probabilities
	- $p(N) = \frac{\text{\# of Normal Messages}}{\text{Total \# of Messages}} = \frac{8}{12} = .67$
	- $p(S) = \frac{\text{\# of Spam Messages}}{\text{Total \# of Messages}} = \frac{4}{12} = .33$

## Multinomial Naive Bayes: Details (Part 3)

- We multiply the prior probabilities of each classification (**normal** and **spam**) with their probabilities for each word occurring in their respective messages, so that we can calculate the overall score that the message "Dear Friend" is **normal**
	- $p(N) \times p(Dear | N) \times p(Friend | N) = .67 * .47 * .29 = .09$
- We can calculate the score that the message "Dear Friend" is spam in a similar fashion
	- $(S) \times p(Dear | S) \times p(Friend | S) = .33 * .29 * .15 = .01$

## Multinomial Naive Bayes: Details (Part 4)

- Our initial goal was to classify a message containing the words "Dear Friend" as **normal** or **spam**
-  Since the score for **normal** messages (**.09**) is greater than the score for **spam** messages (**.01**), we classify the "Dear Friend" message as **normal**

## Multinomial Naive Bayes: Details (Part 5)

- Naive Bayes' namesake comes from the fact that it *is naive*
	- It treats all of the words independently, which means it ignores word order and phrasing
	- Using Naive Bayes will result in a conclusion that a message that reads "Dear Friend" has the same score as a message that read "Friend Dear"
- Missing data can theoretically be problematic as well
	- If the probability of seeing the word "Lunch" in **spam** is **0**, it means that any message that contains the word "Lunch" will be classified as **normal** *automatically* since the score for **spam** is **0**

## Multinomial Naive Bayes: Dealing with Missing Data

- Thankfully, Naive Bayes is able to handle the problem of missing data by introducing a **pseudocount** to each word
	- Pseudocounts are extra values added to each word and usually adding pseudocounts means adding **1** count to each word
	- Note that pseudocounts are added to every word in *both* histograms, even if only one histogram has missing data
	- Thus, the following gets modified:
		- $p(Dear | N) = \frac{8+1}{17+4} = .43$

## Multinomial Naive Bayes vs. Gaussian Naive Bayes

- The above example was a demonstration of Naive Bayes with *discrete* data by building histograms and using them to calculate probabilities for classification purposes
- In contrast, when we have *continuous* data, we can use means, standard deviations and Gaussian (normal) curves for classification purposes

## Gaussian Naive Bayes: Details (Part 1)

- X