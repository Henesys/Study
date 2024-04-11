#cloud_computing 

Corresponds to [CS498W13Notes](../../W13/CS498W13Notes.md)

# CS498- Week 13 Quiz

## Question 1

- Which type of virtualization is feasible for the following scenario?
	- A service needs to run an unmodified OS on a basic processor, separate from the host operating system

### Answer

- Paravirtualization
- Container
- Full Virtualization

## Question 2

- Which type of virtualization is feasible for the following scenario?
	- A service needs to run an unknown and unmodified OS on an advanced processor

### Answer

- Hardware Assisted
- Paravirtualization

## Question 3

- Which type of virtualization is feasible for the following scenario?
	- Running multiple independent applications sharing the same kernel

### Answer

- Hardware Assisted Full Virtualization
- Containers

## Question 4

- Which type of virtualization is feasible for the following scenario?
	- Running two independent applications, each needs a different version of a kernel module

### Answer

- Containers
- Full Virtualization

## Question 5

- Who is responsible for scheduling and memory management when using containers?

### Answer

- Supervisor
- Virtual Machine Manager
- Host OS (Base OS) Kernel
- Hypervisor

## Question 6

- Docker is used to:

### Answer

- Guarantee that the software will always run the same irrespective of environment
- Send messages from one machine to another
- Monitor progress of jobs running on OpenStack
- Run a Java program

## Question 7

- Kubernetes provides a platform for automating deployment, scaling, and operations of application containers across clusters of hosts

### Answer

- True
- False

## Question 8

- A user application is not allowed to load control registers when running in kernel mode

### Answer

- True
- False

## Question 9

- In x86, kernel mode code runs in ring 0 while user processes run in ring 3

### Answer

- True
- False

## Question 10

- When a user application needs to handle an interrupt, it has to enter kernel mode

### Answer

- True
- False

## Question 11

- Xen does not require special hardware support, such as Intel "VT-x" or "AMD-V"

### Answer

- True
- False

## Question 12

- Binary translation modifies all instructions on the fly and does not require changes to the guest operating system kernel

### Answer

- True
- False

## Question 13

- In unikernels, user application can transit to kernel mode using special instructions

### Answer

- True
- False

## Question 14

- Is it possible to install a second application with different dependencies into an existing unikernel?

### Answer

- True
- False

## Question 15

- Which of the following is **not** the reason that microVM is faster than a normal VM?

### Answer

- Having a minimal device model
- Having a minimal security protection
- Having a minimal guest kernel configuration

## Question 16

- AWS Lambda and AWS Fargate are using:

### Answer

- Container
- microVM

## Question 17

- Which generation of hardware virtualization introduced IOMMU virtualization?

### Answer

- First
- Second 
- Third