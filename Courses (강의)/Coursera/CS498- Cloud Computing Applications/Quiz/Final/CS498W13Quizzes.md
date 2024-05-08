#cloud_computing 

Corresponds to [CS498W13Notes](../../W13/CS498W13Notes.md)

# CS498- Week 13 Quiz

## Question 1

- Which type of virtualization is feasible for the following scenario?
	- A service needs to run an unmodified OS on a basic processor, separate from the host operating system

### Answer

- Full Virtualization
	- Unmodified OS on a basic processor instead of a host OS makes paravirtualization and containers unsuitable for this task
	- Full virtualization allows for running multiple guest OS on a single host, including unmodified ones

## Question 2

- Which type of virtualization is feasible for the following scenario?
	- A service needs to run an unknown and unmodified OS on an advanced processor

### Answer

- Hardware Assisted
	- Hardware assisted virtualization provides support from the processor itself, assisting in running guest OS environment efficiently

## Question 3

- Which type of virtualization is feasible for the following scenario?
	- Running multiple independent applications sharing the same kernel

### Answer

- Containers
	- Containers are suitable for running multiple independent applications that are sharing the same kernel
	- They provide lightweight isolation, allowing each application to have its own CPU, memory, filesystem and process space while sharing the same kernel

## Question 4

- Which type of virtualization is feasible for the following scenario?
	- Running two independent applications, each needs a different version of a kernel module

### Answer

- Full Virtualization
	- Running two different applications can be achieved through full virtualization, where each application operates within its own VM environment

## Question 5

- Who is responsible for scheduling and memory management when using containers?

### Answer

- Host OS (Base OS) Kernel
	- In container- based systems, the same host kernel is shared among containers and this kernel is responsible for scheduling & memory management
	- The host OS kernel is responsible for scheduling and memory management among the containers

## Question 6

- Docker is used to:

### Answer

- Guarantee that the software will always run the same irrespective of environment
	- Using the `Dockerfile` format and relying on Union filesystem, Docker images downloaded from a hub guarantee specific software environments for deployment
	- Docker provides a consistent environment for applications to run by encapsulating them along with their dependencies

## Question 7

- Kubernetes provides a platform for automating deployment, scaling, and operations of application containers across clusters of hosts

### Answer

- True
	- Kubernetes provides a platform for automating deployment, scaling and operations of application containers across clusters of hosts

## Question 8

- A user application is not allowed to load control registers when running in kernel mode

### Answer

- False
	- In some situations, user applications running in kernel mode may need to load control registers

## Question 9

- In x86, kernel mode code runs in ring 0 while user processes run in ring 3

### Answer

- True
	- In x86, kernel mode code runs in ring 0, providing privileged access to system resources
	- User processes in ring 3 run with restricted access

## Question 10

- When a user application needs to handle an interrupt, it has to enter kernel mode

### Answer

- True
	- User applications often need to enter kernel mode to allow the kernel to handle the interrupt on their behalf

## Question 11

- Xen does not require special hardware support, such as Intel "VT-x" or "AMD-V"

### Answer

- True
	- Paravirtualization is a software- only virtualization approach
	- Xen is a type 1 hypervisor that does not require specific hardware support for virtualization

## Question 12

- Binary translation modifies all instructions on the fly and does not require changes to the guest operating system kernel

### Answer

- False
	- Binary translation only modifies sensitive instructions

## Question 13

- In unikernels, user application can transit to kernel mode using special instructions

### Answer

- False
	- There is only one address space in unikernel and the application can be seen as running in kernel mode the entire time
	- Unikernels are designed to minimize kernel surface area and typically does not allow user applications to transition to kernel mode directly

## Question 14

- Is it possible to install a second application with different dependencies into an existing unikernel?

### Answer

- False
	- Making changes to unikernel requires recompilation
	- Unikernel normally runs only one application

## Question 15

- Which of the following is **not** the reason that microVM is faster than a normal VM?

### Answer

- Having a minimal security protection
	- Using minimal device model and kernel configuration can reduce attacker surface of microVM and does not reduce security protection
	- MicroVMs typically offer strong security protections, stronger than the ones provided by a traditional VM

## Question 16

- AWS Lambda and AWS Fargate are using:

### Answer

- microVM
	- AWS Lambda and AWS Fargate use microVM for efficient and scalable execution of workloads

## Question 17

- Which generation of hardware virtualization introduced IOMMU virtualization?

### Answer

- Third
	- IOMMU (Input Output Memory Management Unit) virtualization was introduced in the 3rd generation, which helps manage memory mappings for I/O devices in virtualizes environments

# CS498- Week 13 Practice Quiz

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

