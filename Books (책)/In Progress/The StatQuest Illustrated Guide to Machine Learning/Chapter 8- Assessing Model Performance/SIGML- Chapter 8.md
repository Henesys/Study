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

- Earlier, we used logistic regression to predict whether or not someone loves a movie and the classification threshold that was used was **50%**
	- $P > 50\%$ indicated the person would be classified as someone who loves a movie
		- $P <= 50\%$ indicated the person would be classified as someone who does not love a movie
- Using the classification threshold of **50%**, we can classify the training data to create a confusion matrix

## ROC: Main Ideas (Part 2)

- Consider a situation where the classification threshold isn't 50%
	- This situation is fairly common, especially when dealing with life or death situations
		- Assume you're trying to classify people with a deadly virus
		- In this case, it's **essential** that we correctly identify everyone with the virus to minimize the risk of an outbreak, **even if** this results in more **false positives**
	- Classification thresholds should be modified to reflect the importance and weights of false positives and false negatives

## ROC: Main Ideas (Part 3)

- Depending on whether or not we value false positives or false negatives more, we can increase or decrease the classification threshold as necessary
	- High classification threshold
		- Low false positives
		- High false negatives
	- Low classification threshold
		- High false positive
		- Low false negatives

## ROC: Main Ideas (Part 4)

- Classification threshold of **0**
	- **0** false negative
	- **0** true negative
	- Classifying everyone as someone who loves a movie
- Classification threshold of **1**
	- **0** true positive
	- **0** false positive
	- Classifying everyone as someone who does not love a movie

## ROC: Main Ideas (Part 5)

- The point of ROC is to avoid having to try and interpret confusion matrices for every single threshold
	- ROC consolidates every threshold into a single graph, allowing us to choose an ideal threshold for our data

## ROC: Main Ideas (Part 6)

- ROC stands for **Receiver Operating Characteristic** a name that comes from the graphs drawn during WWII that summarized how well radar operators correctly identified airplanes in radar signals
	- ROC summarizes how well each threshold performs in terms of the **true positive rate** (TPR) and the **false positive rate** (FPR)
	- Each dot on the ROC graph tells us the TPR and FPR for a specific classification threshold
		- The higher the dot is along the y- axis, the higher the percentage of actual **positives** were *correctly* classified (TPR/ Sensitivity/ Recall)
		- The further to the left the dot is along the x- axis, the lower the percentage of actual **negatives** that were incorrectly classified (FPR/ $1-\text{Specificity}$)
		- The diagonal line shows where $TPR = FPR$

## ROC: Details (Part 1)

- To draw a ROC graph, we start by using a classification threshold of **1** to classify everyone as someone who doesn't like a movie
	- We derive a confusion matrix from this, which nets us **0** true positives and **0** false negatives
	- From here, we calculate the TPR and the FPR
	- We plot the point $(TPR, FPR)$ on the ROC graph

## ROC: Details (Part 2)

- Next, we lower the classification threshold to **.975**
	- We run through the same steps again
	- This new point on the ROC graph is above the initial point, showing us that the new threshold *increases* the proportion of **actual positives** that were *correctly* classified (which is good)

## ROC: Details (Part 3)

- Next, we lower the classification threshold to **.965**
	- We run through the same steps again
	- This new point on the ROC is above the first two points, showing that the new threshold *increases* the proportion of **actual positives** that were *correctly* classified (which is good)

##  ROC: Details (Part 4)

- We continue doing this until the change in threshold increases the number of **positive** classifications to the point where everyone is classified as **positive**

##  ROC: Details (Part 5)

- After finishing plotting the points from each possible confusion matrix, we connect the dots and add a diagonal line to denote the area where $TPR = FPR$
- Finally, we are able to use the ROC graph to pick a classification threshold
	- Depending on whether or not we want to tolerate **false positives** and desire a certain amount of *actual positives*, we can choose specific points on the ROC that tells us which thresholds yield that amount
- ROC graphs are great at optimizing a classification threshold for a model
	- Next, we'll discuss the AUC (Area Under the Curve) to compare how one model performs against another

## AUC: Main Ideas

- Comparing multiple models by testing them with the same data and seeing which performed using ROC graphs will quickly become tedious, which will make us run into the same issues as we did with comparing multiple confusion matrices
	- Thankfully, instead of comparing multiple ROC graphs, we can simply summarize them all by calculating the **area under the curve** (AUC) and comparing them
- Example
	- AUC for a logistic regression model is **.9**
	- AUC for a Naive Bayes model is **.85**
	- Conclusion
		- $AUC(LR) > AUC(NB)$, overall, the logistic regression model performs better than the Naive Bayes model with the data

## AUC: FAQ

- Most programming packages have a way to calculate the AUC from the ROC graph, but you can also divide the area into rectangles and triangles if you choose to calculate the AUC manually

## Precision Recall Graphs: Main Ideas (Part 1)

- ROC graphs use the **false positive rate** on the x- axis, which is fine when the data is *balanced*, meaning there are similar numbers of people who love a movie and do not love a movie
- However, in cases where the data is *imbalanced* (e.g. more people do not love a movie vs. people love a movie), the ROC may be difficult to interpret because the FPR doesn't hover over **0** until the 100% TPR is reached
	- The ROC graph is essentially creating any model that simply predicts "doesn't like movie" every single time look viable
	- We can address this using the **precision recall** graphs that attempt to deal with this issue
		- Another approach to preventing this error would be something like **SMOTE** (Synthetic Minority Oversampling Technique), which addresses class imbalances in classification tasks 

## Precision Recall Graphs: Main Ideas (Part 2)

- A **precision recall** graph replaces the FPR on the x- axis with **precision** and renames the y- axis as **recall**, since TPR is the same thing as recall
	- With precision as the x- axis, "good" classification thresholds are closer to the right, making it easier to observe a bend where the classification thresholds start outputting false positives
	- Precision **does not** include the number of **true negatives**, which is why it works better than the FPR for imbalanced data
