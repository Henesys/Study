#cloud_computing 

Corresponds to [CS498W5Notes](../../W5/CS498W5Notes.md)

# CS498- Week 5 Quiz

## Question 1

- Which storage technology is the best for the following scenario?
	- "Application needs to update structured data frequently"

### Answer

- **Ceph**
	- Ceph is a storage platform that provides object storage, block storage and files storage built on a common distributed cluster foundation
	- It supports frequent updates to structured data
	- Provides high availability and scalability, making it suitable for applications that require frequent updates

## Question 2

- Which storage technology is the best for the following scenario?
	- "Store an operating system and application binaries remotely"

### Answer

- **OpenStack Swift**
	- Offers cloud storage software so that you can store and retrieve data with a API
	- Ideal for storing unstructured data that can grow without bound
	- Highly available, distributed object storage system designed for storing large amounts of data remotely
	- Well suited for storing OS and application binaries due to its reliability and scalability

## Question 3

- Which storage technology is the best for the following scenario?
	- "An application that works with 80 GBs of images on in- house data center"

### Answer

- **Swift**
	- Swift is suitable for the aforementioned scenario because it provides efficient storage and retrieval of large binary objects like 80 GBs of images

## Question 4

- Which storage technology is the best for the following scenario?
	- "An application that stores 200 GBs of binary data for a few minutes and doesn't need it to be persistent if the instance running it fails"

### Answer

- **Instance Store**
	- Instance Store provides a temporary block- level storage for EC2 instances
	- It is an ephemeral storage that is ideal for storing temporary data that does not need to be preserved beyond the lifetime of the instance

## Question 5

- Which storage technology is the best for the following scenario?
	- "An application that archives 2,000 TB of data for a year"

### Answer

- **AWS Glacier**
	- Designed for long- term archival storage at a low cost
	- Suitable for storing large amounts of data that are rarely accessed but need to be retained for compliance or archival purposes

## Question 6

- Which storage technology is the best for the following scenario?
	- "An application that stores and queries 2,000 TB of binary data for a few weeks"

### Answer

- **AWS S3**
	- S3 is a highly scalable object storage service that is suitable for storing and querying large amounts of data for a *short* duration
	- Provides reliable and durable storage with low latency access

## Question 7

- Which storage technology is the best for the following scenario?
	- "Application running on a single node, nodes to store 10 GB of data for a few minutes"

### Answer

- **Local Hard Disk/ Instance Store**
	- Local hard disk/ instance store is suitable for storing temporary data on a single node for a short duration
	- Provides fast access and is suitable for temporary (transient) storage requirements

## Question 8

- Why do object stores such as AWS S3 cost less than managed file systems such as AWS FSx Lustre?

### Answer

- **Because of the relaxed consistency requirements of S3, building the distributed system to support it is much easier.**
	- S3 have relaxed (weak/ eventual) consistency requirements compared to managed file systems like FSx Lustre
	- Makes building and maintaining the distributed system for object storage easier and more cost effective, resulting in lower storage costs

# CS498- Week 5 Practice Quiz

## Question 1

- Which storage technology is best for the following scenario?
	- "An application that archives 1,000 TB of data for two years for compliance reasons"

### Answer

- Glacier Deep Archive
	- Designed for long- term archival storage at a low cost, making it suitable for storing large amounts of data for compliance reasons

## Question 2

- Which storage technology is best for the following scenario?
	- "Sync files on a few personal devices"

### Answer

- Dropbox
	- File hosting service that allows users to sync files across multiple devices, making it ideal for personal file synchronization

## Question 3

- Which is NOT one of the three layers of a file system?

### Answer

- Ephemeral File System
	- Not one of the three layers of a file system
	- File System: Structured way to manage and access files and directories
		- Physical File System (Physical Storage Layer)
			- Deals with physical aspects of storing data on storage devices
			- Manages how data is physically written to and read from storage media such as hard disks
			- Handles tasks such as disk partitioning, formatting and managing storage blocks
		- Virtual File System (VFS)
			- Provides an abstraction between physical storage layer and the rest of the OS
			- Presents a unified interface to applications and system services for accessing file and directories, regardless of the underlying storage device or file system format
		- Logical File System (File Management Layer)
			- Responsible for organizing and managing files in a structured hierarchy
			- Defines high level concepts and operations used to create, read, write and delete files & directories
			- Provides features such as file naming conventions, permissions, access control, file metadata and directory structures

## Question 4

- Experiments have shown that AWS Instance Stores perform at least an order of magnitude or more better than AWS Elastic Block Stores in throughput tests in comparable settings.

### Answer

- False
	- Instance Stores are ephemeral storage volumes that are directly attached to the host computer and are suitable for temporary storage
	- They are not superior to EBS in terms of durability and persistence

## Question 5

- Check all that apply.
	- AWS Instance Store is:

### Answer 

- well- suited for caching
- located on disks that are physically attached to the host computer
- well- suited for temporary logs

## Question 6

- Check all that apply.
	- Which of the following are examples of clustered file systems?

### Answer

- Lustre
- Ceph
- NFS (Network File System)
- SMB (Server Message Block)

## Question 7

- Ceph achieves high performance in part by storing data and its accompanying metadata in the same server for faster access.

### Answer

- False
	- Ceph achieves high performance by distributing data and metadata across multiple servers in a cluster, allowing for scalable & parallel access
	- Data and metadata are decoupled in Ceph

## Question 8

- Internet- level personal file systems like Dropbox have strict access pattern limits, ensuring that they make a profit on each customer.

### Answer

- False
	- Internet- level personal file systems typically do not impose strict access pattern limits

## Question 9 

- Check all that apply:
	- Which of these are Internet- Level Personal File Systems?

### Answer

- Apple iCloud Drive
- Dropbox
- Microsoft OneDrive

## Question 10

- When compared to Amazon EBS PIOPS, Amazon EFS (Elastic File Store):

### Answer

- is stored across multiple availability zones (AZs), rather than one


