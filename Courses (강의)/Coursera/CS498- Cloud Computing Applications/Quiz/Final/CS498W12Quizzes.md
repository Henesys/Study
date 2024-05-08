#cloud_computing 

Corresponds to [CS498W12Notes](../../W12/CS498W12Notes.md)

# CS498- Week 12 Quiz

## Question 1

- What is load shedding?

### Answer

- The process of eliminating events to keep up with the rate of events

## Question 2

- Which of the following is correct?

### Answer

- A bolt processes input streams and produces new streams
	- In Storm, bolts are processing units that receive input streams, perform processing on that input and optionally emit new streams as the output

## Question 3

- In a Storm program that produces a sorted list of the top K most frequent words encountered across all the documents streamed into it, four kinds of processing elements (bolts in Storm) might be created: QuoteSplitterBolt, WordCountBolt, MergeBolt, and SortBolt
	- What is the order in which words flow through the program?

### Answer

- QuoteSplitterBolt, WordCountBolt, SortBolt, MergeBolt
	- `QuoteSplitterBolt`
		- Splits stream into words
	- `WordCountbolt`
		- Counts occurrences of each word
	- `SortBolt`
		- Sorts words based on their counts
	- `MergeBolt`
		- Combines results from different tasks into one

## Question 4

- What does Trident do?

### Answer

- Provides a persistent state for the bolts, but the exact implementation is up to the user

## Question 5

- What are streams in Apache Storm?

### Answer

- Unbounded sequences of tuples
	- Streams in Apache Storm represent an unbounded sequence of data tuples that are processed by the system

## Question 6

- What are spouts in Apache Storm?

### Answer

- Sources of streams
	- Spouts are sources of data streams which emit streams into the topology for processing

## Question 7

- What are topologies in Apache Storm?

### Answer

- Networks of spouts and bolts
	- Directed graph of computation nodes (spouts and bolts) where edges represent the flow of data

## Question 8

- In the “At Least Once” message process, what happens if there is a failure?

### Answer

- Events are double processed
	- If there's a failure, events may be reprocessed, potentially leading to duplicates

## Question 9

- How does Thrift contribute to Storm?

### Answer

- Allows Storm to be used from many languages
	- Thrift is a framework for scalable cross- language services development, which Storm utilizes to support multiple programming languages for building components

## Question 10

- Which of the following statements is true?

### Answer

- Spark Streaming chops a stream into small batches and processes each batch independently
	- Spark Streaming divides data into batches rather than as one chunk, which allows for efficient processing using micro- batch processing

## Question 11

- Which of the following best describes Lambda architecture? (Not to be confused with AWS Lambda)

### Answer

- A parallel processing pipeline of two branches: a stream processing pipeline and a batch processing pipeline
	- Lambda architecture combines real- time and batch processing to handle large quantities of data efficiently

## Question 12

- Which of the following best describes Kappa architecture?

### Answer

- Only one stream processing pipeline but with the ability to handle failures
	- Kappa architecture is a simplification of Lambda architecture by processing all data as streaming data and using the *same* pipeline for *both* real- time and batch processing

## Question 13

- Which system has a great graphical UI to design dataflows?

### Answer

- NiFi
	- Apache NiFi is known for its user- friendly GUI for designing workflows

# CS498- Week 12 Practice Quiz

## Question 1

- Which of the following is correct?

### Answer 

- A bolt processes input streams and produces new streams
	- A bolt is a processing unit that receives streams from spout/ bolt and emits its processing result as new stream

## Question 2

- In a Storm program that produces a sorted list of the top K most frequent words encountered across all the documents streamed into it, four kinds of processing elements (bolts in Storm) might be created: QuoteSplitterBolt, WordCountBolt, MergeBolt, and SortBolt
	- What is the order in which words flow through the program?

### Answer 

- QuoteSplitterBolt, WordCountBolt, SortBolt, MergeBolt
	- The QuoteSplitterBolt splits sentence into list of words so that WordCountBolt can count the frequency of each word. The SortBolt then sorts the words by frequency, while the MergeBolt merges and returns the final retult

## Question 3

- What are streams in Apache Storm?

### Answer 

- Unbounded sequences of tuples
	- Stream represents the data flow (in format of tuples) in Storm

## Question 4

- What are spouts in Apache Storm?

### Answer 

- Sources of streams
	- Spouts are used to generate the initial data streams

## Question 5

- What are bolts in Apache Storm?

### Answer 

- Processors of input
	- Bolts are the computation/processing units in Storm

## Question 6

- What are topologies in Apache Storm?

### Answer 

- Networks of spouts and bolts
	- Topologies include definitions of both spouts and bolts, as well as their wired connections

## Question 7

- In the “At Least One” message process, what happens if there is a failure?

### Answer 

- Events may be double processed
	- Using occasional double-process to provide "At Least One" guarantee

## Question 8

- How does Trident treat state?

### Answer 

- Trident has first class support for state, but the exact implementation is up to the application developer

## Question 9

- How does Thrift contribute to Storm?

### Answer 

- Allows Storm to be used from many language
	- Thrift allows users to define and create services which are both consumable by and serviceable by numerous languages

## Question 10

- Which of the following statements holds true?

### Answer 

- Spark Streaming chops a stream into small batches and processes each batch independently
	- Microbatch

## Question 11

- Which of the following best describes Lambda architecture?

### Answer 

- A parallel processing pipeline of two branches: a stream processing pipeline and a batch processing pipeline
	- The first processing path would use a stream event processing system like Storm
	- On the parallel path, you have the batch processing system

## Question 12

- Which of the following best describes Kappa architecture?

### Answer 

- Only a stream processing pipeline but with the ability to handle failures
	- In Kappa Architecture, they try to get away from the two pile paths and streaming
	- They just do the streaming such that if there are failures, the state doesn't get messed up

## Question 13

- Which of the following is not a component of the Storm Architecture?

### Answer 

- HDFS
	- HDFS is the storage part of Hadoop

## Question 14

- What is the main disadvantage of Spark Streaming?

### Answer 

- It is microbatch, which increase the minimum end-to-end latency of the system
	- The disadvantage is that it's not really streaming in the strictest sense
	- It batches data and runs that batch of data very quickly

## Question 15

- Which system is best for Online Analytical Processing (OLAP)?

### Answer 

- Druid
	- Druid provides tricks that processes OLAP queries quickly

## Question 16 

- Which system has a great graphical UI to design dataflows?

### Answer 

- NiFi
	- In NiFi, you can design a graph to process your data

