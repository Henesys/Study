#cloud_computing 

Corresponds to [CS498W3Notes](../../W3/CS498W3Notes.md)

# CS498- Week 3 Quiz

## Question 1

- Which storage technology is the best for the following scenario?
	- "An application that works with 2 TBs of sound files for a few weeks"

### Answer

- **AWS S3**
	- S3 (Simple Storage Service) is well suited for storing large amounts of data (in this case, sound files) due to its durability, scalability and ease of use
	- Lambda is a serverless compute service not suitable for long- term file storage
	- Instance Store is an ephemeral storage that is attached to EC2 instances, also not suitable for long- term file storage

## Question 2

- Which storage technology is the best for the following scenario?
	- "Sync files on a few personal devices"

### Answer

- **Dropbox**
	- Dropbox is a file synchronization service designed for syncing files across personal devices

## Question 3

- You have a whole application already written that you want o deploy to the cloud without much re- architecting. Which of the cloud models would best fit this scenario?

### Answer

- **Microsoft Azure App Service**
	- Allows you to deploy existing applications to the cloud without significant re- architecting
	- Supports various programming languages and frameworks while providing a platform for hosting web applications, APIs and mobile backends

## Question 4

- In almost all serverless function as a service offerings, how are the functions called?

### Answer

- **Events that are collected by the cloud backend and trigger your function**
	- In serverless FaaS offerings like AWS Lambda, functions are typically triggered by events such as HTTP requests, database file changes, file uploads or scheduled invocations
	- Cloud backend collects the events and invokes the corresponding function

## Question 5

- How can you utilize a Lambda function as an RPC using a WebSocket call?

### Answer

- **You have to declare a route through Amazon API Gateway**
	- API Gateway allows you to create WebSocket APIs that can route incoming WebSocket messages to AWS Lambda functions
	- When you define routes and integrations in API Gateway, you can invoke the Lambda functions in response to WebSocket calls

## Question 6

- Which one of the following is correct?

### Answer

- **Function as a Service deployment should be stateless, and rely on an external storage service for state storage**
	- FaaS deployments (e.g. AWS Lambda) are typically stateless, meaning they do not maintain the state in between invocations
	- Any required state should be stored externally in a database or a persistent storage service like S3

## Question 7 

- How does Dropbox API handle authentication?

### Answer

- **OAuth Protocol**
	- OAuth allows users to grant third- party applications limited access to their account without sharing credentials

## Question 8

- Which of the following statements are true regarding Amazon S3?

### Answer

- A process writes a new object to Amazon S3 and immediately lists keys within its bucket. Until the change is fully propagated, the object might not appear in the list.
- A process writes a new object to Amazon S3 and immediately attempts to read it. Until the change is fully propagated, Amazon S3 might report "key does not exist."
- Amazon S3 has a weak consistency model.
	- S3 has **eventual** consistency, which means that changes to objects will take time to propagate across all regions and replicas
	- This may lead to scenarios in which a newly written object may not immediately appear in listing or may be reported as non- existent until the propagation is complete
	- Eventual consistency is a specific form of weak consistency

## Question 9

- What underlying technologies are typically utilized to offer serverless compute cloud offerings?

### Answer

- **Kubernetes**
	- Serverless compute cloud offerings typically use container orchestration technologies like Kubernetes to manage the execution environment for serverless functions
	- Kubernetes helps in scaling, scheduling and managing the lifecycle of containers that are running the serverless workloads

## Question 10

- Which one of the following are examples of NOSQL key/ value store cloud offerings?

### Answer

- **Microsoft Azure CosmosDB**
- **Amazon DynamoDB**
	- Services that provide scalable, high- performance and fully managed key/ value store databases suitable for various applications

# CS498- Week 3 Practice Quiz

## Question 1

- Which of the following is NOT considered a PaaS?

### Answer

- AWS Lambda
	- AWS Lambda is a serverless compute service, which is classified as FaaS not PaaS

## Question 2

- Which of these is not considered serverless computing?

### Answer

- Metal as a Service (MaaS)
	- MaaS requires its users to run on bare metal (e.g. raw server configuration), which is why it is not considered serverless

## Question 3

- Which -aaS is best described by the following:
	- "The unit of compute is a full app"

### Answer

- PaaS
	- Enables customers to develop, run and manage applications without the need to maintain the infrastructure
	- User selects which server/ platform they need, but do not need to manage it anymore.

## Question 4

- Amazon DynamoDB is an example of a:

### Answer

- Distributed NoSQL key/ value storage service
	- Distributed database that provides fast and predictable performance with good scalability

## Question 5

- Once you upload your code, AWS Lambda does NOT automatically handle:

### Answer 

- Permanently Saving State
	- AWS Lambda does not automatically handle permanently saving state
	- AWS Lambda is FaaS, which are stateless and rely on external storage solutions for state storage (e.g. databases or storage services like DynamoDB or S3)

## Question 6

- Amazon S3 BLOB storage aims to provide high availability primarily by:

### Answer

- Replicating the data to multiple machines
	- S3 achieves high availability by replicating data across multiple machines within a region.
	- This redundancy ensures that data remains accessible even if individual machines happen to fail

## Question 7

- Amazon S3 BLOB storage's consistency model guarantees that once an object is deleted by a process, it cannot be read by any other process.

### Answer

- False
	- S3 is an eventual (weak) consistency model
	- Once an object is deleted, it may still be readable for a short period of time until the deletion operation is fully propagated across every replica

## Question 8

- AWS Lambda is a good technology to use when you have a function that will take several days to run.

### Answer

- False, AWS Lambda functions are not allowed to run for more than a few minutes
	- Lambda functions are intended to be short- lived and are subject to a maximum execution duration

## Question 9 

- Amazon S3 BLOB storage uses a weak consistency model.

### Answer

- True
	- For the purposes of this course, weak = eventual

## Question 10

- BLOB stands for "Binary Large OBjects"

### Answer

- True
	- BLOB is a data type used to store binary data (e.g. images, sound files, video files)

## Question 11

- A social media company wants to use DynamoDB for storing posts of users.
	- Which storage indexing method should it use?

### Answer

- GSI (Global Secondary Index)
	- Allows for querying on non- primary key attributes and can help optimize queries for various access patterns
		- e.g. Searching with filters such as timestamp, likes, comments or other user- specific criteria
	- LSI (Local Secondary Index) are limited to querying on attributes with the same partition key as the base table