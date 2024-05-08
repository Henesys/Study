#cloud_computing 

Corresponds to [CS498W14Notes](../../W14/CS498W14Notes.md)

# CS498- Week 14 Quiz

## Question 1

- The latest CentOS comes with Linux kernel version 4.18
	- If you are running a latest CentOS container on a Ubuntu with kernel version 5.4, which kernel version would you see inside the container?

### Answer

- 5.4
	- Containers share the kernel of the **host** system, so the kernel version seen inside the container would be the *same* as the host's kernel version, which is 5.4

## Question 2

- Which is the default Docker network driver?

### Answer

- Bridge
	- Bridge is the default Docker network driver

## Question 3

- Containers on different networks can communicate using the bridge network

### Answer

- False
	- Containers on different networks cannot communicate using the bridge network

## Question 4

- For communication among containers running on different Docker daemon hosts, you should use:

### Answer

- Overlay Network
	- Overlay networks should be used for communication among containers running on different Docker daemon hosts

## Question 5

- For containers running on different host to communicate, you should use:

### Answer

- Overlay Network
	- Overlay networks should be used for communication among containers running on different Docker daemon hosts

## Question 6

- For a container to communicate with another container running on the default bridge network, one can use either the target container's IP address or its container name directly

### Answer

- False
	- It's only possible to use the container name in a user- defined bridge network

## Question 7

- Docker Swarm routing mesh will report an error if an external load balancer reaches a node that does not have a task belonging to the requested service

### Answer

- False
	- Routing mesh will automatically route the incoming traffic to a node that has a service task running on it

## Question 8

- When you publish a service port, the swarm makes the service accessible at the target port only on nodes that have a task running for that service

### Answer

- False
	- When you publish a service port, the swarm makes the service accessible at the target port on *all* nodes

## Question 9

- You are working on a course MP and want to use the IDE on host to edit codes and run the codes inside a container
	- Which is the best way to make the codes accessible inside the container?

### Answer

- Bind Mount
	- Bind mounts are the best way to make the codes accessible inside the container

## Question 10

- AWS ECS has two launch types: EC2 and Fargate. 
	- EC2 will automatically manages all resource provisioning while for Fargate it's managed by customer

### Answer

- False
	- EC2 requires customer management
	- Fargate automatically manages resource provisioning

# CS498- Week 14 Practice Quiz

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

