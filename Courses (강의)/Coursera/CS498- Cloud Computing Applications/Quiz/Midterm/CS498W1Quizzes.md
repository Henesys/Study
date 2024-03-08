#cloud_computing 

Corresponds to [CS498W1Notes](../../W1/CS498W1Notes.md)

# CS498- Week 1 Quiz

## Question 1

- Which approach is more economical for the following scenario?
	- "A long running business serves 10,000 users during the day and 100 during the night."

### Answer

- **In- House Servers**
	- Workload is consistently high during the day and low at night
	- With in- house servers, you have the flexibility to scale resources up and down according to the demand, ensuring cost- effectiveness during peak hours
	- Cloud computing would result in higher costs due to the constant need for resources regardless of the demand
	- Hybrid could be an option, but falls short in terms of better control and cost efficiency in this scenario

## Question 2

- Which approach is more economical for the following scenario?
	- "A long- running business servers 1,000 daily but 1,000,000 during the holiday season."

### Answer

- **Hybrid Approach**
	- Significant variation in workload between regular operations and holiday traffic
	- Hybrid approach allows the business to use in- house servers for regular operations and scale up with cloud computing resources during peak traffic, which minimizes costs while meeting demand fluctuations
	- Cloud computing alone may incur high costs during the holiday season
	- In- house servers alone may not handle the peak load as efficiently

## Question 3

- Which approach is more economical for the following scenario?
	- “A long- running business needs 10,000 computers for one-time data processing.”

### Answer

- **Cloud Computing**
	- Cloud computing provides a cost- effective solution for a one- time data processing task as it allows you to provision and pay for resources that you need, avoiding any extraneous costs
	- In- house servers require significant upfront investment, which is not ideal for a one- time task
	- Hybrid approach doesn't work here for the same reason as in- house servers

## Question 4

- Which of the following are examples of Big Data?

### Answer

- **Genomic records for a whole country**
	- Volume, Veracity, Velocity, Variety
	- Fills boxes for volume and variety, maybe even velocity
- **Astronomy telescope observations**
	- Volume, Veracity, Velocity, Variety
	- Fills boxes for volume, variety and velocity

## Question 5

- What are the properties of big data?

### Answer

- Volume, Velocity, Variety, Veracity
	- Volume
		- Refers to size of data being generated or collected
	- Velocity
		- Refers to the speed at which data is being generated or collected
	- Variety
		- Refers to the different types and sources of data
	- Veracity
		- Refers to the accuracy and reliability of the data

## Question 6

- In cloudonomics, the coefficient of variation $C_v$ is a measure of smoothness of aggregate demand. What is the impact of increasing the load from 1 workload to $n$ on $C_v$ under perfectly positively correlated demands?

### Answer

- $C_v$ remains constant
	- Coefficient of variation ($C_v$) does change by a factor of $1 / \sqrt{n}$ when you add $n$ jobs
	- Under perfectly positively correlated demands, increasing the workload by $n = 1$ would mean that $C_v$ changes by a *factor* of 1, meaning it doesn't change/ remains constant
	- Increasing the load from 1 workload to $n$ doesn't change the variability relative to the mean, hence $C_v$ remains constant

## Question 7

- What is the best model of delivery for the following scenario?
	- "An electronic health record system for clinics and doctors"

### Answer

- Software-as-a-Service
	- SaaS allows users to access the system over the internet without the need for installation or maintenance
	- SaaS also ensures data security and compliance with regulations likely associated with healthcare

## Question 8

-   What is the best model of delivery for the following scenario?
	- “A web hosting solution for PHP web applications”

### Answer

- Platform-as-a-Service
	- PaaS is suitable as a web hosting solution because it provides a platform with the necessary infrastructure (e.g. servers) to host and manage web applications without worrying about the underlying infrastructure

## Question 9

- What is the best model of delivery for the following scenario?
	- “A lightning- fast storage solution for gigantic amounts of data, using a proprietary network routing algorithm”

### Answer

- Infrastructure-as-a-Service
	- IaaS is the best in this scenario since it allows its users to rent storage space and networking resources from a provider
	- This addresses the need for control and flexibility, while avoiding the need to invest in physical hardware

## Question 10

- Which approach is feasible for the following scenario with the minimum efforts?
	- “ACME company needs to provide a widely used application to all its marketing team”

### Answer

- Software-as-a-Service
	- SaaS is the most feasible approach in the following scenario because it allows users to access the application over the internet without the need for installation or maintenance
	- Ensures uniformity and accessibility across different devices and locations present within the company

## Question 11

- Which approach is feasible for the following scenario with the minimum efforts?
	- “ACME company needs to deploy a system with an in- house modified operating system, with a custom kernel optimized for heightened security"

### Answer

- Infrastructure-as-a-Service
	- IaaS is feasible for deploying a secure and closed system because it provides virtualized computing resources (e.g. servers, storage), allowing users to deploy and manage their own OS without worrying about underlying hardware

# CS498- Week 1 Practice Quiz

## Question 1

- What is the best model of delivery for the following scenario?
	- "An electronic health record system for clinics and doctors"

### Answer

- Software- as- a- Service
	- SaaS is the best model of delivery for the following scenario because it allows the system to be accessed over the internet without needing to install or manage it locally

## Question 2

- What is the best model of delivery for the following scenario?
	- "A web hosting solution for PHP web applications"

### Answer

- Platform- as- a- Service
	- PaaS is the best model of delivery for the following scenario because it provides the necessary infrastructure and tools to host web applications without the need of managing the underlying infrastructure

