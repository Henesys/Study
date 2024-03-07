#cloud_computing 

Corresponds to [CS498W6Notes](../../W6/CS498W6Notes.md)

# CS498- Week 6 Quiz

## Question 1

- Compared to NoSQL, NewSQL sacrifices:

### Answer

- **some availability for stronger consistency**
	- X
- strong consistency for high availability
- strong consistency for partition tolerance
- partition tolerance for high availability

## Question 2

- In multi- node RDBMS with master/ slave asynchronous replication, normally the:

### Answer

- **binlog is on the master, and the relay log is on the slave**
	- X
- binlog is on the slave, and the relay log is on the master
- binlog and relay log are both on the master
- binlog and relay log are both on the slave

## Question 3

- Which has faster commits (at the expense of possibly weaker consistency)?

### Answer

- **Asynchronous Replication**
	- X
- Semi- Synchronous Replication

## Question 4

- Which would you choose for scalability (as opposed to availability or disaster recovery)?

### Answer

- **Read Replicas**
	- X
- Multi- Region Deployments
- Multi- AZ Deployments

## Question 5

- In Amazon AWS Aurora, the log is the database.

### Answer

- **True**
	- X
- False

## Question 6

- Is is impossible for a distributed system to have guaranteed consistency, availability and partition tolerance simultaneously (following the CAP theorem).
	- Which does Google Cloud Spanner sacrifice?

### Answer

- **Availability**
	- X
- Consistency
- Partition Tolerance

## Question 7 

- A timestamp in the TrueTime API is a single value, exposing clock uncertainty.

### Answer

- **False**
	- X
- True

## Question 8

- Which is **NOT** one of the CosmosDB Consistency Models?

### Answer

- **Strong- read- weak- write**
	- X
- Eventual
- Bounded- staleness
- Strong
- Consistent Prefix
- Session

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