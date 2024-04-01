# CS498- Week 12

#cloud_computing

## Introduction to Streaming Systems

### Introduction to Stream Processing

- What is Stream Processing?
	- If you see an ad on a page, there will be an `AdViewEvent`
		- `{UserId, AdId, Timestamp}`
		- If you clicked the ad, there will be another `AdClickEvent`
			- `{UserId, AdId, Timestamp}`
		- The goal now, is to determine which ad is the most effective during this browsing session
	- Input
		- Potentially infinite sequence of events
			- e.g. `AdViewEvent, AdClickEvent`
	- Latency
		- Near real- time
			- From milliseconds to minutes instead of hours to days
	- Output
		- An infinite sequence of changes to the derived dataset
			- Interim stream for further processing
			- Final result to store in the data store
	- ![](assets/StreamProcessingDiagram.png)
- Stream Processing Requirements
	- Low latency
	- Tolerate out of order and late arrival
	- User friendly interface- (streaming SQL)
	- Scalability
	- Data safety & availability
- Stream Processing
	- "What are the application requirements?"
		- Scalable, fast, stateful stream processing
	- "What scale should we operate at?"
		- Traffic Volume: 1.4 trillion events/ day
		- Intermediate State Size: multi TB 
	- "Why is it expensive to run stream processing at scale?"
		- Intermediate datasets need to be stored to allow low latency processing
		- large volumes of data need to be pulled and pushed via network

### Introduction to Streaming

- Why Real- Time Stream Processing?
	- MapReduce, Hadoop etc. store and process data at scale, but not for real- time systems
	- There's no hack that will turn Hadoop into a real- time stream system
		- Fundamentally different set of requirements than batch processing
	- Lack of a real- time version of Hadoop has become the biggest flaw in the data processing ecosystem