## Question 3

- What is the best model of delivery for the following scenario?
	- "A custom, lightning- fast storage solution for gigantic amounts of data"

### Answer

- Infrastructure- as- a- Service
	- IaaS is the best model of delivery for the following scenario because it provides access to scalable and customizable infrastructure resources (e.g. storage)

## Question 4

- Which approach is more economical for the following scenario?
	- "An established, mature business serves 10,000 users during business hours and 100 users outside of business hours each day"

### Answer

- In- House Servers
	- In- house servers are more economical since they can provide consistent performance without the variable costs typically associated with cloud services

## Question 5

- Which approach is more economical for the following scenario?
	- "A long- running business serves 1,000 daily but 1,000,000 during the holiday season"
### Answer

- Hybrid Approach
	- Hybrid is the best approach here because it allows you to address variable demand like this using cloud computing during peak times while relying on in- house servers during normal operations

## Question 6

- Which approach is more economical for the following scenario?
	- "A long- running business needs 10,000 computers for a one- time data processing task"

### Answer

- Cloud Computing
	- Cloud computing provides the flexibility to scale resources up (in this case, 10,000 computers worth) based on demand, making it the most economical choice for a one- time data processing task

## Question 7

- Which approach is feasible for the following scenario?
	- "ACME company needs to deploy a system with a modified OS"

### Answer

- Infrastructure- as- a- Service
	- Deploying a system with a modified OS typically requires access to underlying infrastructure, which can be provided by IaaS

## Question 8

- Which approach is feasible for the following scenario?
	- "ACME company needs to provide a widely used application for its marketing team"

### Answer

- Software- as- a- Service
	- SaaS efficiently distributes a widely used application via the internet and can be accessed easily

## Question 9

- Which approach is feasible for the following scenario?
	- "ACME company needs to be able to change the cloud provider frequently"

### Answer

- Infrastructure- as- a- Service
	- If a company needs the flexibility to change cloud providers frequently, it suggests a reliance on underlying infrastructure resources, which is provided by IaaS providers
## Question 10

- Which approach is the most sensible for the following scenario?
	- "A new startup needs to quickly scale their infrastructure to serve 1,000,000 customers or risk losing market share to their competitors"

### Answer

- Cloud Computing
	- Cloud computing offers the ability to rapidly scale infrastructure resources based on demand (in this case, 1,000,000 customers), making it the most sensible choice for a startup looking to quickly scale their infrastructure

## Question 11

- A company determines that the most economical decision is to use in- house servers. 
- Over time, the company's peak demand for computing resources decreases sharply, while its average demand remains steady.
- Should the company consider switching from its in- house servers to a cloud approach?

### Answer

- No
	- If the company's peak demand decreases sharply while its average demand remains steady, it suggests that the company will still benefit from maintaining in- house servers rather than switching to a cloud approach

## Question 12

- Cloud services need to be cheaper (e.g. through economics of scale) to be economical compared to in- house servers.

### Answer

- False
	- Cloud services' value lies in factors like scalability, flexibility and reduced management overhead

## Question 13

- Multiplexing demand in a cloud infrastructure leads to higher utilization.

### Answer

- True
	- Multiplexing demand in a cloud infrastructure allows for better resource utilization, as resources can be dynamically allocated based on demand

## Question 14

- Cloud providers prefer variable jobs that have:

### Answer

- Negative Correlation
	- Cloud providers prefer variable workloads that have negative correlation, meaning they have different resource requirements at different times, allowing for better resource utilization and cost efficiency
	- $C_v = 0$, meaning the coefficient of variation is 0 and therefore, optimally smooth
	- Negative correlation suggests optimal CPU utilization and packing of customer jobs

## Question 15

- It is likely that a move towards Internet of Things  (IoT) in the near future will:

### Answer

- Increase the utility of clouds, because the IoT devices will generate a huge amount of data that will be processed by the cloud
	- IoT devices generate vast amounts of data that need to be processed, making cloud computing an ideal platform for managing and analyzing IoT data
	
## Question 16

- A commercial off the shelf laptop, disconnected from the internet, has the storage, memory and computation capacity to process big data in a timely manner.

### Answer

- False
	- Processing big data requires significant computational resources and specialized infrastructure that an ordinary laptop cannot provide

## Question 17

- Which technology will address the following need?
	- "Provides a way for mobile web applications to link to backend storage"
### Answer

- MBaaS
	- MBaaS provides backend services for mobile applications, including storage, user management and integration with cloud services

## Question 18

- Which of these is an example of Software as a Service (SaaS)?

### Answer

- Gmail
	- Gmail is a SaaS application provided by Google
	- Juju is considered a cloud orchestration tool, falling under IaaS rather than SaaS
	- VMWare vCloud is considered as a cloud computing platform, falling under IaaS

## Question 19

- Applications are managed for you when using:

### Answer

- Software- as- a- Service
	- SaaS providers manage applications for users, relieving of the burden of installing, managing and maintaining the software

## Question 20

- In the context of cloud computing, multi- tenancy means:

### Answer

- Many users may share the same physical computer and database
	- Multi- tenancy in cloud computing refers to the practice of multiple users sharing the same physical resources (e.g. computers, servers) while maintaining isolation and security

## Question 21

- Which of these companies is least involved in providing IaaS?

### Answer

- Apple
	- Microsoft has Microsoft Azure
	- Amazon has AWS
	- Google has Google Cloud Platform


