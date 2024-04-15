# CS498- Week 14

#cloud_computing

## Container Orchestration in Docker, Docker Swarm, ECS & ACI

### Docker Foundations

- Dockerfile
	- Are an *imperative* method to create a Docker image
	- ![](assets/Dockerfile.png)
- Running Docker Containers
	- `docker container run alpine echo "Hello World"`
	- First Execution
		- Will load the alpine image from Docker Hub
		- ![](assets/Dockerhub.png)
	- Following Execution (2+)
		- Just runs
- Daemon Mode: `exec`
	- ![](assets/DaemonEXEC.png)
		- Executes command in a running Docker container
			- [Documentation](https://docs.docker.com/reference/cli/docker/container/exec/)
- Ubuntu in Docker
	- ![](assets/UbuntuDocker.png)
- CentOS in Docker
	- ![](assets/CentOSDocker.png)
- Kernel Versions
	- Note
		- Groovy Gorilla version of Ubuntu is supposed to come with Linux Kernel v5.8
	- CentOS v8.3 is supposed to run Kernel 4.18.240
		- However, it runs with 4.19.121 in Docker Desktop 3.2.3
			- Engine 20.10.5
			- This is the host Linux kernel, shared with all the images
				- `bzImage`
				- `initramfs`
- Multi Stage Dockerfile
	- Multi stage allows us to not include unnecessary intermediate layers
		- ![](assets/MultiStageDocker.png)
		- Resulting image will be 4 MB instead of ~ 200 MB
- Image Registries
	- Docker Hub
	- Google
	- AWS Amazon Elastic Container Registry (ECR)
	- Microsoft Azure
	- Red Hat
	- Artifactory
- Full Namespace of Images
	- `<registry URL>/<User or Organization>/<name>:<tag>`
		- `public.ecr.aws/nginx/nginx:latest`
		- `public.ecr.aws/datadog/agent:latest`
		- `myregistry.azurecr.io/marketing/campaign10- 18/email-sender:v2`

### Docker Swarm Orchestration

- Container Orchestration
	- Many applications consist of multiple components that need to be distributed on more than one machine
		- Using containers, we can have each component running in its own container
	- Thousands of prebuilt components are available on public registries
- Docker vs. Swarm
	- ![](assets/DockerSwarm.png)
- Swarm Services
	- Swarm services use a *declarative* model, which means that you define the desired state of the service and use Docker to maintain the state
	- State
		- Image name and tag
		- How many containers (tasks) are in the service
		- Ports exposed to clients outside the swarm
- Nodes on Docker Swarm
	- ![](assets/DockerSwarmNodes.png)
- Services on Docker Swarm
	- ![](assets/DockerSwarmServices.png)
- Swarm Task States
	- Docker lets you create services which can start tasks
		- A service is a *description* of a desired state and a task does the work
		- Work is scheduled on swarm nodes in this sequence:
			- Create a service by using `docker service create`
			- Request goes to a Docker manager node
			- Docker manager node schedules the service to run on particular nodes
			- Each service can start multiple tasks
			- Each task has a lifecycle, with states like `NEW, PENDING` and `COMPLETE`
- Replicated & Global Tasks
	- ![](assets/Tasks.png)
- Example: Run a 3- Task Nginx Service on 10- Node Swarm
	- ![](assets/NginxNodeSwarm.png)
		- 3 tasks run on up to 3 nodes
		- You don't need to know which nodes are running the tasks
		- Connecting to `port 8080` on **any** of the 10 nodes connects you to **one** of the **three** Nginx tasks
			- Routing mesh
- Tasks & Scheduling
	- ![](assets/TasksScheduling.png)

### Docker Networks, Bridge & Overlay

- Docker Networking
	- Docker networks are pluggable using drivers
		- Bridge
		- Host
		- Overlay
		- `macvlan`
		- None
- Docker Bridge Networking
	- ![](assets/DockerBridgeNetworking.png)
		- Connect Nginx container to the `my-net` network
		- Any other container connected to the `my-net` network has access to all ports on the `my-nginx` container
		- **Also** publishes `port 80` in the container to `port 8080` on the Docker host, so external clients can access that port
			- User- defined bridge networks provide DNS resolution
- Docker Overlay Network Driver
	- Creates a distributed network among multiple Docker daemon hosts
		- Sits on top of (overlays) the host- specific networks
	- Docker transparently handles routing of each pack to and from the correct Docker daemon host and the correct destination container
	- In a swarm, two overlay networks play a role:
		- `ingress`, which handles control and data traffic related tasks to swarm services
		- User- defined overlay networks
			- `docker network create -d overlay my-overlay`
- User- Defined Overlay Networks
	- Swarm services connected to the same overlay network effectively expose all ports to each other
	- Encryption
		- All swarm service management traffic is encrypted by default using the AES algorithm in GCM mode
		- To encrypt the application data, use `--opt encrypted`
	- Subnet CIDR
		- ![](assets/SubnetCIDR.png)

### Internal Load Balancing

- X

### Routing Mesh & External Load Balancing

- X

### Volumes

- X

### Secrets & Configs

- X

### Compose & Stacks

- X

### Example: 3- Tier Architecture in Swarm

- X

### Compose Stacks on AWS ECS & Azure ACI

- X