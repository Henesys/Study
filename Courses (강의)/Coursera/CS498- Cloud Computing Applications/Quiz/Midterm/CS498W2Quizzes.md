#cloud_computing 

Corresponds to [CS498W2Notes](../../W2/CS498W2Notes.md)

# CS498- Week 2 Quiz

## Question 1

- What communication framework or technology do many Big Data systems use and why?

### Answer

- **Apache Thrift**, because it is scalable and easy to use the auto-generated RPC functions.
	- Apache Thrift is commonly used in big data systems because it provides scalable and efficient communication between programming languages by using auto- generated RPC (Remote Procedure Call) functions

## Question 2

- Which of the following technologies are transport layer systems in the Internet Protocol?

### Answer

- **UDP, TCP**
	- Both are transport layer protocols in the Internet Protocol (IP) suite
		- UDP (User Datagram Protocol)
		- TCP (Transmission Control Protocol)
	- TCP/ IP Protocol Suite
		- Application Layer
			- Provides network services directly to applications
			- e.g. HTTP Protocol, DNS Protocol
		- Transport Layer
			- Responsible for end- to- end communication between devices across the network
			- e.g. TCP, UDP
		- Internet Layer
			- Handles addressing, routing and packet forwarding
			- **Best effort delivery protocol**
			- e.g. Internet Protocol, IPv4, IPv6
		- Link Layer (Network Interface/ Network Access)
			- Responsible for actual transmission of data over physical medium such as Ethernet or Wi- Fi
			- Deals with MAC addresses, framing and error detection

## Question 3

- What are the event types in WebSocket?

### Answer

- Open, Close, Error, Message
	- WebSocket defines 4 event types, which allow for full communication channels over a single TCP connection

## Question 4

- Under which scenario would we be better off using HTTP Streaming API?

### Answer

- **In a massive multiplayer game**
	- HTTP streaming API is suitable for continuous, low latency data transmission tasks
	- In multiplayer games, real- time updates are crucial

## Question 5

- What is the function of Middleware?

### Answer

- Software that provides services to applications beyond those generally available at the operating system.
	- Middleware acts as an intermediary between different applications or systems, providing services beyond those typically available from the given OS

## Question 6

- Which technology can support addressing the following need?
	- “Data representation for (un)marshalling on different machines and programming languages”

### Answer

- **XML**
	- XML (eXtensible Markup Language) provides a standardized way of representing data structures, making it suitable for the aforementioned task

## Question 7 

- Which technology will address the following need?
	- "Create, Update, Read and Remove objects over the web"

### Answer

- **REST**
	- REST (Representation State Transfer) is an architectural style for creating, updating, reading and removing objects over the internet using standard HTTP methods (verbs)

## Question 8

- Which technology can best address the following need?
	- "Human readable representation of data"

### Answer

- **JSON**
	- JSON (JavaScript Object Notation) provides a human- readable representation of data, making it easy to understand and work with for humans

## Question 9

- Which technology will address the following need?
	- "Send method execution requests to a remote object"

### Answer

- **SOAP**
	- SOAP (Simple Object Access Protocol) is a protocol for exchanging structured information in the implementation of web services (e.g. sending method execution requests to remote objects)

## Question 10

- What HTTP verbs are used in RESTful APIs?

### Answer

- **PUT, GET, DELETE**
	- RESTful APIs use HTTP verbs
	- PUT, GET and DELETE all serve the purpose of fulfilling REST's goal of CRUD (Create, Read, Update, Delete) operations on resources

# CS498- Week 2 Practice Quiz

## Question 1

- Google's cluster architecture uses index servers as frontend load- balancers and document servers to hold the indexed formation.

### Answer

- False
	- Google's cluster architecture typically uses index servers for indexing and document servers for holding the indexed data.
	- However, index servers may *handle* load balancing, but they are **not** frontend load balancers

## Question 2

- The primary reason most commonly- used load- balancing algorithms are relatively simple is:

### Answer

- Because load balancer must make quick decisions, empirically more complex algorithms are likely to be slower than simpler algorithms
	- Load balancers operate in real- time and need to quickly route traffic to backend operations, making it a time sensitive operation

## Question 3

- Software as a Service typically provides load balancing automatically for you.

### Answer

- True
	- SaaS handles load balancing automatically as part of their infrastructure management, relieving users from having to manage it themselves

## Question 4

- In the context of cloud computing, multi- tenancy means:

### Answer

- Many users may share the same physical computer and database
	- Multi- tenancy in the context of cloud computing means that multiple users (tenants) share the same physical resources, such as servers, databases or storage

## Question 5

- Which of the following RPC frames is created by Google to deal with communication in big data deployment?

### Answer 

- Google Protocol Buffers
	- Cross- platform data format used to serialize structured data
	- Used in developing programs that communicate with each other over a network or for storing data

## Question 6

- Which of the following protocol lies in the Transport Layer?

### Answer

- UDP
	- User Datagram Protocol
	- Offers connectionless communication
- TCP
	- Transmission Control Protocol
	- Offers reliable, connection- oriented communication

## Question 7

- Which of the following protocol lies in the Application Layer?

### Answer

- IMAP
	- Internet Message Across Protocol
- HTTP
	- Hypertext Transfer Protocol
- DNS
	- Domain Name Systems

## Question 8

- Which are the benefits of service- oriented architecture (SOA)?

### Answer

- Reduced Costs
- Reusable Code
- Scalability
- Interaction

## Question 9 

- What is one of the differences between physical ethernet networks and VPC networks?

