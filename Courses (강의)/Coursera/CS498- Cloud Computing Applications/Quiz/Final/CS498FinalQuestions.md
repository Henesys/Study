#cloud_computing 

# W10: Cloud Based Analytics

## Cloud Analytics

- Business Intelligence
	- Set of technologies and processes that use data to understand and analyze business performance
	- "Dark matter" of analytics, addresses necessary, but relatively simple questions that needs to be answered frequently
	- Presented in dashboards, simple data plots and reports
- Data Analytics
	- Science of examining data to draw conclusions
	- Subset of Business Intelligence
- Advanced Analytics
	- Uses more complex statistical techniques and machine learning to generate predictions & identify key performance indicators
	- Examples include fraud detection and recommender systems
- OLTP vs. OLAP
	- **Online Transaction Processing System (OLTP)**
		- Typically involves **most or all** of the columns in a row for a **small** amount of records
		- Using a database to *run* business
		- **RDBMS**
			- Structured Data
			- SQL
			- Each query returns small number of records
	- **Online Analytical Processing System (OLAP)**
		- Reads only a **few** columns for a **large** number of rows
		- Using a database to *understand* business
		- **Data Warehouse**
			- Structured Data
			- SQL
			- Each query covers many or all of the records
			- Typical query involves one column
	- Different access patterns between the two

## Data Cube

- What is a data cube?
	- OLAP data cube is a data structure that allows you to manipulate a multidimensional dataset into a two dimensional array
	- Method of representing data in your computer's memory
	- Nested array with compression schemes applied to it
- What is it used for?
	- Method of grabbing subsets of information in order to perform queries with them (under limitations with memory)
	- Allows you to cache subsets of data within the nested array
- How does it apply to clouds?
	- Data cubes refer to contexts in which data structures far outstrip the size of the hosting computer's main memory- which is where cloud gets involved
- Relationship between data cubes and SQL databases?
	- OLAP data cubes require teams to manage complicated pipelines to transform data from an SQL database into cubes
	- These ETL pipelines would need to be run prior to any analytical work
	- SQL databases and data warehouses had to be shaped in a way conducive to the data cube itself
- Who were Kimball and Inmon?
	- Early practitioners of data cube dimensional modeling and access patterns
- What were their contributions?
	- Developed repeatable methods to turn business reporting requirements into data warehouse designs, which allowed teams to extract the data they need into formats suitable for OLAP cubes
	- "Best Practices"
		- Kimball Dimensional Modeling
		- Inmon- Style Entity- Relationship Modeling
		- Data Vault Modeling
- What are common data cube operations?
	- Slicing
		- Produces a rectangular subset by selecting a single dimensional value
	- Dicing
		- Produces a sub- cube by selecting specific dimensional values
	- Drill Up/ Down
		- Levels of Data: Summarized (Up), Detailed (Down)
	- Roll Up
		- Summarizes data along a dimension
	- Pivot
		- Rotates the cube in space
- Relationship between OLAP cubes and row- oriented RDBMS?
	- Performance- wise, OLAP $>$ row- oriented RDBMS
		- This has become less important with recent technological advances in computers and columnar storage
- Strengths and weaknesses of each approach?
	- OLAP offers better analysis capabilities than RDBMS, which are **limited by SQL**
	- OLAP requires you to load a subset of the dimensions you're working on
	- Columnar databases can achieve similar performance in OLAP- type workloads onto the entire data without the need to extract and build new cubes

## Columnar Storage

- What are column stores?
	- Column- oriented systems
	- Each data element of a record is stored in a column
		- This allows a user to query just one data element (e.g. gym members who have paid for their membership), without having to read everything else associated with the record (e.g. name, age of person)
		- Uses a fraction of the memory and operations required for processing row- oriented blocks
		- A query that uses **5 columns** on a table that contains **100 columns** would only need to read 5% of the data
	- Good for analytical workloads (e.g. finding trends, computing average values)
		- **Read Optimized**
- What are some examples of column stores?
	- `MonetDB`
	- `VectorWise --> Ingres VectorWise --> Actian Vector`
	- `C- Store --> Vertica`
	- `SybaseIQ`
- What are some hardware optimizations for columnar storage?
	- Disk Access Pattern
		- All the read page are relevant column fields
	- CPU Caches
		- Reading multiple values on the same column in one run improves cache utilization & computational efficiency
	- SIMD
		- Vectorized instructions can be used to process multiple data points with a single CPU instruction
	- Compression
		- Lower information entropy results in higher compression
		- Choose the most effective compression method for each case
- What is column store file format?
	- Updates in columnar store is not recommended since you have to go to every column to update a "row"
	- Modern columnar databases limit the ability to update the data after it has been stored
	- Examples
		- Apache Parquet
			- Open source file format for Hadoop
				- Hive, Pig, Impala, Spark
			- Stores nested data structure in a flat columnar format
		- Apache ORC
			- Optimized Row Columnar Format
		- RCFile
		- Apache Kudu
		- ClickHouse

## Data Warehouse

- What motivates modern data warehouse architecture?
	- Cloud
		- Low cost storage
		- Improved scalability
		- Outsourcing of data warehousing management and security
		- Pay per use
	- Massively Parallel Processing (MPP)
		- Dividing computing operations to execute simultaneously across many separate computer processors (VM)
	- Columnar Storage
		- Cache
	- Vectorized Processing
		- SIMD
- What technologies enable it?
	- MariaDB with InfiniDB
	- PostgreSQL
	- Google BigQuery
		- Based on Google Dremel
	- AWS Redshift
		- Based on older version of PostgreSQL
		- Features that are suited for OLTP tasks have been removed for increased performance
- What are some examples of columnar- based data warehouse?
	- AWS Redshift
		- Columnar Store
		- Each block is 1 MB and is immutable
		- Clone blocks on write to avoid fragmentation
		- Small writes has similar cost to larger writes
	- Azure Synapse Analytics

## Data Lakes

- How does a data lake differ from a data warehouse?
	- Data warehouses cannot accommodate **unstructured** data
- Why use a data lake?
	- Stores massive amounts of raw data in its native form in a single location
	- Addresses need for a scalable, low- cost data repository that allows organizations to easily store all data types and analyze based on evidence based business decisions
	- Combines power of analytics with flexibility of big data models and limitless resources of the cloud
- What are the components of a data lake?
	- Object Storage (Location)
		- Azure Data Lake Storage
	- Move Data
		- AWS Data Pipeline
		- Azure Data Factory
	- Data Lake Schema Discovery
		- AWS Glue
		- Azure Data Catalog
	- SQL Exploration & Query
		- Apache Presto
		- AWS Athena
	- Lake Formation
		- AWS Lake Formation
		- Azure Data Share

## Other Cloud Analytics Services

- Serverless Analytics
	- Azure Analysis Services
	- AWS Redshift 
	- AWS Athena
	- AWS Glue
- Search- Based Analytics
	- Full Text Search
	- Search Analytics
	- ELK Stack
		- ElasticSearch
		- Logstash
		- Kibana
	- Search
		- AWS CloudSearch
		- Azure Cognitive Search
- Big Data Analytics
	- Azure HDInsight
		- Hadoop, Spark, Kafka, HBase, Storm
	- AWS Kinesis
	- Apache Kafka
- Graphical BI Tools
	- Tableau
	- AWS QuickSight
	- Azure Power BI

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