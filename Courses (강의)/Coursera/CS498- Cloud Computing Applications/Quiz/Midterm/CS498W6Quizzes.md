#cloud_computing 

Corresponds to [CS498W6Notes](../../W6/CS498W6Notes.md)

# CS498- Week 6 Quiz

## Question 1

- Compared to NoSQL, NewSQL sacrifices:

### Answer

- **some availability for stronger consistency**
	- NewSQL sacrifices some availability for stronger consistency
	- NewSQL often prioritizes ACID (Atomicity, Consistency, Isolation, Durability) properties similar to traditional relational databases while aiming to scale out like NoSQL databases

## Question 2

- In multi- node RDBMS with master/ slave asynchronous replication, normally the:

### Answer

- **binlog is on the master, and the relay log is on the slave**
	- Binary log (binlog) containing changes made on the master is stored on the master, relay log containing replicated changes is stored on the slave

## Question 3

- Which has faster commits (at the expense of possibly weaker consistency)?

### Answer

- **Asynchronous Replication**
	- Asynchronous replication typically offers faster commits because the primary database doesn't wait for acknowledgement from secondary replicas before committing transactions

## Question 4

- Which would you choose for scalability (as opposed to availability or disaster recovery)?

### Answer

- **Read Replicas**
	- Chosen for scalability because they allow read- heavy workloads to be distributed among multiple replicas, thus scaling out the read capacity of the system

## Question 5

- In Amazon AWS Aurora, the log is the database.

### Answer

- **True**
	- The log is the database
	- Database instances write redo log records to the distributed storage layer
	- Storage takes care of constructing page images from log records on demands from the database

## Question 6

- Is is impossible for a distributed system to have guaranteed consistency, availability and partition tolerance simultaneously (following the CAP theorem).
	- Which does Google Cloud Spanner sacrifice?

### Answer

- **Availability**
	- CAP Theorem
		- It is impossible for a distributed system to simultaneously provide guaranteed **consistency**, **availability** and **partition tolerance**
		- Google Cloud Spanner sacrifices availability to maintain strong consistency and partition tolerance

## Question 7 

- A timestamp in the TrueTime API is a single value, exposing clock uncertainty.

### Answer

- **False**
	- Timestamp is not a single value, but a **range** that represents the uncertainty in the clock's readings across different nodes in the system

## Question 8

- Which is **NOT** one of the CosmosDB Consistency Models?

### Answer

- **Strong- read- weak- write**

## Question 9

- Which is **NOT** one of the four NoSQL categories?

### Answer

- **Unstructured Data**
	- X
- Graph DB
- Document
- BigTable
- Key- Value

# CS498- Week 6 Practice Quiz

## Question 1

- Choose all that apply:
	- The following are logged in a binary log:

### Answer

- CREATE
- ALTER
- INSERT
- UPDATE
- DELETE
	- The binary log contains a record of all changes to the databases, both data and structure, as well as how long each statement took to execute
	- This means that statements such as CREATE, ALTER, INSERT, UPDATE and DELETE will be logged, but statements that have no effect on the data, such as SELECT and SHOW, will not be logged

## Question 2

- What would you choose for high availability?

### Answer

- Multi- AZ deployments
	- Main purpose of multi- AZ deployments is to ensure high availability

## Question 3

- Google Spanner is the first real- world system to achieve guaranteed consistency, availability and partition tolerance (CAP).

### Answer

- False
	- CAP theorem says that no system can achieve consistency, availability and partition tolerance simultaneously
	- Google Spanner is no exception to this rule and sacrifices availability to preserve the other two characteristics

## Question 4

- A timestamp in the TrueTime API is an interval, which masks the clock uncertainty.

### Answer

- False
	- Timestamp is not an interval, it represents a point in time and is accompanies by an uncertainty interval that masks the clock's uncertainty

## Question 5

- CosmosDB is an eventually- consistent system, so if you want strong consistency, you must use a different system.

### Answer 

- False
- CosmosDB offers multiple consistency models, one of which is strong consistency

## Question 6

- Which replication strategy would likely have the fastest commits?

### Answer

- Asynchronous replication
	- Asynchronous replication first writes data to primary storage, then copies the data to the replica after that in a background process
	- The data gets committed once written to the primary storage
	- Fast commit, weak consistency

## Question 7

- What does the "I" in ACID stand for?

### Answer

- Isolation
	- ACID
		- Atomicity
		- Consistency
		- Isolation
		- Durability
	- Ensures execution of transactions concurrently does not result in data inconsistency

## Question 8

- Graph databases are considered one of the four NoSQL categories.

### Answer

- True
	- NoSQL Categories
		- Key/ Value
		- Graph
		- BigTable
		- Document

