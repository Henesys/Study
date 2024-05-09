#cloud_computing 

# W10: Cloud Based Analytics

## Cloud Analytics

- Business Intelligence
- Data Analytics
- Advanced Analytics
- OLTP vs. OLAP

## Data Cube

- What is a data cube?
	- What is it used for?
	- How does it apply to clouds?
- Relationship between data cubes and SQL databases?
- Who were Kimball and Inmon?
	- What were their contributions?
- What are common data cube operations?
- Relationship between OLAP cubes and row- oriented RDBMS?
	- Strengths and weaknesses of each approach?

## Columnar Storage

- What are column stores?
	- What are some examples of column stores?
- What are some hardware optimizations for columnar storage?
- What is column store file format?

## Data Warehouse


- What motivates modern data warehouse architecture?
	- What technologies enable it?
- What are some examples of columnar- based data warehouse?
	- Redshift
	- Azure Synapse

## Data Lakes

- How does a data lake differ from a data warehouse?
- Why use a data lake?
- What are the components of a data lake?

## Other Cloud Analytics Services

- Serverless Analytics
- Search- Based Analytics
- Big Data Analytics
- Graphical BI Tools

# W11: Graph Processing & Machine Learning

## Graph Processing 

- What is graph processing?
	- What is a graph database?
- What is Pregel?
	- How does it work?
	- What are its properties?
	- How does it detect and respond to failures?
- What is Giraph?
	- How does it differ from Pregel?
	- Why was it created?
- What is Spark GraphX?
	- What are some of the graph operators that are used in GraphX?
- What are graphs?
	- Describe nodes, vertices and edges
- Differences between undirected and directed graphs?
- What is index- free adjacency?
- Difference between graph databases and relational databases?
- Limitations of MapReduce with respect to graph processing?
- Limitations of current shared- memory systems for graph processing?
- Describe vertex oriented graph processing?
- Primitives in Pregel?
	- Are edges or are vertices first- class citizens in Pregel?
- What are super steps?
	- What does each super step involve doing?
- Layout of a standard Pregel program?
	- Describe the Pregel system architecture
	- Storage of temporary and persistent data in Pregel?
	- Execution of a Pregel program?
- How does Pregel guarantee fault tolerance?
	- Describe checkpointing
	- Describe failure detection
	- Describe recovery
- What is Apache Giraph?
- Describe the responsibilities of the following components in Giraph
	- ZooKeeper
	- Master
	- Worker
- Describe the standard execution flow in Giraph
- Describe an algorithm to find connected components in Giraph
- What is GraphX?
	- What technologies does GraphX use?
- Building a graph in GraphX?
- How doers GraphX compare to Giraph/ Pregel?
- Graph operators supported by GraphX?

## Machine Learning in the Cloud

- How does data mining and machine learning relate to artificial intelligence?
	- What are some applications?
- What is the OSEMN Data Science Model?
	- What happens in each of its stages?
	- What cloud tools can you use in each stage?
- What is a hyperparameter?
	- What is AutoML?
	- How do they relate to one another?
- What is the Google Cloud AI Platform?
	- What tools does it provide?
- What does Microsoft Azure offer for cloud- based machine learning?
- Describe how AWS SageMaker supports ML on the cloud
- What is human in the loop AI?
	- Why use it?
	- Strengths and weaknesses?
	- What are tools that support it?
- What are examples of unstructured data?
	- What are ML cloud tools specifically designed to handle unstructured data?
- What is Mahout?
	- What are its goals?
- What is Spark?
	- What are its goals?
- What is collaborative filtering?
- What is clustering?
	- What is it used for?
- What is the K- Means algorithm used for?
	- How does it work?
- Optimizations for K- Means?
- What is classification with respect to machine learning?
- Describe a few use cases of classification
- Describe a few models which can be used for classification
- Describe the Naive Bayes algorithm
- What is Frequent Pattern Mining (FPM)?
	- What are its use cases?
- Describe the Apriori algorithm

# W12: Streaming Systems

## Streaming Systems

- Why do we need real- time stream processing systems?
- What are representative cloud streaming engines?
- What are spouts, bolts, streams and topologies in Apache Storm?
- What are the different grouping ways in Storm?
- What are the three flavors guaranteeing message processing?
	- Where are they used?
- How does Trident interact with exactly once processing?
- What is the structure of a Storm cluster?
- How does Storm guarantee fault tolerance?
- How is Thrift used in Storm?
- What is the `IScheduler` and multi- tenant scheduler in Storm?
- What is stateful stream processing?
- What is the difference between Storm streaming and Spark streaming?
- What are the advantages and disadvantages of microbatch in Spark streaming?
- What applications are more suitable for Spark streaming?
- What is Lambda architecture in stream processing?
- What is Kappa architecture in stream processing?
- Why do we need Lambda and Kappa architecture?
- What are the general steps in a streaming ecosystem?

# W13: Virtualization & Containers

## Virtualization

- What is virtualization?
	- What is its main idea?
- User & Kernel Modes
- CPU Privilege Levels
- What are differences between different types of virtualizations?
- What is the definition of each type?
	- What are some examples of each type?
- Xen
- Binary Translations
- What is hardware virtualization?
	- What is its history?

## Containers

- What is operating system- level virtualization?
- What are examples of OS virtualization?
	- What is OS Virtualization?
	- What are OS Containers?
- Differences between VM and containers?
- What are the three building blocks of containers?

## Docker

- What is the Union File System?
- What are Docker images?
- Describe Docker architecture and its components
- What are container network models?

# W14: Container Orchestration & Docker Swarm

## Docker 

- What is Dockerfile?
	- How do you use it?
- What is Docker Swarm?
- What are some examples of Swarm Services?
	- What are states of Swarm Services?
- What are the different types of Docker networks?
	- What are the its usages?
- What is service discovery in Docker Swarm?
- What are the three ways to map hosts to containers?
- What is Docker Compose?
	- What is its usage?

# W15: Container Orchestration & Kubernetes

## Kubernetes

- What is Kubernetes?
	- What is the function of Kubernetes?
- What are the primary advantages of using Kubernetes?
- What is the architecture of Kubernetes?
- What are the components of master nodes and worker nodes?
- What are three pod container design patterns?
- Describe the building blocks of Kubernetes
	- Nodes
	- Pods
	- Labels
	- Selectors
	- Controllers
- What is the Kubernetes Service?
	- What does it do?
- What is the Kubernetes Service Proxy?
- Differences between Kubernetes and Docker Swarm?

# W16: Future Developments in the Cloud

## Thirteen Predictions

- Adoption of cloud computing will grow rapidly
- Cloud will become more global
- Regulated industries will move to the cloud
- Storage capacity will continue to increase rapidly
	- SSD's share of the market will grow, but there will still be a lot of HDD and magnetic tape in use
- Cloud will continue to support AI
	- There is a symbiotic/ mutually- beneficial relationship between AI and clouds
- Data center accelerator's market growth will continue to skyrocket
- Future of cloud computing access is mobile
- FaaS will continue to grow in popularity and use
- Low- code/ No code/ citizen development will become increasingly important to the industry as it is a way to help deal with the predicted 1 million software developer shortfall in the US
- Increased adoption of clouds means increased risks of security breaches
- IoT will grow and fuel the growth of the cloud industry
- Hybrid clouds/ multi- clouds/ omni- clouds will become more feasible and widely- used
- Demand for cloud professionals will grow