# CS498- Week 5

#cloud_computing

## Block Storage on the Cloud

###  Cloud Storage: Basics

- Cloud- Based Storage
	- Data storage as one of the first use cases for cloud computing
	- Cloud storage models have converged into a few main categories
- File System
	- Middleware between physical storage device and programs running on top of the OS
		- Block Storage
		- Typically 3 layers
			- Physical File System
				- Processes physical blocks being read or written
				- Handles buffering and memory management
				- Physical placement of blocks in specific locations on the storage medium
				- Interacts with the device drivers
			- Virtual File System
				- Support for the multiple concurrent instances of physical file systems, each of which is called a file system implementation
			- Logical File System
				- File access, directory operations, security & protection
				- Consistency is guaranteed
	- File systems contain metadata
		- An inode (index node) is present for each file or directory and provides:
			- Locations of the data blocks for the file
				- Data content of a file is stored as a sequence of file system blocks internally
			- Attributes about the file (e.g. "time last accessed" or "owner of file")
			- The inode table records where each inode is located, indexed by number
			- Directories are special files listing the names and inode numbers of files under the folder
- Block Storage
	- Internally, the data content of a file is stored as a sequent of file system *blocks*
		- Each block is a fixed number of bytes
			- The last block might not always be full
		- Within a block, all bytes are sequential
			- However, within a file, the blocks might not reside sequentially on the disk
		- Underlying storage systems are usually organized as blocks
			- Ideally, file system blocks are aligned with the storage system's blocks
- POSIX File System ([IEEE 1003.1-2017](https://standards.ieee.org/ieee/1003.1/7101/))
	- Set of operations that the file system has to support
	- POSIX file systems are organized as directories (folders) containing files (documents)
	- POSIX file systems are **logically** treated as a sequence of bytes
	- POSIX API
		- `mount`, `unmount` file system
		- `open`, `close` file descriptor
		- `seek`, `iseek`, `fseek` to a position in the byte stream
		- `write`, `read` to & from file descriptor
		- `mkdir`, `rmdir`, `create`, `unlink`, `link`, `symlink`
		- `fnctl` (e.g. byte range locks)
		- `stat`, `utimes`, `chmod`, `chown`, `chgrp`
		- Path names are case sensitive, components are separated with a `/`
- POSIX Semantics
	- Semantics
		- Defines what is and is not guaranteed to happen when a POSIX I/O API call is made
	- Example
		- After a write() to a regular file has successfully returned:
			- Any successful read() from each byte position in the file that was modified by that write() shall return the data specified by the write() for that position until such byte positions are again modified
			- Any subsequent successful write() to the same byte position in the file shall overwrite that file data
		- Write() is strongly consistent
			- A write() is required to block application execution until the system can guarantee that any other read() call will see the data that was just written
- Summary
	- Block Storage Model Overview
	- File System Layers
		- Physical
		- Virtual
		- Logical
	- POSIX File System
		- API
		- Semantics

### Cloud Block Storage Overview

- Cloud Storage: Block Storage- Instance Stores
	- Physical machine running the VM is physically connected to the storage device
		- Virtual devices whose underlying hardware is physically attached to the host computer for the instance
		- Data transfer is limited by SAT/ NVMe bandwidth
	- ![](assets/Throughputs.png)
	- Since the machine may be rented to someone else in the next minute, the data stored on the drive must not persist, it is **ephemeral**
		- Example
			- AWS Instance Store
			- Google: Local SSD
- Storage Virtualization
	- Process of presenting a logical view of the physical storage resources to a host computer system
		- Block Virtualization
		- File Virtualization
- Cloud Block Storage- Virtual Block Stores
	- Simulate a hard drive of SSD
	- Physical machine running the VM is separate from the physical machine hosting the data
		- NVMe over Fabric
			- NVMf or NVMe-oF
		- Data transfer is limited by network bandwidth
	- **Hypervisor** on the host machine has middleware that intercepts the network communication and presents the network stream of bytes to the VM as a "block storage device"
		- Example
			- AWS EBS as an NVMe device
			- Google Cloud: Persistent Disk
	- Typically less storage bandwidth than the previous option of EBS
		- Can select how much bandwidth you are willing to pay for
	- gp2 types are preselected & fixed
		- Input/ Output Operations per Second (IOPS)
		- e.g. 3 IOPS per GB, 16 KB per second per IOPS, min 100, max 16,000
		- Bursting Support
		- Note: A single EC2 instance can be attached to more than 1 EBS volume
	- Some instance types are EBS optimized
		- Bandwidth for EBS access is separate from network bandwidth
		- Other (micro, small, older generation) share network bandwidth
- AWS Elastic Block Storage
	- Depending on IO requirements, different offerings & prices are available
		- Example
			- gp2: up to 250MB per second @ $.10 per GB- month
			- io1: up to 1,000MB per second @ $.125 per GB- month & $.065 per IOPS- month
- Instance Store vs. EBS Throughput
	- ![](assets/InstanceVSThroughputs.png)

### Amazon AWS EBS Storage

- Amazon AWS Instance Store
	- Another form of cloud- hosted **temporary** block- level storage
		- Provided as part of an instance (e.g. Amazon EC2)
	- Contents will be lost if the cloud instance is stopped
		- However, it offers higher performance and bandwidth to the instance
		- Contents are located on disks that are physically attached to the host computer
	- Best used for temporary storage such as caching or temporary files, with persistent storage held on a different type of server
	- ![I](assets/InstanceStore.png)
- Instance Store Lifetime
	- Data persists only during the lifetime of its associated instance
		- It persists a reboot
	- Data is lost if:
		- Underlying disk drive fails
		- Instance is stopped
		- Instance is terminated
	- Reliability can be assured by:
		- Using a distributed file system (e.g. HDFS)
		- Backing up to S3 or EBS
- Instance Store Size
	- A typical instance store is small
		- SSD: 80 GB ~ 320 GB, up to 3,840 GB on x1.32xlarge
		- HDD: when available on older generation instances, up to 1,680 GB
- Amazon AWS EBS
	- EBS volumes are highly available and reliable
	- Can be attached to running instances in the same AZ
		- Persists independently of the life of an instance
	- Use when data must be quickly accessible and requires long- term persistence
	- Supports encryption
	- Up to 16 TB in size
	- Types
		- General Purpose SSD (gp2)
			- 100 IOPS per GiB, burst up to 10,000, 160 MB per second throughput
		- Provisioned IOPS SSD (io1)
			- Provision a specific level of performance
			- Up to 20,000 IOPS and 320 MB per second throughput
		- Throughput Optimized HDD (st1)
			- Low cost magnetic storage
			- Throughput of up to 500 MB per second
			- Large, sequential workloads such as Amazon EMR, ETL, data warehouses and log processing
		- Cold HDD (sc1)
			- Inexpensive magnetic
			- Throughput of up to 250 MB per second

## Object Storage on the Cloud

### Cloud Object Storage

- 

### OpenStack SWIFT

- 

## File System on the Cloud

### Cloud Managed File Systems

- 

### Amazon AWS Elastic File System

- 

### Ceph: Case Study

- 

## Archive Storage, Backups, Storage Gateways & Massive Data Transfers

### Cloud Archive Storage & Backup

- 

### AWS Glacier

- 

###  Storage Gateway & Mass Data Transfer

- 

## Internet- Level Personal File Systems

### Internet Level Personal File System

- 
