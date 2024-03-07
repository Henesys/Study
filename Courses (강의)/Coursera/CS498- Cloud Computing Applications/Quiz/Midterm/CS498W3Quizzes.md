#cloud_computing 

Corresponds to [CS498W3Notes](../../W3/CS498W3Notes.md)

# CS498- Week 3 Quiz

## Question 1

- Which storage technology is the best for the following scenario?
	- "An application that works with 2 TBs of sound files for a few weeks"

### Answer

- **AWS S3**
	- X
- Lambda
- Instance Store

## Question 2

- Which storage technology is the best for the following scenario?
	- "Sync files on a few personal devices"

### Answer

- **Dropbox**
	- X
- Google AppEngine
- AWS DynamoDB
- AWS S3

## Question 3

- You have a whole application already written that you want o deploy to the cloud without much re- architecting. Which of the cloud models would best fit this scenario?

### Answer

- **Microsoft Azure App Service**
	- X
- Amazon EC2
- IBM Cloudant
- Oracle Functions

## Question 4

- In almost all serverless function as a service offerings, how are the functions called?

### Answer

- **Events that are collected by the cloud backend and trigger your function**
	- X
- You have to deploy a pub-sub middleware such as Apache or similar engines to collect events and route them to the right function
- The functions are periodically executed, with frequency depending on the observed traffic

## Question 5

- How can you utilize a Lambda function as an RPC using a WebSocket call?

### Answer

- **You have to declare a route through Amazon API Gateway**
	- X
- By deploying an instance of a webserver using an approved web-server AMI on an EC2 instance, and connecting it to your lambda functions on AWS console
- Using Amazon CloudWatch to "watch" for incoming RPC calls, and routing them to the right Lambda function

## Question 6

- Which one of the following is correct?

### Answer

- **Function as a Service deployment should be stateless, and rely on an external storage service for state storage**
	- X
- Function as a Service deployment support state storage by launching an instance of a relational database in the same container, and can access it using SQL commands
- Function as a Service deployment support in-built state storage, accessible through a special state manipulation API
- Function as a Service deployment Should be stateless, and as such are severely limited in what they can accomplish

## Question 7 

- How does Dropbox API handle authentication?

### Answer

- **OAuth Protocol**
	- X
- By using persistent cookies in the HTTP session
- Dropbox API doesn't offer authentication service and third party plugins should be used

## Question 8

- Which of the following statements are true regarding Amazon S3?

### Answer

- **A process writes a new object to Amazon S3 and immediately lists keys within its bucket. Until the change is fully propagated, the object might not appear in the list.**
	- X
- **A process writes a new object to Amazon S3 and immediately attempts to read it. Until the change is fully propagated, Amazon S3 might report "key does not exist."**
	- X
- **Amazon S3 has a weak consistency model.**
	- X
- Object writes to S3 immediately take effect.

## Question 9

- What underlying technologies are typically utilized to offer serverless compute cloud offerings?

### Answer

- **Kubernetes**
	- X
- HDFS
- Analytics & AI Packages
- Metal as a Service (MaaS) Provisioning Systems

## Question 10

- Which one of the following are examples of NOSQL key/ value store cloud offerings?

### Answer

- **Microsoft Azure CosmosDB**
	- X
- **Amazon DynamoDB**
	- X
- IBM Object Storage
- Google Cloud Filestore

# CS498- Week 3 Practice Quiz