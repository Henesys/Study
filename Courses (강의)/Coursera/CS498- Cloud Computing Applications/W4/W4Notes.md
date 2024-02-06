# CS498- Week 4

#cloud_computing

## MapReduce Programming Model

### Introduction to MapReduce

- Motivation: Large Scale Data Processing
	- Many tasks composed of processing lots of data to produce lots of other data
	- Large Scale Data Processing
		- We want to use 1000+ CPUs, but don't want the hassle of managing 1000+ CPUs
	- MapReduce provides:
		- User defined functions
		- Automatic parallelization & distribution
			- Parallelization-  technique of dividing a large computational task into smaller sub- tasks that can be executed concurrently on multiple processors or cores, reducing overall computation time
		- Fault tolerance
		- I/O scheduling
		- Status information
		- Cluster monitoring
		
### MapReduce: Motivation

- Challenges with Traditional Programming Methods (MPI)
	- "Predecessor" of MapReduce
	- Message Passing Interface (MPI)
	- MPI has two blocks: MPI_Send and MPI_Receive
	- This abstraction is too simple- deadlock *is* possible
		- Blocking the communication can cause a deadlock
			- "Crossed" calls when trading information
			- Example:
				- Process 1: MPI_Receive(Process 2, A); MPI_Send(Process 2, B)
				- Process 2: MPI_Receive(Process 1, B); MPI_Send(Process 1, A)
			- A potential workaround to this problem is MPI_SendRecv(), which polices the traffic
	- Large overhead from communication mismanagement
		- Time spent blocking is time wasted on cycles
		- Can overlap communication with non- blocking communication channels
	- Load imbalance is possible and machines may die unexpectedly
		- Things get exponentially difficult too quickly, which means we need to find a better way
- Commodity Clusters
	- Web datasets can be extremely large
		- 100+ TB
		- It is usually not possible to mine on a single server
	- Standard Architecture:
		- Cluster of commodity Linux nodes
		- Gigabit Ethernet interconnect
	- "How should we organize computations on this architecture?"
		- "How do we mask issues such as hardware failure?"
- Solution
	- Use distributed storage
		- 6 ~ 24 disks attached to a blade
		- 32 ~ 64 blades in a rack connected by Ethernet
	- Push computations down to storage
		- Computations process contents of disks
		- Data on disks read sequentially from beginning to end
		- Rate limited by speed of disks (speed can get at data)
- Cluster Architecture
	- ![](assets/ClusterArchitecture.png)
- Stable Storage
	- First Order Problem:
		- "If nodes can fail, how do we store persistently?"
	- Answer: Distributed File System
		- Provides global file namespace
		- e.g. Google GFS/ Hadoop HDFS
	- Typical usage pattern
		- Large files (100+ GB to 100+ TB)
		- Data is rarely updated in place
		- Reads and appends are commonplace

### MapReduce Programming Model

- What is MapReduce?
	- MapReduce
		- Programming model from LISP
			- *Map* and *reduce* are high order functions in LISP
		- Programming model/ pattern within the Hadoop framework that is used to access large data stored in the Hadoop File System (HDFS)
			- Generating large datasets with a parallel, distributed algorithm on a cluster
	- Easy to distribute
		- Hides difficulty of writing parallel code
		- System takes care of load balancing, dead machines etc.
		- Easy to use retry & failure semantics
- Programming Concept
	- Map
		- **Perform** a function on **individual values** in a dataset to create a **new list** of values
	- Reduce
		- **Combine** values in a dataset to create a **new value**
	- ![](assets/Map&ReduceDemo.png)
- MapReduce Programming Model
	- **Input & Output**: Each a set of key/ value pairs
	- Example 1:
		- The programmer specifies two functions:
			- MAP(IN_KEY, IN_VALUE)
				- LIST(OUT_KEY, INTERMEDIATE_VALUE)
		- Processes input key/ value pair
		- Produces intermediate pairs
	- Example 2
		- The programmer specifies two functions:
			- REDUCE(IN_KEY, IN_VALUE)
				- LIST(OUT_KEY, INTERMEDIATE_VALUE)
		- Combines all intermediate values for a particular key
		- Produces a set of merged output values (usually just one)

