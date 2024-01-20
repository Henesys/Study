# CS498- Week 1

## Cloud Computing Foundations

### Cloud Computing Introduction

- Perils of Cloud Computing

  - Ownership of your own personal information system.

  - However...

    - Capital investment
    - Heavy fixed cost
    - Redundant expenditures
    - High energy cost/ low CPU utilization
    - Dealing with unreliable hardware
    - High levels of overcapacity

  - Ultimately, it is unsustainable to own your own information system.

- Cloud Computing

  - Cloud computing is the first step towards utility computing.

  - Cloud computing is...

    - Ubiquitious
    - Convenient
    - Easy to access (on- demand network access)
    - Rapidly provisioned

  - Cloud computing encompasses...

    - Network (data center switch + ethernet)
    - Server (ethernet + multi- processors with memory)
    - Storage (optimized for best bandwith to servers)
    - Service (e.g. stacked services)
    - Application (e.g. web services, search requests, email)

- Cloud Adoption: Gartner's Hype Cycle

  - Stages

    - Innovation Trigger (Early Forms of Cloud Computing)
    - Peak of Inflated Expectations (Big Data, ~ 2011)
    - Trough of Disillusionment (Hybrid Cloud + Cloud Computing, ~ 2014/ 5)
    - Slope of Enlightment (Virtualization)

- Delivery Models

  - Software as a Service (SaaS)

    - Use a provider's application(s) over a network.
    - e.g. Salesforce

  - Platform as a Service (PaaS)

    - Deploying customer created applications to a cloud.
    - e.g. AppEng

  - Infrastructure as a Service (IaaS)

    - Rent processing, storage & network.
    - Capacity and other fundamental computing resources.
    - e.g. AWS EC2, AWS S3

- Big Data Data Revolution and Clouds

  - Data collection is too large to transmit economically over the Internet.

  - Computations are data intensive.

    - Lots of disks, networks and CPUs.
    - Overhead of maintaining cyber infrastructure is expensive.
    - Users buy big data services from clouds to share the overhead.

  - Easy to write programs = Fast turnaround
    - e.g. MapReduce: Hadoop, PIG, HDFS, HBase

### Cloudonomics (Part 1)

- Value of Utility Pricing

  - Cloud services do not need to be cheaper to be economic.

  - Consider a car...

    - Choice A: Buy or lease for $10 per day.
    - Choice B: Rent a car for $45 per day.
    - If you need a car for 2 days, buying > renting.
    - *The economics depends on the demand of the service at hand.*

- Utility Pricing in Detail

  - Units

    - D(t): demand for resources, 0 < t, T
    - P = max(D(t)): Peak Demand
    - A = avg(D(t)): Average Demand
    - B: Baseline (Owned) Unit Cost
    - $B_T$: Total Baseline Cost
    - C: Cloud Unit Cost
    - $C_T$: Total Cloud Cost
    - $U = C / B$: Utility Premium (e.g. U = 4.5 @ Choice B)

  - Breakdown

    - $B_T = P \times B \times T$ because your baseline should handle peak demand.
    - $C_T = \int_{0}^{T} U \times B \times D(t) dt = A \times U \times B \times T$ because the demand is not steady (workload is highly various).

    - "When is cloud computing cheapter than owning? ($C_T < B_T$)"

      - $A \times U \times B \times T < P \times B \times T$
      - $U < \frac{P}{A}$
      - Cloud computing ($C_T$) is cheaper than the baseline cost ($B_T$) when the utility premium ($U$) is less than the ratio of peak demand to average demand ($\frac{P}{A}$).

- Utility Pricing in the Real World

  - In practice, demands are prone to spikes.
    - e.g. News stories, marketing promotions, Christmas shopping
  
  - Often, a hybrid model is the best.

    - Own a car for daily commute & rent a van when you need to move.
    - The key factor here is the ratio of peak to average demand.

    - Other considerations:

      - Network Cost (fixed & usage)
      - Interoperability Overhead
      - Reliability & Accessability

- Summary

  - Utility pricing is good when demand varies over time, as is the case of a start- up or a seasonal business.

  - $U < \frac{P}{A}$, cloud computing is more beneficial.

### Cloudonomics (Part 2)

- The Value of Common Infrastructure

  - Case 1: Infrastructure built to peak requirements.

    - Multiplexing Demand --> Higher utilization
    - Lower cost per delivered resource than unconsolidated workloads.

  - Case 2: Infrastructure build to less than peak requirements.

    - Multiplexing Demand --> Reduce the unserved demand
    - Lower loss of revenue or reduce the service level agreement violation payout.

