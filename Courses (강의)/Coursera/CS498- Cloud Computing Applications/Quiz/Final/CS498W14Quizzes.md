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

- You built a latest CentOS container on an Ubuntu host with kernel version 4.18
	- After you upgraded the Ubuntu kernel to 5.4, what will be the kernel version used by the built CentOS container?

### Answer 

- 5.4
	- Container always uses the host kernel

## Question 2

- Besides using Dockerfile to create container image, one can also start a container using existing image and install necessary packages on top of it to create a new image

### Answer 

- True
	- New container image can be created by installing necessary packages on top of the existing image

## Question 3

- All containers without a `--network` specified, are attached to the default bridge network
	- This is risky operation as it allows unrelated services to communicate

### Answer 

- True
	- Bridge is the default network of containers
	- The default bridge network is considered a legacy detail of Docker and is NOT recommended for production use since it allows unrelated services to communicate

## Question 4

- Which type of network connects multiple Docker daemons together and enables swarm services to communicate with each other?

### Answer 

- Overlay Network
	- Overlay network drive creates a distributed network among multiple Docker daemon hosts and enables swarm services to communicate with each other

## Question 5

- In Docker Swarm, `ingress` is a overlay network that handles control and data traffic related to swarm services

### Answer 

- True
	- In Swarm, two overlay networks play a role
		- `ingress` handles control and data traffic related to swarm services
		- User- defined overlay networks

## Question 6

- Docker internal load balancing is done using:

### Answer 

- Virtual IP
	- When a service is requested, the resulting DNS query is forwarded to the Docker Engine, which in turn returns the IP of the service, a virtual IP

## Question 7

- Which of the following statements is NOT true about Docker routing mesh?

### Answer 

- The routing mesh uses IP based service discovery and load balancing
	- The routing mesh uses **port based service discovery** and load balancing

## Question 8

- How can you mount a storage location on the host to a container?

### Answer 

- Bind Mount
- Volume
- `tmpfs`
	- To persist changes and to access data outside the container, we need to mount an external storage location
	- Three types of host to container mapping 1) Bind Mount, 2) Volume, 3) `tmpfs`

## Question 9

- How does a service get access to secret information in Docker Swarm?

### Answer 

- When you grant a newly-created or running service access to a secret, the decrypted secret is mounted into the container in an in-memory filesystem
	- A secret is a blob of data
	- Docker secrets are only available to swarm services, not to standalone containers
	- When you grant a newly-created or running service access to a secret, the decrypted secret is mounted into the container in an in- memory filesystem.

## Question 10

- Which of the following statements about Docker Compose is incorrect?

### Answer 

- Replaces the functionality of Dockerfile
	- It still needs Dockerfile to create images

