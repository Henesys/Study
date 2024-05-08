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

- The adjacency list of the brain (modeled as a collection of vertices and edges) is:

### Answer 

- an order of magnitude or more larger than the adjacency list of the web (modeled as a collection of vertices and edges)
	- A model of the web would have approximately 50 billion vertices, 1 trillion edges, and a 30 TB adjacency list, while a model of the brain would have approximately 100 billion vertices, 100 trillion edges, and a 2.84 PB adjacency list

## Question 2

- Pregel's message passing API guarantees message delivery order

### Answer 

- False

## Question 3

- Messages in Pregel are delivered exactly once

### Answer 

- True

## Question 4

- Pregel works on an egalitarian model - all of the nodes perform the same functions and have the same responsibilities

### Answer 

- False
	- Pregel uses a master/ worker model

## Question 5

- Select all that apply: 
	- Which are elements of the Giraph framework?

### Answer 

- ZooKeeper
- JobTracker
- TaskTracker
- Worker

## Question 6

- Why does Pregel use MapReduce?

### Answer 

- In fact, Pregel does not use MapReduce, because MapReduce produces too much communication between stages
	- MapReduce tends to be inefficient because the graph state must be stored at each stage of the graph algorithm, and each computational stage will produce much communication between the stages

## Question 7

- What is a graph database?

### Answer 

- A graph database is a storage system that provides index-free adjacency

## Question 8

- What is an example of a collaborative filtering application?

### Answer 

- A recommendation engine working based on the user preferences and others with similar preferences
	- Collaborative filtering is to have multiple filters working together to extract just the information you want

## Question 9

- Which group does K-means fall into?

### Answer 

- Clustering
	- k-means clustering aims to partition n observations into k clusters

## Question 10

- What is an example of an FPM application?

### Answer 

- Finding the frequent item sets frequently bought together
	- An example of frequent pattern mining

## Question 11

- In K-means, what is the order of the following steps?
	- A. For each data point, assign to the closest centroid
	- B. If new centroids are different from the old, re-iterate through the loop
	- C. For each cluster, re-compute the centroids
	- D. Randomly select k centroids

### Answer 

- D -> A -> C -> B

## Question 12

- Which of the following best describes how Naïve Bayes works?

### Answer 

- A set of labeled data points are given. A model based on those data points is built such that for any new unlabeled data point the label is determined
	- Naive Bayes is a supervised classification method

## Question 13

- If we want to find which set of items in a grocery shop are frequently bought together, which of the following approaches should we use?

### Answer 

- FPM

## Question 14

- In K-means done on Map Reduce, which of the following steps is done in the Map phase, and which in the Reduce phase?
	- A. For each data point, assign to the closest centroid
	- B. For each cluster, re-compute the centroids
	- C. Read the k centroids

### Answer 

- Map: A,C + Reduce: B

## Question 15

- What does the "E" in OSEMN stand for?

### Answer 

- Explore Data

## Question 16 

- Choose all that apply:
	- What are examples of unstructured data in a cloud machine learning context?

### Answer 

- Language
- Voice
- Vision

## Question 17

- What does AWS SageMaker provide?

### Answer 

- A system to build ML models
- Managed Notebooks
- Hyperparameter Optimization Tools
- Capability to detect concept drift