- Useful Measure of "Smoothness"

  - Coefficient of Variation ($C_V$)

  - $C_V = \frac{standard deviation \sigma}{mean |\mu|}$
  
  - $C_V$ is a measure of smoothness (in relation to workloads).

    - Small Number = Smoother
    - Large Mean & Small Standard Deviation = Small Number

- Implications of "Smoothness"

  - A fixed asset facility servicing *highly variable* jobs yield low utilization.
  - A fixed asset facility servicing *smooth* jobs yield high utilization.
  - **Multiplexing jobs with different distributions *may* reduce the coefficient of variation ($C_V$)**

- Case Study of $C_V$ for Independent Jobs

  - $X_1, ... X_n$ independent jobs with standard variation $\sigma$ and mean $\mu$.

  - Aggregated jobs:

    - Mean --> sum of means: $n \times \mu$
    - Variance --> sum of variances: $n \times \sigma ^ 2$
    - Aggregate $C_V$ --> $\frac{\sqrt{n}\sigma}{n\mu}$ = $\frac{\mu}{\sqrt{n}\mu}$ = $\frac{1}{\sqrt{n}}\times C_V$

  - Adding *n* independent jobs reduces $C_V$ by $\frac{1}{\sqrt{n}}$.

    - Penalty of insufficient/ excess resources grows smaller.
    - e.g. Aggregating 100 workloads brings the penalty to 10%.

- Case Study of $C_V$ for Correlated Jobs

  - Best Case: Negative Correlation

    - Optimal packing of customer jobs.
    - X and 1-X --> Sum is 1, $C_V$ = 0
    - Optimally smooth, best CPU utilization

  - Worst Case: Positive Correlation

    - Mean = $n \times \mu(X)$
    - Standard Deviation = $n \times \sigma(X)$
    - Aggregate $C_V = C_V(X) = \frac{\sigma(X)}{\mu(X)}$
    - Not very smooth

- Results from Theory

  - Negatively Correlated Jobs:

    - Private, mid- size and large- size providers can experience similar statistics of scale.

  - Independent Jobs:

    - Mid- size providers can achieve similar statistical economies to an infinitely large provider. 

- Common Infrastructure in the Real World

  - Available data on economy of scale for large providers is mixed.

    - Use the same commercial off the shelf software (COTS) computers and components.
    - Located near cheap power supplies --> low barrier of entry.
    - Early entrant entities may have better automation tools --> taken care of by 3rd parties.

  - Key Takeaway: You don't need to be as large as Amazon to compete (at least in relation to value of common infrastructure).

### Big Data

- Big Data as a Singular Phrase

  - A collection of data sets so large and complex, it is impossible to process it on one computer with the usual databases and tools.
  - Due to its size and complexity, big data is hard to capture, store, copy, delete, search, share, analyze and visualize.

- Big Data

  - Big data represents the information assets characterized by such a high...

    - Volume
    - Velocity
    - Variety
    - Veracity

  - ... to require specific technology and analytical methods for its transformation into useful values.

- Challenges

  - Massive Amounts of Data

    - e.g. Cameras, RFID, Telescopes, Social Media

  - Tasks

    - e.g. Analysis, Capture, Curation, Sharing, Storage, Transfer

  - Products

    - e.g. Predictive Analytics, Decision Making, Discovery

### Summary to Cloud Introduction

- Takeaways

  - Reasons for Cloud Adoption:

    - Clouds provide computing and services to users very cheaply.
    - Saves you the problem of building infrastructure.
    - They allow you to efficiently share data.

- Careers

  - IT Specialists need to know about clouds.

    - When to outsource, applications & uses
    - Architectures, sharing, privacy
    - Programming, efficiency, parallelism, scaling

  - General Audience

    - Large impact on society, business & government.
    - New capabilities, policies, laws & ways to communicate.
    - Privacy
    - Security

  - Efficiency is the bottom line for clouds.

- Cloud Computing

  - Economics
  - Big Data
  - Utility Computing
  - Careers

## Tiers of Cloud Services

### Infrastructure as a Service (IaaS)

- Infrastructure as a Service

  - Allows user to rent computing resources.
  
  - The "product" is a virtual computer that can be accessed remotely.

    - Users can choose the I/O specs for the "hard drives", operating system, middleware, applications and network connection.
    - Users are responsible for managing everything running on the machine, including the security of the server.
    - The offered resources are usually virtualized.

