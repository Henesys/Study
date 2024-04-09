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

- We create Gaussian curves for each feature in our upgraded popcorn, soda, candy and movie rating example
	- Popcorn (grams)
		- Calculate mean and standard deviation for people who *don't* love a movie and draw a Gaussian curve
		- Draw a Gaussian curve for people who *do* love a movie
	- Soda (ml)
		- Same process
	- Candy (grams)
		- Same process

## Gaussian Naive Bayes: Details (Part 2)

- Calculate the **prior probability** that someone loves a movie
	- $P(\text{loves movie}) = \frac{\text{\# of people who loves movie}}{\text{total \# of people}} = \frac{4}{4+3} = .6$
	- Similar to Multinomial Naive Bayes, the prior probability is just a guess, but we usually estimate it from the *training* data
		- Our training data came from **4** people who *loves* a movie and **3** people who *does not love* a movie
- We calculate the prior probability that someone does not love a movie
	- $P(\text{does not love movie}) = \frac{\text{\# of people who do not love movie}}{\text{total \# of people}} = \frac{3}{4+3} = .4$
- Let's assume we want to make a prediction for someone who:
	- Ate **20 grams** of popcorn
	- Drank **500 ml** of soda
	- Ate **100 grams** of candy

## Gaussian Naive Bayes: Details (Part 3)

- We calculate the score for "**loves movie**" by multiplying the prior probability that they love a movie by the **likelihoods**, the y- axis coordinates that correspond to the above prediction *given* that they love a movie
	- $p(\text{loves movie}) \times L(Popcorn = 20 | Loves) \times L(Soda = 500 | Loves) \times L(Candy = 100 | Loves)$
	- Note that when we do this sort of operation, we may run into the **underflow** issue where the computer is unable to save and process extremely small numbers being multiplied together
		- To avoid such issues, we take the **log** (natural log/ log base $e$) to convert the multiplication problem into addition
	- Assume that this gets us a score of **-124** for "**loves movie**" once it has been calculated

## Gaussian Naive Bayes: Details (Part 4)

- Doing the same process for the score for "**does not love movie**", we arrive at a score of **-48**
- Since the score of "**does not love movie**" (**-48**) is greater than the score for "**loves movie**" (**-124**), we classify this person as someone **who does not love movie**

## Naive Bayes: FAQ (Part 1)

- "If my continuous data is not Gaussian, can I still use Gaussian Naive Bayes?"
	- Even though Gaussian distribution is the most commonly used distribution, we can use *any* statistical distribution in combination with Naive Bayes
		- Of course, if we use Naive Bayes on an **exponential** distribution, it would becomes Exponential Naive Bayes
- Note
	- Gaussian Naive Bayes' underlying assumptions about the continuous features in your data prove to be very important in its process
		- It assumes that the probability distribution of each feature given the class label is Gaussian
	- If your data deviates severely from this assumption, Gaussian Naive Bayes' performance may be subpar and you may want to consider other classification algorithms instead
	- If the deviation is not that extreme however, Gaussian Naive Bayes can still be used as it is relatively robust to deviations from its assumption

## Naive Bayes: FAQ (Part 2)

- "What if some of my data is *discrete* and some of my data is *continuous?* Can I still use Naive Bayes?"
	- Yes, we can do so by combining the histogram approach from Multinomial Naive Bayes with the distribution approach from Gaussian Naive Bayes
		- For *continuous* features, you can use Gaussian Naive Bayes, which assumes that the continuous features follow a Gaussian distribution
		- For *discrete* features, such as categorical variables or word frequencies in text classification, you can use Multinomial Naive Bayes
			- When making predictions, you can combine the probabilities from the GNB and MNB models using the Naive Bayes **assumption of conditional independence**
	- Example
		- $log(p(N)) + log(p(Dear | N)) + log(p(Friend | N)) + log(L(time = 25 | N))$

## Naive Bayes: FAQ (Part 3)

- "How is Naive Bayes related to Bayes' Theorem?"
	- We can divide each score (e.g. $p(N | \text{Dear Friend})$) by the sum of the scores, which would give us Bayes' Theorem
	- Since the denominators are the same in both scores, the results are determined entirely by the numerators, which is why denominators are omitted 