### Answer

- VPC networks do not use ARP while physical ethernet networks implement ARP
	- In VPC networks, Address Resolution Protocol (ARP) is not used because ARP is a data- link layer protocol used in physical ethernet networks to map IP addresses to MAC addresses

## Question 10

- What is the function of VPC peering?

### Answer

- Make communication between VPCs whether these two VPCs belong to the same account or different accounts
	- VPC peering allows for communication between VPCs regardless of whether they belong to the same account or different accounts

## Question 11

- Given the CIDR of IPv4 `10.10.1.16/29`, which of the following IPv4 is out of range?

### Answer

- `00001010.00001010.00000001.00011000`
	- CIDR notation of `10.10.1.16/29` represents the range from `10.10.1.16` to `10.10.1.23` with a prefix length of `/29`
		- `10.10.1.16` is the network address
		- `10.10.1.17` to `10.10.1.22` is within the range of usable IP addresses (6 host addresses)
		- `10.10.1.23` is the broadcast address
	- $Number \: of \: Host \: Addresses = 2 ^ {prefix \: - \:n} - 2$, where $n$ is the number of host bits
		- **32** bits in IPv4
		- **29** bits in prefix
		- **3** bits in host
		- **6** host addresses
	- `00001010.00001010.00000001.00011000` conversion into binary
		- `00001010`: Binary equivalent of 10
		- `00001010`: Binary equivalent of 10
		- `00000001`: Binary equivalent of 1
		- `00011000`: Binary equivalent of 24
			- `24 / 2 = 12 R 0`, rightmost bit is `0`
			- `12 / 2 = 6 R 0`, next bit is `0`
			- `6 / 2 = 3 R 0`, next bit is `0`
			- `3 / 2 = 1 R 1`, next bit is `1`
			- `1 / 2 = 0 R 1`, leftmost bit is `1`
			- `11000` is binary representation of 24

## Question 12

- Which of the following statements about private subnets are true?

### Answer

- Incoming traffic from the Internet cannot access the private subnets
- Outgoing traffic from a private subnet cannot access the Internet

## Question 13

- Which of the following technology can help private subnets access the Internet?

### Answer

- NAT
	- Network Address Translation (NAT) allows instances in private subnets to access the Internet by translating the private IP addresses to public IP addresses assigned to the NAT gateway

## Question 14

- For VPC, how do you select the optimum route for network traffic?

### Answer

- Longest prefix match
	- The route table selects the optimum route for network traffic based on the longest prefix match of the destination IP

## Question 15

- Which of the following is a main format of data representation?

### Answer

- XML
- JSON

## Question 16

- Which of the following about JSON and XML is correct?

### Answer

- JSON has no namespaces while XML does
	- JSON does not support namespaces
	- XML supports namespaces

## Question 17

- Which of the following HTTP verbs are used in REST APIs?

### Answer

- DELETE
- GET
- POST

## Question 18

- Which technology will address the following need?
	- "Data representation using a dictionary with key and value"

### Answer

- JSON
	- Provides a lightweight format for representing data using key- value pairs

## Question 19

- Which layer does WebSocket runs on top of?

### Answer

- TCP
	- Transmission Control Protocol
	- Provides a full duplex communication channel over a single TCP connection

## Question 20

- Which technology will address the following need?
	- "Send requests to a remote object"

### Answer

- CORBA
	- Common Object Request Broker Architecture
	- Facilitates communication between distributed objects within a network, allowing remote method execution requests to be sent to a remote object

## Question 21

- Which technology will address the following need?
	- "Human readable representation of data"

### Answer

- JSON

## Question 22

- Which technology will address the following need?
	- "Create, update, read and remove objects over the web"

### Answer

- REST
	- Representational State Transfer
	- CRUD over the web using HTTP methods (verbs)

## Question 23

- UDP is best suited for which of the following tasks?

### Answer

- Voice over Internet Protocol (VOIP)
	- UDP is used for real- time application purposes and video conferencing, where low latency & quick transmission of *small* packets are critical
		- VOIP fits this criteria

## Question 24

- Which technology will address the following need?
	- "Data representation for (un)marshalling on different machines and programming languages"

### Answer

- XML
	- XML provides a standard format for representing data structures, making it suitable for (un)marshalling on different machines and programming languages

## Question 25

- "RPC" stands for:

### Answer

- Remote Procedure Call
	- Protocol that allows a computer program to cause a procedure to execute in another address space (e.g. another computer on a shared network)

## Question 26 

- NIST developed an official standard for REST, because it recognized the importance of interoperability in cloud environments

### Answer

- False, there is no "official standard"
	- REST is an architectural style that emphasizes stateless communication and resource- based interactions over HTTP

## Question 27

- What evolved as the success to XML- RPC?

### Answer

- SOAP
	- Provides a more robust and standardized messaging framework for web services and applications

## Question 28

- Which of the following are not advantages of VPC?

### Answer

- Bandwidth
	- VPC cannot improve the bandwidth of a physical network

## Question 29

- Which of the following is not an event type of WebSocket?

### Answer

- Resend
	- WebSocket event types only include Open, Close, Error and Message

## Question 30

- What three phases does WebSocket have?

### Answer

- Opening Handshake, Data Transfer, Closing Handshake
	- Opening Handshake
		- Establishes the connection
	- Data Transfer
		- Exchanges messages
	- Closing Handshake
		- Terminates the connection

## Question 31

- WebSockets

### Answer

- have three phases: opening handshake, data transfer and closing handshake