- Virtualized Resources

  - Different customers have different needs.
  
    - e.g. Ephemeral Needs

  - Cloud providers cannot operate a pool of many different sized computers.

    - The Solution: Cloud providers operate a fleet of similar, powerful hardware.

  - Cloud providers carve out chunks of resources through virtualization:

    - VM Instances
    - CPU
    - Memory
    - Storage
    - Network
    - Accelerators

  - Metal as a Service (MaaS)

- Advantages of IaaS vs. On Premise (In House)

  - No need to run a data center.

    - No concerns about space, power supplies, physical building security, network, failing components etc.

  - Operating Expenses (OpEx) vs. Capital Expenditures (CapEx)

    - CapEx: major purchases a company makes that are used over a long term.
    - OpEx: Day to day expenses that a company incurs to keep its business running.

  - Use of different instances when needed.

    - Rapid & flexible innovation.
    - Quick responses to shifting business conditions.

- IaaS Examples

  - Microsoft Azure
  - Amazon EC2 (Elastic Compute Cloud)
  - Google Cloud Platform Compute Engine
  - Oracle Cloud
  - IBM Cloud
  - Alibaba Cloud
  - Rackspace
  - Vultr

- Instance Pricing

  - On Demand

    - Price is not based on use and is fixed.
    - No long term commitment periods.

  - Reserved

    - Price is based on use (cheaper).
    - Long term commitment periods, but high availability.

  - Spot

    - Cheapest, but carry the risk of interruption.
    - Cloud provider attempts to maximize the utility of their infrastructure with spot pricing.

- Containers and Orchestration

  - Subcategory of IaaS between IaaS and PaaS.

  - Containers are analogous to a lightweight VM.

    - Time to spin up a VM is tens of seconds to a few minutes.
    - Time to start a container is a fraction of a second to a few seconds.

  - Linux only

- IaaS in Perspective

  - **SaaS**

    - Hosted Applications/ Apps

    - **PaaS**

      - Development Tools

      - Database Management

      - Business Analytics

      - Operating Systems

      - **IaaS**

        - Servers and Storage

        - Networking Firewalls and Security

        - Data Center (Physical) Plant/ Building

### IaaS: Regions and Zones

- Virtual Machine Instance Location

  - Cloud providers have multiple physical data centers all over the globe.

  - Your virtual machine actually resides in a physical location.

    - Regions
    - Availability Zones

- Data Center Location

  - Some cloud providers (e.g. Vultr) allow you to choose the data center you want to use.

- Availability Zones Locations & Regions

  - The zones you choose may affect the probability of simultaneous failure, latency (ping) and coverage radius.

  - Typically, each user ID gets access to a handful of availability zones to launch VM instances per region.

    - AWS: us-east-1 --> us-east-1a, us-east-1b
    - Azure: US East --> 1, 2, 3
    - GCP: us-east1 --> us-east1-b, us-east1-c

  - The availability zone "a" for user1 is *not* the same as the availability zone "a" for user2.

  - Each zone is made up of 1+ datacenters equipped with independent power, cooling and networking.

    - Therefore, the probability of simultaneous failure in all the separate availability zones in a region is extremely small.

    - Local Zones: Extension of a region that is geographically close to your users.

  - For high availability, the system must be designed such that multiple instances are running in multiple availability zones in a region.

  - Data Traffic Cost:

    - Region to Region > AZ to AZ in same region >>> Same AZ

### Platform as a Service (PaaS)

- Platform as a Service

  - The main goal is to *run the user's distributed web service in a managed environment*.

    - It is much more opinionated than IaaS in that it assumes your web service has a certain architectural style and tries to prebuild it to match it.

  - Think about the anatomy of a web service application to understand the role of PaaS.

  - Scale Out vs. Scale Up

    - Scale Out: Increasing the number of machines running a task.
    - Scale Up: Replace machine with a machine with better specs.
    - Cloud architecture *does not favor the scale up* methodology.

  - Stateless Services

    - Process does not retain information about the user's previous interactions.
    - No stored knowledge of or reference to past transactions.

  - Autoscaling Services

    - Monitors your application and automatically adjust capacity to maintain steady performance at the lowest cost.
    - Optimization of cost & performance for both the cloud provider and the user.

  - PaaS provides environments where all the machinery needed for the distributed application is provided by the cloud provider and is managed by them.

    - Autoscaling Groups
    - Load Balancers
    - Queues
    - Daemons
    - Data Storage Solutions

