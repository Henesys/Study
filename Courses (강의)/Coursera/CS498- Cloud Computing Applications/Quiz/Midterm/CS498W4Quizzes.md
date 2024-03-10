#cloud_computing 

Corresponds to [CS498W4Notes](../../W4/CS498W4Notes.md)

# CS498- Week 4 Quiz

## Question 1

- Which technology is the best suited for the following use case?
	- "Finding the set of words utilized in the Wikipedia website"

### Answer

- **Hadoop**
	- Hadoop is a distributed processing framework that can handle large volumes of data and is well- suited for the aforementioned task
	- Hadoop's MapReduce paradigm allows for distributed computation across computational clusters, making it suitable for tasks that require intensive parallel processing

## Question 2

- You want to build an image smoother program. Which of the following is the proper Map function for this program?
	- "Image Smoother Program: To smooth an image, use a sliding mask and replace the value of each pixel."

### Answer

- **Option 1**
```
Map(key = x,y, value = R,G,B)

{

emit {([x, y], value), ([x-1, y], value), ([x-1,y-1], value), ([x-1, y+1], value), ([x, y-1], value), ([x, y+1], value), ([x+1, y-1], value), ([x+1, y], value), ([x+1, y+1], value)

}
```

- Map function emits neighboring pixels, which are then used to compute the average color value of the pixel and its neighbors in the Reduce function
- Smoothens the image by averaging the colors

## Question 3

- You want to build an image smoother program. Which of the following is the proper Reduce function for this program?
	- "Image Smoother Program: To smooth an image, use a sliding mask and replace the value of each pixel."

### Answer

- **Option 1**
```
Reduce(key = x,y ; value = list of R,G,B)

{

compute average of R,G,B

emit (key, average R,G,B)

}
```

## Question 4

- You want to build a word count program. Which of the following is the proper Map function for this program?
	- "Word Count Program: You have a huge text file that consists of many lines. The goal is to count the number of times each distinct word appears in the file."

### Answer

- **Option 1**
```
Map(key = line, value = contents):

{

for each word in value:

emit (word, 1)

}
```

- Map function emits key/ value pairs where the key is a word and the value is 1 for each occurrence of the word
- Reduce function sums up the occurrences of each word emitted by the Map function, producing the total count for each word

## Question 5

- You want to build a word count program. Which of the following is the proper Reduce function for this program?
	- "Word Count Program: You have a huge text file that consists of many lines. The goal is to count the number of times each distinct word appears in the file."

### Answer

- **Option 1**
```
Reduce(key = word, values = uniq_counts):

{

Sum all 1’s in values list

Emit result (word, sum)

}
```

## Question 6

- Which one of the following features is a main factor in the philosophy of Apache Hadoop?

### Answer

- **Data parallelism across many machines**
	- Hadoop is designed to handle large- scale data processing tasks by distributing them across a cluster of commodity hardware
	- Data parallelism is crucial to this task, where the processing of data is distributed across multiple nodes within a cluster, enabling efficient processing of large datasets

## Question 7 

- What is one of the bottlenecks of the MapReduce programming model?

### Answer

- **Reduce phase can’t start until Map phase is completely finished**
	- Reduce phase can only begin once all Map tasks have been completely processed

## Question 8

- Which of the following state the purpose of Apache Spark?

### Answer

- **Extend the MapReduce model to better support iterative algorithms**
- **Enhance programmability**
	- Spark is designed to address some of the limitations listed above in the MapReduce model, including better support for iterative algorithms commonly used in ML and DA
	- Spark does this by introducing in- memory computing and a more flexible execution model compared to MapReduce

## Question 9

- Which technology is best suited for the following use case?
	- "Training a machine learning model on a large dataset with several iterations"

### Answer

- **Spark**
	- Spark's in- memory computing feature makes it well- suited for training ML models on large datasets with several iterations

## Question 10

- Select all of the transformations that can create an RDD

### Answer

- groupBy
- filter
- join
- map
	- All of the transformations above can create a RDD in Spark
	- RDD represent distributed collections of objects across the cluster that can be operated on in parallel

## Question 11

- Which technology is the best suited for the following use case?
	- "Interactively exploring a new large dataset"

### Answer

- **Spark**
	- Spark's interactive shell and in- memory computing features make it ideal for interactively exploring large datasets
	- Allows users to perform ad- hoc queries, data exploration and analysis interactively, providing quick responses to queries even in large datasets

## Question 12

- Which is **NOT** an advantage of resilient distributed datasets?

### Answer

- **Bandwidth is infinite**
	- RDD in Spark does offer fault tolerance and in- memory caching, but does not provide infinite badnwidth
	- Bandwidth constraints still apply when transferring data between nodes in a distributed computing environment

# CS498- Week 4 Practice Quiz

## Question 1

