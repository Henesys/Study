#cloud_computing 

Corresponds to [CS498W7Notes](../../W7/CS498W7Notes.md)

# CS498- Week 7 Quiz

## Question 1

- Map in HBase is indexed by:

### Answer

- **Row Key, Column Key, Timestamp**
	- Allows for efficient retrieval and storage of data based on these keys
## Question 2

- Select all that apply:
	- An HFile:

### Answer

- **Is an on- disk file format representing a map from a string to a string**
- **Is a persistent ordered immutable map from keys to values**
- **Is stored in HDFS**
	- HFiles in HBase are represented as on- disk files, persistently storing data in an ordered and immutable map format
	- Stored in HDFS

## Question 3

- The HBase master assigns an HRegion to HRegion servers.

### Answer

- **True**
	- In HBase, the HBase master does assign HRegions to HRegion servers
	- Helps in distributing the data across the cluster

## Question 4

- Which of the following would be best for the following use case?
	- "Record user activity like page views, searches, and clicks on a website and make that data readily accessible and available to process in a streaming manner"

### Answer

- **Apache Kafka**
	- Suited for recording user activity like page views, searches and clicks on a website due to its distributed, fault- tolerant and scalable nature, making data readily accessible for streaming processing

## Question 5

- Processes that subscribe to topics and process the feed of published messages are:

### Answer

- **Consumers**
	- Processes that subscribe to topics and process the feed of published messages are called consumers in the context of messaging systems like Apache Kafka

## Question 6

- Each topic has partitions and each partition is ordered, numbered and immutable.

### Answer

- **True**
	- Each topic in Kafka does have partitions and each partition is ordered, numbered & immutable
	- Facilitates scalability and parallel processing of messages

## Question 7 

- Which storage technology is the best for the following scenario?
	- "An application which needs complicated queries on structured data"
### Answer

- **HIVE**
	- HIVE is a data warehouse infrastructure built on top of Hadoop that provides tools to enable easy data summarization, querying and analysis of large datasets

## Question 8

- In Apache Spark SQL, what is a DataFrame?

### Answer

- **A dataset organized into named columns**
	- A DataFrame is a distributed collection of data organized into named columns
	- Represents a structured set of data and supports various operations similar to a relational database table

# CS498- Week 7 Practice Quiz

## Question 1

- In Kafka, processes that subscribe to topics and process the feed of published messages are:

### Answer

- Consumers
	- In the context of messaging systems like Kafka, consumers are processes that subscribe to topics and processes the feed of published messages

## Question 2

- Each topic has partitions and each partition is ordered, numbered and mutable.

### Answer

- False
	- Each partition in Kafka is ordered and numbered, but **partitions are immutable**

## Question 3

- Logging is a good use case for Redis.

### Answer

- True
	- Logging needs to be fast and the in- memory approach to data storage that Redis takes is well suited to keep up with intense logging demands.

## Question 4

- Which is better for fast record lookup?

### Answer

- HBase
	- HBase has indexed storage and efficient retrieval mechanisms

## Question 5

- HDFS is built on HBase.

### Answer 

- False
	- HDFS and HBase are separate components of the Hadoop ecosystem

## Question 6

- Which has better support for incremental addition of small batches (e.g. record- level insertion)?

### Answer

- HBase
	- HDFS is better for storing large volumes of data reliably and providing high throughput access to the data
	- HBase's ability to handle large- scale, sparse datasets and efficient storage/ retrieval of data make it better optimized for handling small incremental updates

## Question 7

- Which is NOT one of the building blocks of HBase?

### Answer

- Redis

## Question 8

- HFiles are optimized so users can quickly update the values associated with keys.

### Answer

- False
	- HFiles in HBase are not optimized for quick updates of values associated with keys
	- HFiles are designed for *efficient storage and retrieval*, which are **immutable once written**

## Question 9 

- The HIVE approach translates queries into map/ reduce jobs.

### Answer

- True

## Question 10

- Select all that apply:
	- Spark SQL can read data from:

### Answer

- HDFS
- JSON
- HIVE Tables
	- Spark SQL can read data from various sources

## Question 11

- Which of the following is true?

### Answer

- Message queuing systems can handle changes in demand.
	- They are designed to handle fluctuations in message processing demand

## Question 12

- What policy does Memcached use?

### Answer

- Cache Aside
	- Cache aside is also known as lazy loading
	- When an application needs to retrieve data, it first checks the cache (Memcached) for the data
		- If it is found, it is returned
		- If it is not found (cache miss), the application fetches the data from the database
			- The application stores it in the cache for future use until the data expires or is evicted

## Question 13

- Which of the following prevents stale data in cache?

### Answer

- Write Through
	- Applicating data is written into the cache and source at the same time ensuring that the cache never gets stale.