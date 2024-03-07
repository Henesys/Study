#cloud_computing 

Corresponds to [CS498W5Notes](../../W5/CS498W5Notes.md)

# CS498- Week 5 Quiz

## Question 1

- Which storage technology is the best for the following scenario?
	- "Application needs to update structured data frequently"

### Answer

- **Ceph**
	- X
- HIVE
- Swift

## Question 2

- Which storage technology is the best for the following scenario?
	- "Store an operating system and application binaries remotely"

### Answer

- **Swift**
	- X
- HIVE
- HDFS

## Question 3

- Which storage technology is the best for the following scenario?
	- "An application that works with 80 GBs of images on in- house data center"

### Answer

- **Swift**
	- X
- HIVE
- AWS S3

## Question 4

- Which storage technology is the best for the following scenario?
	- "An application that stores 200 GBs of binary data for a few minutes and doesn't need it to be persistent if the instance running it fails"

### Answer

- **Instance Store**
	- X
- AWS Glacier
- AWS S3

## Question 5

- Which storage technology is the best for the following scenario?
	- "An application that archives 2,000 TB of data for a year"

### Answer

- **AWS Glacier**
	- X
- Dropbox
- AWS S3

## Question 6

- Which storage technology is the best for the following scenario?
	- "An application that stores and queries 2,000 TB of binary data for a few weeks"

### Answer

- **AWS S3**
	- X
- Redis
- AWS Glacier

## Question 7

- Which storage technology is the best for the following scenario?
	- "Application running on a single node, nodes to store 10 GB of data for a few minutes"

### Answer

- **Local Hard Disk/ Instance Store**
	- X
- AWS S3
- HDFS

## Question 8

- Why do object stores such as AWS S3 cost less than managed file systems such as AWS FSx Lustre?

### Answer

- **Because of the relaxed consistency requirements of S3, building the distributed system to support it is much easier.**
	- X
- Because storage in AWS S3 is ephemeral, while storage in Lustre is non-volatile.
- Because S3 is not replicated and therefore less reliable, while Lustre has replication.

# CS498- Week 5 Practice Quiz