- Cloud Streaming Engines
	- Cloud Systems
		- Apache Storm
		- [Twitter Heron](https://blog.x.com/engineering/en_us/a/2015/flying-faster-with-twitter-heron#:~:text=At%20Twitter%2C%20Heron%20is%20used,of%20development%20and%20production%20topologies), surprisingly still used even after Elon's takeover
		- Apache Flink
	- Older Non- Cloud Systems
		- IBM System S
		- Borealis
			- Descendant of Aurora from Brown University, deprecated

### Big Data Pipelines: The Rise of Real- Time

- The Rise of Real- Time
	- As Hadoop ramped up to offer batch data availability, a growing need arose to provide data in real- time for analytic and instant feedback use cases
	- Storm became stable for production scale in 2012
- The Storm Fire Hose
	- Topologies
		- Graph of sprouts and bolts that are connected with stream groupings
		- Runs indefinitely (no time/ batch boundaries)
	- Streams
		- Unbounded sequence of tuples that is processed and created in parallel in a distributed fashion
	- Spouts
		- Input source of streams in topology
	- Bolts
		- Processing container, which can perform transformation, filter, aggregation, join etc
		- Sinks
			- Special type of bolts that have an output interface
- How Did We Get Here?
	- People always want data faster
	- Hardware costs were finally in line with doing in- memory streaming for billions of events/ day
	- ![](assets/HardwareImprovements.png)
- Lambda Architecture: Real- Time + Batch
	- ![](assets/RealTimeLambda.png)
- Present Architecture
	- ![](assets/PresentArchitecture.png)
- The Next Frontier: Real- Time as Source of Truth
	- ![](assets/RealTimeArchitecture.png)

## Apache Storm

### Introduction to Storm

- Apache Storm
	- Guaranteed data processing
	- Horizontal scalability
	- Fault tolerance
	- No intermediate message brokers
	- Higher- level abstraction than message passing
	- "Just works"
		- Hadoop of real- time streaming jobs
	- Built by Backtype, then by Twitter and eventually Apache open source
- Storm
	- ![](assets/Storm.png)
- Storm Concepts
	- Streams
		- Unbounded sequences of tuples
	- Spout
		- Sources of streams
			- e.g. Read from Twitter's streaming API
	- Bolts
		- Processes input streams and produces new streams
			- e.g. Functions, filters, aggregation, joins
	- Topologies
		- Network of sprouts and bolts
- Storm Tasks
	- Spouts and bolts execute as many tasks as it can across the cluster
	- "When a tuple is emitted, which task does it go to?" `-->` Can be programmed by the user
		- Shuffle Grouping
			- Pick a random task
		- Fields Grouping
			- Consistent hashing on a subset of tuple fields
		- All Grouping
			- Send to all tasks
		- Global Grouping
			- Pick task with lowest id

### Example: Storm Word Count

- Streaming Word Count Example
	- ![](assets/StreamingWordCountExample.png)

### Example: Programming Storm Word Count

- Word Count in Storm (Java)
	- ![](assets/WordCountOverview.png)
	- ![](assets/Parallelism.png)
	- ![](assets/Topology.png)

### Scaling Storm to 4000 Nodes

- Open Source Big Data at Yahoo
	- What We Do
		- Yahoo Scale
		- Make it secure
		- Make it easy
	- Yahoo Scale
		- [Network Topology Aware Scheduling](https://en.wikipedia.org/wiki/Network_topology)
	- Understanding Software and Hardware
		- State Storage (ZooKeeper)
			- Limited to disk write speed
			- Scheduling
				- `O(num_execs * resched_rate)`
			- Supervisor
				- `O(num_supervisors * hb_rate)`
			- Topology Metrics (Worst Case)
				- `O(num_execs * num_comps * num_streams * hb_rate)`
		- Example
			- 240- node Yahoo Storm cluster, ZooKeeper writes 16 MB/ second
			- Theoretical Limit
				- `80 MB/ sec / 16 MB/ sec * 240 nodes = 1,200 nodes`
	- Application to Work Around Bottlenecks
		- Fix

## Advanced Storm Topics & Storm Internals

### Anchoring and Spout Replay 

- Guaranteeing Message Processing in 3 Flavors
	- None
		-  Similar to old S4
	- At Least Once
		- Tuple trees, anchoring and spout replay
	- Exactly Once
		- Similar to Hadoop or Puma
- Tuple Tree
	- ![](assets/TupleTree.png)
	- Spout tuple is not fully processed until all tuples in the tree have been completed
	- If the tuple tree is not completed within a specified timeout, the spout tuple is replayed
	- Users [`acker`](https://storm.apache.org/releases/current/Guaranteeing-message-processing.html) tasks to keep track of tuple progress
- Anchoring
	- ![](assets/Anchoring.png)
- At Least Once
	- "What happens if there is a failure?"
		- You can double process events
		- Not critical if you have something like Hadoop to back you up and correct the issue later
		- If you are looking at statistical trends and replay, failures don't happen that often
	- This requires you to have a spout that supports replay, though not all messaging infrastructure does
- Example
	- ![](assets/AckerExample.png)
	- ![](assets/AckerExampleRevised.png)

### Trident: Exactly One Processing

- What About State?
	- For most of Storm, state storage is left up to the user
		- If your bolt goes down with 3 weeks of aggregated data that you have not stored anywhere, you're screwed
- Enter Trident
	- Provides *exactly once* semantics
	- In Trident, state is a first- class citizen, but the exact implementation of state is up to you
		- Many prebuilt connectors to various NoSQL stores like HBase exist for state storage
	- Provides a high level API (similar to cascading for Hadoop)
- Example
	- ![](assets/TridentExample.png)
	- ![](assets/TridentExampleDemonstration.png)

### Inside Apache Storm

- X

### The Structure of a Storm Cluster

- X

### Using Thrift in Storm

- X

### How Storm Schedulers Work

- X

## Spark Streaming

### Spark Streaming

- X

### Lambda & Kappa Architecture

- X

### Streaming Ecosystem & Druid

- X