- Which technology is the best suited for the following use case?
	- "Finding the set of words utilized in the Wikipedia website"

### Answer

- Hadoop
	- Hadoop's distributed computing framework is suitable for processing large datasets as tasks can be parallelized across a cluster of machines for efficient processing

## Question 2

- Which technology is the best suited for the following use case?
	- "Assigning resources to a highly parallel application"

### Answer

- YARN
	- Yet Another Resource Negotiator
	- Resource management and job scheduling technology in Hadoop
	- Designed to allocate resource dynamically and efficiently to applications running in Hadoop clusters, making it best suited to assigning resources to a highly parallel application

## Question 3

- Which of the following is the proper Reduce function for this program?
	- "Image Smoother Program: To smooth an image, use a sliding mask and replace the value of each pixel."

### Answer

- Option 2
```
Reduce(key = x,y value = list of R,G,B)

compute average of R,G,B

emit (key, average R,G,B)
```

## Question 4

- Which of the following is the proper Map function for this program?
	- "Image Smoother Program: To smooth an image, use a sliding mask and replace the value of each pixel."

### Answer

- Option 1
```
Map(key = x,y, value = R,G,B)

emit intermediate(key, value)
```

## Question 5

- Which of the following pseudocode is the proper Reduce function for this program?
	- "Word Count Program: You have a huge text file that consists of many lines. The goal is to count the number of times each distinct word appears in the file."

### Answer 

- Option 2
```
Reduce(key = word, values = uniq_counts):

Sum all 1’s in values list

Emit result (word, sum)
```

## Question 6

- Which of the following pseudocode is the proper Map function for this program?
	- "Word Count Program: You have a huge text file that consists of many lines. The goal is to count the number of times each distinct word appears in the file."

### Answer

- Option 1
```
Map(key = line, value = contents):

for each word in value:

emit intermediate (word, 1)
```

## Question 7

- Select all of the solutions provided by Hadoop:

### Answer

- Data parallelism
	- Hadoop allows tasks to operate on different subnets of the data concurrently across multiple machines in a cluster

## Question 8

- What is the bottleneck of the MapReduce programming model?

### Answer

- Reduce phase can't start until Map phase is completely finished

## Question 9 

- What is YARN?

### Answer

- Yet Another Resource Negotiator
	- Serves as the resource management layer in Hadoop, responsible for managing resources across Hadoop clusters and job scheduling

## Question 10

- Which of the following state the purpose of Apache Spark?

### Answer

- Enhance programmability
- Extend the MapReduce model to better support two common classes of analytic applications
	- Spark offers in- memory computing capabilities and offers a more flexible execution model, making it more suitable for iterative algorithms and interactive DA

## Question 11

- Which technology is best suited for the following use case?
	- "Training a machine learning model on a large dataset with several iterations"

### Answer

- Spark
	- In- memory computing features and support for iterative algorithms make it suitable for training ML models on large datasets with several iterations

## Question 12

- Select all of the transformations which create an RDD:

### Answer

- filter
- map
- join
- groupBy
	- Extract is not a transformation that can create a RDD in Spark

## Question 13

- Apache Spark was created to solve the shortcomings of which technology?

### Answer

- MapReduce
	- Spark was created to overcome limitations present within MapReduce, offering faster and more flexible processing capabilities in comparison

## Question 14

- Which technology is best suited for the following use case?
	- "Exploring a new large dataset"

### Answer

- Spark
	- Spark's interactive shell and in-memory processing capabilities make it suitable for exploring large datasets interactively

## Question 15

- Which feature of Spark Scheduler avoids extra shuffles?

### Answer

- Partitioning-aware
	- Takes into account the partitioning of data when executing operations
	- Aims to minimize data shuffling and movement across the cluster through data locality & partition pruning

## Question 16

- Which of these frameworks is not built on Spark?

### Answer

- D- Streams
	- Discretized Stream
	- Abstraction in Spark streaming and is an extension of Spark API to process real- time streaming data

## Question 17

- Apache Spark cannot read from any Hadoop input.

### Answer

- False
	- Spark can read from a variety of data sources, which include Hadoop

## Question 18

- Which of these is not an advantage of resilient distributed datasets?

### Answer

- Bandwidth is infinite
	- RDDs do not provide infinite bandwidth

## Question 19

- Select all the properties of HDFS:

### Answer

- Massive throughput
- Throughput scales with attached HDs
- Optimized for reads, sequential writes and appends
- Synergistic with Hadoop
	- HDFS is designed to storing large datasets across distributed Hadoop clusters efficiently

## Question 20

- Which technology is best suited for the following use case?
	- "Storing a large set of images on thousands of computers"

### Answer

- HDFS
	- HDFS is designed to store large files/ datasets across distributed clusters, making it suitable for the aforementioned task