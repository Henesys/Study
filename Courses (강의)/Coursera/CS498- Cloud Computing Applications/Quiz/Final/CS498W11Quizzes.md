#cloud_computing 

Corresponds to [CS498W11Notes](../../W11/CS498W11Notes.md)

# CS498- Week 11 Quiz

## Question 1

- Why is MapReduce not efficient for large- scale graph processing?

### Answer

- It produces too much communication between stages
	- Graph state must be stored at each stage of the graph algorithm
	- Each computational stage will produce must communication
	- MapReduce's shuffling phase involves a significant amount of communication between nodes, which can be inefficient for large- scale graph processing where there's a need for extensive communication between vertices

## Question 2

- You want to build a shortest path algorithm using parallel breadth- first search in Pregel. Which of the following pseudocodes is the proper "compute function" for this program?

### Answer

- `compute(list of messages) --> return list of messages`
	- Compute
		- Assign messages to workers
		- Iterate on active vertices
		- Call vertices `compute()`

## Question 3

- How is checkpointing done in Pregel?

### Answer

- The master periodically instructs the workers to save the state of their partitions to persistent storage
	- Saving the state of worker partitions to persistent storage under the instruction of the Master

## Question 4

- How does Pregel detect the failure?

### Answer

- It regularly uses "ping" messages
	- "Ping" messages between nodes to check for unresponsive nodes

## Question 5

- How is recovery being done in Pregel?

### Answer

- The workers all reload their partition state from the most recent available checkpoint
	- After failure has been detected

## Question 6

- What is ZooKeeper's role in task assignment in Giraph?

### Answer

- Responsible for the state of computation
	- Partition/ worker mapping
	- Global state (`#superstep`)
	- Checkpoint paths, aggregator values, statistics

## Question 7

- What is Master's role for task assignment in Giraph?

### Answer

- Responsible for coordination
	- Assigns partitions to workers
	- Coordinates synchronization
	- Requests checkpoints
	- Aggregates aggregator values
	- Collects health statuses

## Question 8

- What is Worker's role for task assignment in Giraph?

### Answer

- Responsible for vertices
	- Invokes active vertices `compute()` function
	- Sends, receives and assigns messages
	- Computes local aggregation values

## Question 9

- What is graph processing?

### Answer

- A graph database in any storage system that provides index- free adjacency
	- Provides some way of retrieving data

## Question 10

- Which of these is a property of graph database?

### Answer

- Associative datasets
	- With associative datasets, you look up one item and retrieve a different item from it like a node and its connection 
	- Relationships between entities are as important as the entities themselves in associative datasets

## Question 11

- What is an example of collaborative filtering application?

### Answer

- A recommendation engine working based on the user preferences and others with similar preferences
	- Multiple filters working together to extract *just* the information you want
	- Recommendations based on user preferences and similarities with other users

## Question 12

- How do cloud providers technically handle model deployments?

### Answer

- They make a Docker container of the inferencing code, and keep a reference to a BLOB storage bucket where the trained model's parameters are stored. Any time a HTTPS request for a model inference arrives, they launch the container, which fetches the parameters and runs the inference
	- Common approach for handling model deployments by cloud providers, involving containerization and on- demand fetching of model parameters

## Question 13

- Which group does k- means fall into?

### Answer

- Clustering
	- k- means clustering aims to partition $n$ observations into $k$ clusters, grouping similar data points together based on their features

## Question 14

-   Which of the following is not a classification mechanism?

### Answer

- k- Means
	- Clustering Method

## Question 15

- In a typical data science workflow, what are the steps involved?

### Answer

- Obtaining data, scrubbing data, exploring the dataset, train and evaluate a model, interpreting the results
	- OSEMN

## Question 16

- What is an example of an FPM application?

### Answer

- Finding the frequent item sets frequently bought together
	- Frequent Pattern Mining (e.g. FP- Growth, Apriori)

## Question 17

- In K-means, what is the order of the following steps?
	- A. For each data point, assign to the closest centroid
	- B. If new centroids are different from the old, re-iterate through the loop
	- C. For each cluster, re-compute the centroids
	- D. Randomly select k centroids

### Answer

- `D -> A -> C -> B`

## Question 18

- Which of the following best describes how Naive Bayes works?

### Answer

- A set of **labeled** data points are given. A model based on those data points is built such that for any new unlabeled data point the label is determined
	- Naive Bayes is a supervised classification method
	- Naive Bayes builds a probabilistic method based on labeled data to classify new, unlabeled data points

## Question 19

- What are the definitions of hyperparameter optimization and AutoML?

### Answer

- Hyperparameter optimization tunes the training parameters of a single training algorithm, while AutoML tries out multiple training algorithms on the input dataset

## Question 20

- If we want to find which set of items in a grocery shop are frequently bought together, which of the following approaches should we use?

### Answer

- FPM

# CS498- Week 11 Practice Quiz

## Question 1

- X

### Answer 

- X

## Question 2

- X

### Answer 

- X

## Question 3

- X

### Answer 

- X

## Question 4

- X

### Answer 

- X

## Question 5

- X

### Answer 

- X

## Question 6

- X

### Answer 

- X

## Question 7

- X

### Answer 

- X

## Question 8

- X

### Answer 

- X

## Question 9

- X

### Answer 

- X

## Question 10

- X

### Answer 

- X

## Question 11

- X

### Answer 

- X

## Question 12

- X

### Answer 

- X

## Question 13

- X

### Answer 

- X

## Question 14

- X

### Answer 

- X

## Question 15

- X

### Answer 

- X

## Question 16 

- X

### Answer 

- X

## Question 17

- X

### Answer 

- X

