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

- Calculate the Gini Impurity values for each average age
	- Example
		- If the first average age is **9.5**, **9.5** is the threshold for splitting the rows into **2** leaves
			- $Age < 9.5$ `--> (Y/N)`
			- The total Gini Impurity at this point would be the following:
				- $GI = (\frac{1}{1+6})* 0.0 + (\frac{6}{1+6}) * .5 = .429$
				- The total Gini Impurity is **.429**
	- Repeat this process until we end up with a Gini Impurity for each potential threshold for age
		- Identify the thresholds that yield the **lowest** impurities 
		- If there's a tie you can pick either one for the root

## Building a Classification Tree: Step- by- Step (Part 8)

- To recap, our initial goal for all of this was to determine whether we should about "Loves Popcorn", "Loves Soda" or "Age" at the root of our tree
	- We calculated the Gini Impurity for each feature and arrive to the conclusion that "Loves Soda" yields the lowest Gini Impurity, so we'll ask about it at our root

## Building a Classification Tree: Step- by- Step (Part 9)

- After setting "Loves Soda" at the root of the tree, we start by filtering the branches of the tree based on whether or not someone does love soda or does not love soda
- From there, we distinguish the nodes further by determining whether or not someone loves or doesn't love a movie
- If a node is impure, we calculate the Gini Impurity for that specific leaf
	- Note that we calculate the Gini Impurities of the node of people who "Loves Soda" based on **all** the other independent variables, "Loves Popcorn" and "Age"

## Building a Classification Tree: Step- by- Step (Part 10)

- If you split the training data based on whether or not someone loves soda and end up with **3** people who respond "No" **and** find that all **3** of them do *not love a movie*, you end up with a **leaf** since the node is pure and there's no point in splitting up the node even further into smaller groups
- In the case of where you end up with an impure node, you calculate the Gini Impurity based on all of the other independent variables and select the variable which yields the lowest Gini Impurity
	- Once the variable has been selected, we add that variable to our original tree
	- If the variable that we selected yields a Gini Impurity of **0**, which indicates the the nodes are *pure*, the addition of these nodes to the original tree will automatically result in them being considered **leaves**

## Building a Classification Tree: Step- by- Step (Part 11)

- We've successfully created a tree from our training data
	- Now, we need to assign output values for each leaf
		- (e.g. "Does Not Love Movie", "Loves Movie")
- After assigning output values to each leaf, we've finished building a **classification tree**

## Building a Classification Tree: Step- by- Step (Part 12)

- The tree that we built is not without its own problems
	- With so few data points residing in some of the leaves, it's difficult to have confidence that the tree will do a great job making predictions with future data
- There are two main ways to address this issue:
	- Pruning
		- Which won't be covered in this book
		- Technique used specifically in the context of decision trees and neural networks to reduce the size of the model by removing parts of it
	- Putting limits on how the tree will grow
		- e.g. Requiring 3 or more people per leaf, which may result in impurity but also potentially increase the accuracy of our predictions
		- Note that we don't know in advance if it's better to require 3 people per leaf, so we use cross validation to achieve that number
		- Also note that despite the leaf being impure, you can still generate an output value through using the majority

## Building a Classification Tree: Summary

- We use the Gini Impurity to select an independent variable for the root of our tree from the entire training data
- In cases of impure nodes, we use the non- selected independent variables and calculate their respective Gini Impurities, selecting the variable that yields the lowest impurity as our next node
- Finally, we select output values for each leaf by picking the categories with the highest counts (majority)

## Regression Trees: Main Ideas (Part 1)

- The Problem
	- We have a training dataset consisting of drug effectiveness for different doses and fitting a straight line to the data would result in terrible predictions because there are *clusters* of ineffective doses that surround the effective doses
- A Solution
	- We can use a **regression tree** that can handle all types of relationships and data to make decisions
		- However, in contrast to our classification tree, our regression tree has an output that is a *continuous* value (Drug Effectiveness)
	- Thankfully, the overall ease in interpreting the tree itself doesn't change too much

## Regression Trees: Main Ideas (Part 2)

- In our example, the regression tree makes good predictions since each leaf corresponds to a different cluster in our graph
	- This results in a relatively easy way to ensure that points in our graph are being interpreted correctly in our regression tree

## Building a Regression Tree: Step- by- Step (Part 1)

- 205

## Building a Regression Tree: Step- by- Step (Part 2)

- 206

## Building a Regression Tree: Step- by- Step (Part 3)

- 207

## Building a Regression Tree: Step- by- Step (Part 4)

- 208

## Building a Regression Tree: Step- by- Step (Part 5)

- 209

## Building a Regression Tree: Step- by- Step (Part 6)

- 210

## Building a Regression Tree: Step- by- Step (Part 7)

- 211

## Building a Regression Tree: Step- by- Step (Part 8)

- 212

## Building a Regression Tree: Step- by- Step (Part 9)

- 213

## Building a Regression Tree with Multiple Features (Part 1)

- 215

## Building a Regression Tree with Multiple Features (Part 2)

- 216

## Building a Regression Tree with Multiple Features (Part 3)

- 217

## Building a Regression Tree with Multiple Features (Part 4)

- 218