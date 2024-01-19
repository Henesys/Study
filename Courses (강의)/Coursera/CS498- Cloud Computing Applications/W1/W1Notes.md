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

### Introduction

### Infrastructure as a Service (IaaS)

### IaaS: Regions and Zones

### Platform as a Service (PaaS)

### PaaS Providers: Amazon AWS Elastic Beanstalk

### MBAAS

### Software as a Service (SaaS)

### SaaS Example: Salesforce

### Comparison of Cloud Service Tiers
