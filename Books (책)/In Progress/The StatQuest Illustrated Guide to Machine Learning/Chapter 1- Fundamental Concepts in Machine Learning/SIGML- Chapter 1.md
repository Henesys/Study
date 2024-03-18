# Chapter 1: Fundamental Concepts in Machine Learning

#machine_learning 

## Machine Learning: Main Ideas

- Machine Learning
	- Collection of tools and techniques that transform data into good decisions by making *classifications* (e.g. whether or not someone will like a movie) or *quantitative predictions* (e.g. how tall someone is)
- Classification
	- When we use machine learning to *classify* things
- Regression
	- When we use machine learning to make *quantitative predictions*

## Machine Learning Classification: Main Ideas

- The Problem
	- We have a large amount of data and we want to use it to make classifications
- A Solution
	- Use data to build a **classification tree** to classify whether someone will like this book or not
		- Once the classification tree is built, use it to make classifications by asking the question, "Are you interested in machine learning?"
		- After asking a series of yes vs. no questions, you arrive at the conclusion of whether or not someone will like this book

## Machine Learning Regression: Main Ideas

- The Problem
	- We have a large amount of data and we want to use it to make quantitative predictors
	- We want to use machine learning to do regression
		- e.g. After measuring the weights and heights of 5 different people, we want to predict someone's weight based on their height
- A Solution
	- Using **linear regression** to fit a line to the original data we collected and use that line to make quantitative predictions
	- After given information about your weight, we use the line of best fit to predict your height

## Comparing Machine Learning Methods: Main Ideas

- The Problem
	- Machine learning consists of a lot of different methods that allow us to make classifications or quantitative predictions
	- We need to learn how to choose which one to use
- A Solution
	- Try out both (classification & regression) methods and compare the resulting predictions to determine the quality of each prediction

## Comparing Machine Learning Methods: Intuition (Part 1)

- Training Data
	- Original data that we use to observe the trend and fit the line (of best fit)
	- The line of *best fit* is *fit* to the training data
- Testing Data
	- In order to make comparisons to see which method makes better predictions, we need testing data

## Comparing Machine Learning Methods: Intuition (Part 2)

- In the case of the height vs. weight example, you can observe the points presented by the testing data and see how close (or far) each method predicts each value
	- By measuring the distance from the method's estimate to the location of the testing data, we can get the **error** between the *observed* and *predicted* heights
	- You can get the errors for all points plotted by the testing data

## Comparing Machine Learning Methods: Intuition (Part 3)

- After obtaining the errors for both methods, we can compare the quality of the predictions by comparing the sum of the errors themselves
	- Less errors means that method did a better job of making predictions than its counterpart
	- Therefore, a method that fit the training data better than its counterpart may not always do a better job of predicting with the testing data

## Comparing Machine Learning Methods: Intuition (Part 4)

- Key Ideas
	- Use testing data to evaluate machine learning methods
	- A method that fits the training data well may not always perform as well with the testing data
- Terminology
	- When a method fits the **training data** well, but makes **poor predictions**, we say it is **overfitting** to the training data
	- Term will be discussed more in conjunction with bias- variance tradeoff

## Main Idea of Machine Learning: Summary

- Regardless of what new methods are invented every year, the goal of machine learning remains the same: create a model that performs well with testing data
- Methods mentioned in this book:
	- Regression
	- Logistic Regression
	- Naive Bayes
	- Classification Trees
	- Regression Trees
	- Support Vector Machines (SVMs)
	- Neural Networks

## Terminology: Independent & Dependent Variables

- Dependent
	- Variables that *depend* on other measurements/ variables
- Independent (Feature)
	- Variables that *do not depend* on other measurements/ variables

## Terminology: Discrete & Continuous

- Discrete
	- **Countable** and takes *specific* values
	- Ranking and other orderings are also discrete
- Continuous
	- **Measurable** and can take *any* numeric value within a range