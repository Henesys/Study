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