- Examples

  - Microsoft Azure App Service
  - Google App Engine
  - Amazon Elastic Beanstalk
  - Heroku
  - IBM Cloud Foundry

### PaaS Providers: Amazon AWS Elastic Beanstalk

- AWS Elastic Beanstalk

  - AWS solution for PaaS.

    - Elastic Beanstalk is one layer of abstraction away from the EC2 layer.

  - Allows deployment, management and scaling of web applications.

  - Supports Java, PHP, Python, .NET, Ruby, Node.js & Docker.

  - Environment is preloaded with Linux, the necessary libraries (e.g. Python) and web server software such as Apache HTTP server and Tomcat.

  - Provisioning, load balancing, autoscaling and application health monitoring is automatic.

- Elastic Beanstalk Security & Sandbox

  - Applications run in a secure environment.

  - Isolates applications from hardware and operating systems.
  
  - Imposes security limitations.

  - Able to retain full control over AWS resources underlying the app, which isn't possible in SaaS.

- Storing Elastic Beanstalk Data

  - Both the program and data are stored in Amazon S3.

  - Other data storage models:

    - Elastic Beanstalk (can automatically provision relational data service (RDS) instances)
    - Amazon DynamoDB
    - Microsoft SQL Server
    - Oracle
    - Other relational databases running on Amazon EC2.

- Other Supported Services

  - Apache Tomcat for Java apps
  - Apache HTTP Server for PHP apps
  - Apache HTTP Server for Python apps
  - Nginx or Apache HTTP Server for Node.js apps
  - Passenger or Puma for Ruby apps
  - Microsoft IIS 7.5, 8.0 and 8.5 for .NET apps
  - Java SE
  - Docker
  - Go
  - SSL
  - XMPP API
  - Memcache API

### PaaS Providers: Google App Engine

- Google App Engine (GAE)

  - Developed by Google in 2008 as a PaaS.
  - Support multitenancy and offers automatic scaling for web applications.
  - Supports Python, Java and Go.

- GAE Frameworks and Tools

  - GAE supports Django web framework and the Grails web application framework.
  - Provides infrastructure tools that enable users to deploy code without worrying about infrastructure challenges such as deployment, failover or scalability.
  - However, GAE infrastructure limits the type of applications that can be run.

- GAE Security and Sandbox

  - Applications run in a secure environment.
  - Isolates applications from the hardware and the operating system.
  - Imposes security limitations.
  - Application code only runs in response to requests and a request hanbdler cannot spawn potentially malicious sub- processes after the response has been sent.

- Storing GAE Data

  - Users can use the App Engine datastore, Google Cloud SQL and Google Cloud Storage.
  - Users can use Google's database technology (e.g. Bigtable).

- GAE's Use with Google Services

  - Can take advantage of Google's single sign in feature when users want to access Gmail or Google Drive services.
  - Can build Chrome and Android games on GAE.
  - Google Cloud Endpoints can be used to access mobile services. 

- Other Supported Services

  - App Engine MapReduce
  - Search API
  - SSL Support
  - Page Speed
  - XMPP API
  - Memcache API

- Case Studies of GAE

  - BugSense: An application error reporting service, used GAE to maintain logs of bugs in software and analyze them.
  - Ubisoft: Used GAE to build its first web based game on Chrome.
  - Claritics: Small social analytics company that analyzed game data sets.

- GAE on Mobile

  - Many mobile apps use GAE for their back- end.
  - GAE excels at scaling up for small teams of developers.

### Mobile Backend as a Service (MBaaS)

- Why MBaaS?

  - Does the grunt work of server setup, database creation, routing, social integration, UI binding etc for you so that you can focus on front- end code that would be bound by the remaining elements.

- Introduction to MBaaS

  - General Idea: Mobile apps need common services that can be shared amongst apps instead of being custom developed for each individual app.
  
  - Enables web and mobile app developers to link their applications to back- end cloud storage and back- end APIs.

    - Cloud Storage
    - User Management
    - Push Notifications
    - SNS Integration

- MBaaS Examples

  - Appcelerator, AnyPresence, Apple CloudKit (iCloud) etc

  - Commonalities

    - Many use MongoDB to serve JSON objects
    - REST API
    - MicroServices
    - DevOps
    - Front- end Design Framework

  - Different levels of enterprise integration

  - Can be in either on- premise or private clouds

  - Some support complicance with HIPAA, PCI, FIPS and EU data security standards

### Software as a Service (SaaS)