### MapReduce Example: Word Count

- Word Count
	- Assume that you have a large file of words with many words in each line
	- Assume that you need to count the number of times each distinct word appears in the file
- Word Count Program
	- ![](assets/WordCountProgram.png)
		- Note that you can opt not to use the input key (in this case, LINE)
		- When you map, your key can be any object that is serializable (in this case, word "w")
		- REDUCE uses a grouping function that tallies up all the created intermediate key value pairs created by MAP
- Word Count Illustrated
	- ![](assets/WordCount.png)

### MapReduce Example: Pi Estimation & Image Smoothing

- Pi Estimation
	- Estimating the value of $\pi$ using Monte Carlo
		- Throw darts
		- Compute ratio of darts landed within square vs darts landed within the circle
		- Evaluate whether a particular dart landing within the circle is easy
	- **Mapper**
		- Generate points in a unit square and count points inside/ outside of the inscribed circle of the square
	- **Reducer**
		- Accumulate points inside/ outside results from the mappers
	- After the MapReduce job, estimate $\pi$
		- The approximation looks like $\frac{Inside Number}{Outside Number}$ , which is equivalent to $\frac{Area of the Circle}{Area of the Square}$
- Image Smoothing
	- To smooth an image, we need to use a sliding mask to replace the value of each pixel
	- **Mapper**
		- Input Key: x, y
		- Input Value = RGB
		- Emit 9 Points (Coordinates + RGB Values)
			- (x - 1, y - 1, R, G, B)
			- (x, y - 1, R, G, B)
			- etc.
	- **Reducer**
		- Input Key: x, y
		- Input Value: List of RGB
		- Compute the average RGB
		- Emit key = (x, y) and value = (avg RGB)

### MapReduce Example: Page Rank

- PageRank Algorithm
	- History
		- Implemented by Google to rank any type of recursive "documents" using MapReduce
		- Developed at Stanford by Google founders, Larry Page and Sergey Brin in 1995
		- Led to a functional prototype named Google in 1998
	- PageRank value for a page $u$ is dependent on the PageRank values for each page $v$ out of the set $B_u$ (all pages linking to page $u$), divided by the number $L(v)$ of links from page $v$
		- $PR(u) = \sum\limits_{v\in B_u}\frac{PR(v)}{L(v)}$ 
- PageRank
	- Phases
		- Propagation
		- Aggregation
	- Input
		- Pool of objects, including vertices and edges
- PageRank: Propagation
	- **Map**: for each object
		- If object is vertex, emit key = URL, value = object
		- If object is edge, emit key = **source URL**, value = object
	- **Reduce**: input is a web page and all the *outgoing* links
		- Find the number of edge objects --> outgoing links
		- Read the PageRank from the vertex object
		- Assign $PR(edges) = \frac{PR(vertex)}{num \; outgoing}$ 
- PageRank: Aggregation
	- **Map**: for each object
		- If object is vertex, emit key = URL, value = object
		- If object is edge, emit key = **destination URL**, value = object
	- **Reduce**: input is a web page and all the *incoming* links
		- Add the PR of all incoming links
		- Assign $PR(edges) = \sum PR(incoming \; links)$ 

### MapReduce Summary

## Hadoop

### Introduction to Hadoop

### Big Data Pipelines- The Move to Hadoop

### Introduction to YARN

### MapReduce on YARN

### MapReduce on YARN in Diagram

### Hadoop at Yahoo!

## Apache Spark

### Motivation for Spark

### Apache Spark

### Spark Example: Log Mining

### Spark Example: Logistic Regression

### RDD Fault Tolerance

### Interactive Spark

### Spark Implementation

## HDFS

### HDFS Introduction