#cloud_computing 

Corresponds to [CS498W15Notes](../../W15/CS498W15Notes.md)

# CS498- Week 15 Quiz

## Question 1

- Which of the following is not a function of Kubernetes?

### Answer

- Create container image based on user specified requirements
	- Kubernetes is a platform to orchestrate the deployment, scaling and management of container-based applications
		- It does not create container image based on user specified requirements
	- Kubernetes does:
		- Schedule containers to run on physical or virtual machines
		- Scale the application instances up or down
		- Manage updates and rollbacks

## Question 2

- What is the smallest control unit in Kubernetes?

### Answer

- Pod
	- A pod can contain one or more containers, which are tightly coupled and share the same network namespace amongst other resources

## Question 3

- How many master nodes does Kubernetes have?

### Answer

- User Defined

## Question 4

- A pod is a Kubernetes abstraction that represents a group of:

### Answer

- One or more application containers
	- A pod is a grouping of one or more containers (e.g. Docker or RKT) that share some namespaces

## Question 5

- Which of the following is not a component of the master node?

### Answer

- `kube-proxy`
	- A master node contains API server, controller, scheduler and `etcd`
	- `kube-proxy` is part of the worker node

## Question 6

- Kubernetes can only support Docker container runtime

### Answer

- False
	- Kubernetes is deprecating Docker as a container runtime after v1.20
	- Kubernetes can support other container runtimes such as `containerd` and CRI-O

## Question 7

- Sidecar model requires two nodes to work

### Answer

- False
	- Sidecar is a single node pattern
	- The sidecar pattern involves attaching additional containers to the main application container within the same pod, so it still runs on the *same* node

## Question 8

- Which component of the Kubernetes cluster node is responsible for implementing a form of virtual IP for services?

### Answer

- `kube-proxy`
	- `kube-proxy` is responsible for implementing a form of virtual IP for services
	- It manages the network routing for TCP and UDP packets

## Question 9

- Which component of Kubernetes cluster node is responsible for managing the pods?

### Answer

- Kubelet
	- Kubelet is an agent that runs on each node within the cluster and is responsible for managing the pods so that the containers are running in a pod

## Question 10

- Which component of the Kubernetes master node is responsible for storing the state of the cluster?

### Answer

- `etcd`
	- `etcd` is a highly available consistent key- value store and is used to store the *state* of the cluster
	- It is the single source of truth for the cluster
