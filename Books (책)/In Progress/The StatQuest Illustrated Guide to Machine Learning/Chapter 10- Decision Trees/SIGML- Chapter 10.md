# Chapter 10: Decision Trees

#machine_learning 

## Classification and Regression Trees: Main Ideas

- Types of Trees
	- Trees for **classification**
	- Trees for **regression**
- Classification Trees
	- Classify data into two or more *discrete* categories
- Regression Trees
	- Try to predict a *continuous* value

## Terminology: Decision Tree

- **Root Node**
	- Top of the tree
	- Trees are upside down, the roots are on top and the leaves are on the bottom
- **Branches**
	- Links between *internal nodes*
	- Common convention is to have branches labelled "yes" or "true" on the left and "no" or "false" on the right
- **Leaves**
	- Nodes that are at the very end of a branch are referred to as leaves

## Classification Trees: Main Ideas

- The Problem
	- We have a mixture of discrete and continuous data
		- Example
			- Discrete
				- Loves Popcorn (Yes/ No)
				- Loves Soda (Yes/ No)
			- Continuous
				- Age (Numeric)
			- Prediction (Discrete)
				- Loves Movie (Yes/ No)
	- An attempt to use logistic regression with this data reveals that we're trying to fit an s- shaped squiggle to the data, which *does not* fit well since it would incorrectly classify *all* of the older people
- A Solution
	- A classification tree can handle all types of data, relationships between independent variables and relationships with the dependent variable
	- They are relatively easy to interpret and use, functionally similar to a dichotomous key

## Building a Classification Tree: Step- by- Step (Part 1)

- In order to build a classification tree, we need to decide what independent variable should be at the top of the tree
	- Independent Variables
		- Loves Popcorn
		- Loves Soda
		- Age
	- Dependent Variable
		- Loves Movie
- To make that decision, we can start by looking at how well "Loves Popcorn" predicts whether or not someone will love a movie by making a small version of a tree that *only* asks if someone loves popcorn and checking their movie status
	- `Person --> Check if they love popcorn (Y/N) --> Check if they love movie (Y/N)`

## Building a Classification Tree: Step- by- Step (Part 2)

- We repeat this until we have a comprehensive breakdown from *each* independent variable that deals with discrete variables
	- `Person --> Check if they love soda (Y/N) --> Check if they love movie (Y/N)`

## Building a Classification Tree: Step- by- Step (Part 3)

- Note
	- Leaves that contain mixtures of classifications are called *impure*
- A comparison between the two smaller trees reveals that both leaves in the "Loves Popcorn" tree are **impure** and only *one* leaf in the "Loves Soda" tree is **impure**
	- "Loves Soda" does a better job of classifying who loves (or doesn't love) a movie, but we want to quantify this difference in performance
- **Gini Impurity**
	- One of the most popular method to quantify the impurity of leaves and trees
		- Other methods include **entropy** and **information gain**
	- Similar background as the *Gini Coefficient*, which is a measure of statistical dispersion used to represent wealth inequality within a population
		- **Both** metrics use the **Lorenz Curve**, which plots the cumulative distribution of a variable (e.g. class labels for Gini Impurity and wealth for Gini Coefficient) against the cumulative share of the population
		- Gini Coefficient is used more for economic and financial purposes, whereas the Gini Impurity is used for classification purposes for machine learning

## Building a Classification Tree: Step- by- Step (Part 4)

- Gini Impurity
	- $\text{GI for a Leaf} = 1 - P(Yes)^2 - P(No)^2$
- Example
	- $\text{Does Love Popcorn Leaf} = 1 - (\frac{1}{1+3})^2 - (\frac{3}{1+3})^2 = .375$
	- $\text{Does Not Love Popcorn Leaf} = 1 - (\frac{2}{2+1})^2 - (\frac{1}{2+1})^2 = .444$

## Building a Classification Tree: Step- by- Step (Part 5)

- Example
	- The leaf on the left only has **4** people, whereas the leaf on the right has **3**
		- The leaves do not represent the same number of people
		- To compensate for this imbalance, the total Gini Impurity for "Loves Popcorn" is the **weighted average of the two leaf impurities**
			- $\text{Total GI} = \text{Weighted Average GI for Leaves}$
			- $= (\frac{4}{4+3})*.375 + (\frac{3}{4+3})*.444 = .405$

## Building a Classification Tree: Step- by- Step (Part 6)

- We've calculated the Gini Impurity for "Loves Popcorn", we need to do the same for "Loves Soda", which gives us an impurity value of **.214**
	- **.214** is less than **.405**, which confirms that "Loves Soda" does a better job of classifying people who do and do not love a movie, which reinforces the conclusion we arrived to in Part 3
- Now, we need to calculate the Gini Impurity for Age, which is a numeric independent variable
	- We sort the age in ascending order and **calculate the average age for *all* adjacent rows**

## Building a Classification Tree: Step- by- Step (Part 7)

- 195 XXXXXXXXXXXXXXXXXXXXXXXXX

## Building a Classification Tree: Step- by- Step (Part 8)

- 196

## Building a Classification Tree: Step- by- Step (Part 9)

- 197

## Building a Classification Tree: Step- by- Step (Part 10)

- 198

## Building a Classification Tree: Step- by- Step (Part 11)

- 199

## Building a Classification Tree: Step- by- Step (Part 12)

- 200

## Building a Classification Tree: Summary

- 201