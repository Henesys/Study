# Chapter 8: Assessing Model Performance

#machine_learning 

## Assessing Model Performance: Main Ideas

- The Problem
	- We have a dataset and want to use it to predict if someone has heart disease, but we don't know in advance which model (e.g. Naive Bayes, logistic regression) will make the best predictions
- A Solution
	- Rather than being worried about which model to choose, we can try just try both and assess their performance using a wide variety of tools such as **confusion matrices** and **Receiver Operator Curves (ROCs)**

## Confusion Matrix: Main Ideas

- Start by dividing the dataset into two blocks, using the first block to optimize *both* models using **cross validation**
	- Apply the optimized Naive Bayes model to the second block and build a confusion matrix that helps us keep track of the following:
		- Number of people with heart disease who were **correctly** predicted to have heart disease
		- Number of people with heart disease who were **incorrectly** predicted to not have heart disease
		- Number of people without heart disease who were **correctly** predicted to not have heart disease
		- Number of people without heart disease who were **incorrectly** predicted to have heart disease
	- We build the same confusion matrix for the optimized logistic regression model as well
- Example
	- Assume that in our case, the logistic regression is better at predicting people *without* heart disease and Naive Bayes is better at predicting people *with* heart disease
		- From here, we can pick the model based on whether or not we place more importance on identifying people with or without heart disease (Type I vs Type II errors)

## Confusion Matrix: Details (Part 1)

- When the actual and predicted values are both **true**, we call it a **true positive** (TT)
- When the actual value is **true** and the predicted value is **false**, it is a **false negative** (TF)
- When the actual and predicted values are both **false**, we call it a **true negative** (FF)
- When the actual value is **false** and the predicted value is **true**, it is a **false positive** (FT)

## Confusion Matrix: Details (Part 2)

- If the output variable is binary, the corresponding confusion matrix has **2** rows and **2** columns, one for each output response
	- In our case, our output variable is whether or not someone **does** or **does not** have heart disease
- If the output variable has **3** possible outcomes, the corresponding confusion matrix has **3** rows and **3** columns, one for each output response
	- Generally speaking, the size of the matrix corresponds to the **number of classifications we want to predict**

## Confusion Matrix: Details (Part 3)

- There's no official standard for the orientation of a confusion matrix, which means you will need to carefully read the labels of the matrix before attempting to interpret it

## Confusion Matrix: Details (Part 4)

- As for the comparison between the confusion matrices, you can choose to compare the models by the amount of true positives and true negatives *or* use specific metrics such as **sensitivity** and **specificity** to quantify performance differences

## Sensitivity and Specificity: Main Ideas

- When we want to quantify how well a model (e.g. Naive Bayes) correctly classified the *actual positives* (people *with* heart disease), we calculate **sensitivity**
	- Sensitivity
		- Percentage of the *actual positives* that were *correctly* classified
		- $\text{Sensitivity} = \frac{\text{True Positive}}{\text{True Positive + False Negative}}$
	- Assuming we got a sensitivity of **.83**, this would mean that **83%** of people *with* heart disease were *correctly* classified
- When want to quantify how well a model (e.g. logistic regression) correctly classified the *actual negatives* (people *without* heart disease), we calculate **specificity**
	- Specificity
		- Percentage of *actual negatives* that were *correctly* classified
		- $\text{Specificity} = \frac{\text{True Negative}}{\text{True Negative + False Positive}}$
	- Assuming we got a specificity of **.85**, this would mean that **85%** of people *without* heart disease were *correctly* classified

## Precision and Recall: Main Ideas

- Precision (High Precision = High Quality)
	- Tells us the percentage of the *predicted positive* results that were *correctly* classified
	- $\text{Precision} = \frac{\text{True Positive}}{True Positive + False Positive}$
	- If we got a precision of **.87**, it means that of the **people that we predicted to have heart disease, 87%** actually have heart disease
		- Quality of the positive results
- Recall (Sensitivity)
	- Percentage of *actual positives* that were *correctly* classified
	- $\text{Recall} = \text{Sensitivity} = \frac{\text{True Positive}}{\text{True Positive + False Negative}}$

## True Positive Rate & False Positive Rate: Main Ideas

- True Positive Rate (Recall = Sensitivity)
	- $\text{True Positive Rate} = \text{Recall} = \text{Sensitivity} = \frac{\text{True Positive}}{\text{True Positive + False Negative}}$
- False Positive Rate
	- Percentage of *actual negatives* that were *incorrectly* classified
	- Known people *without* heart disease who were classified as people *with* heart disease
	- $\text{False Positive Rate} = \frac{\text{False Positive}}{\text{False Positive + True Negative}}$
- Note
	- $\text{False Positive Rate} = 1 - \text{Specificity}$

## ROC: Main Ideas (Part 1)

- 148