- Software Distribution

  - Access to Software

    - Retail --> Online Software Purchase --> SaaS
    - SaaS relies on browser capability and broadband internet.

- Software as a Service

  - Brings a complete software solution to the consumer without any setup in a browser.

  - Examples

    - Web Based Email (Gmail)
    - Internet Search Portals (Google, Bing)
    - Project Management (Atlasian JIRA)
    - Office Productivity (MS Office 365, Google Docs)

  - Multitenant Architecture

    - Same software for all customers.
    - Data is specific for individual users.

  - Client- side software runs in the user's browser.

  - Server- side software runs in the cloud.

    - Many SaaS solutions build themselves on IaaS and PaaS services.

  - Customer's data may be stored locally, in the cloud or both.

  - SaaS applications cannot access a company's internet systems, which is why many SaaS solutions allow API access to further customize their offerings.

    - HTTP, REST, SOAP

- Advantages and Disadvantages

  - Advantages:

    - No need to install software, licensing, maintenance, and support
    - Flexible Payments
    - Scalable Usage
    - Automatic Updates
    - Ease of Access

  - Disadvantages:

    - Loss of Control
    - No access to source code
    - Provider service disruptions impact you

### SaaS Example: Salesforce

- Customer Relationship Management (CRM) Services

  - Mainly SaaS and PaaS

  - Examples

    - Sales Cloud
    - Service Cloud
    - Marketing Cloud
    - Analytics Cloud
    - Community Cloud
    - Lightening

  - Social Software in the Workplace

    - Microsoft
    - IBVM
    - Jive
    - Salesforce

  - Can form teams, communities or informal groups.

  - Can collaborate on the same work tasks.

  - Can connect to networks of contacts and acquaintances for references.

  - Alert users to information or events that might be relevant to them.

### Comparison of Cloud Service Tiers

- Cloud Fundamentals

  - IaaS:

    - Basic computing and storage resources
    - On- demand servers
    - e.g. Amazon EC2, VMWare, vCloud

  - PaaS:

    - Cloud application infrastructure
    - On- demand application hosting environment
    - e.g. Google App Engine, Salesforce, Windows Azure, Amazon

  - SaaS:

    - On- demand applications
    - e.g. Gmail, Microsoft Office

- Platform as a Service (PaaS)

  - Cloud computing service that offers a platform for users to run applications on the cloud.

  - Level above IaaS because it does not require users to develop their own operating system environment.

  - Middle ground between SaaS and IaaS.

  - Development Platform

    - Customers use it to develop applications that benefit from the scalability of the cloud without fully developing their own solution using an IaaS provider.

  - Offers an application development platform that will automatically scale with demand.

  - The customer does not manage or control the underlying cloud infrastructure, including network, servers, operating systems and storage.

  - The customer has control over the deployed application.

- Example: Windows Azure

  - PaaS

    - Application platform in the cloud.

  - Provides

    - Computing Power

      - Web, worker and VM

    - Storage

      - Blob, Table, Queue and Azure SQL server

    - Application Fabric

      - Service bus and access control
      - Future: cache, integration and composite

- Cost Effectiveness

  - PaaS can be more cost effective than IaaS because systems are optimized to run applications efficiently.

  - IaaS may only provide hardware and clients must be in charge of load balancing and networking themselves.

- Multitenancy

  - PaaS is better suited for multitenancy because it optimizes its infrastructure for use by many providers.
  - Multitenancy means that many users may share the same physical computer and database.
  - PaaS is better than IaaS in this regard because IaaS provides each user with their own VM and creates a clear separation of resources, as opposed to a collective pool.

- Vendor Lock In

- PaaS may lock in applications by requiring users to develop apps using proprietary interfaces and languages.
- This makes it difficult for users to seek an alternate vendor to host their applications.

- Development Tools

  - PaaS can offer browser based development tools, which allows users to create their applications online.
  - The platform automatically scales for you.

- Principles of Software Development

  - The objective of the developer is to create an application in the quickest and most effective way possible.
  - Applications should not be created using convoluted methods that may take a long time to complete.

- PaaS vs. IaaS

  - PaaS has an inherent risk in that the chosen vendor may greatly increase their prices.
  - App migration is difficult in this scenario due to the exclusivety of some platforms.
  - Apps designed for a temporary purpose should be handled with a *PaaS* solution.
  - Apps designed for an urgent purpose should be handled with a *PaaS* solution.
  - Apps designed by a small software team should be handled with a *PaaS* solution since it handles the operating system and networking side of things for your team.
