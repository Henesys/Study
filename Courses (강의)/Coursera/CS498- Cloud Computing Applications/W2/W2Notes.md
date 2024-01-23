# CS498- Week 2

## Cloud Computing Glue: Introduction

- Cloud Computing Glue
	- The goal of cloud computing is to run your computing tasks and storing your data on other computers.
	- At its core, it is communication between computing sources (e.g. your client & some server on the cloud).

## Communication, Internet Protocol, HTTP, REST

### Internet Protocol, HTTP & RPC on HTTP

- Communication in a Single Machine
	- Communication channels are provided by the operating system.
		- Shared memory blocks/ pages
		- Shared file system
		- Signal
		- POSIX Socket (a.k.a. Berkeley Socket)
			- Port Numbers
			- SOCK_STREAM (Comparable to TCP)
			- SOCK_DGRAM (Comparable to UDP)
		- Remote Method Invocation (RMI)
			- Method invocations between objects in different processes.
			- Processes may be on the same or different host.
			- From one Java virtual machine (JVM) to another.
		- Message Queue
		- Message Passing
			- Unix Pipe
			- Actor Model
			- Pi Calculus
- Middleware Layers
	- Middleware: software that provides services to applications *beyond* those generally available at the operating system.
	- Implements functionalities that are common across many different applications through a communication channel.
	- Middleware layers can provide the same abstractions to distributed applications.
		- Building distributed systems while maintaining the original code is not very different from a single- node program.
	- Conceptual Layers
		- Applications
		- Put/ Get Data, RPCs & RMIs (*Middleware*)
			- e.g. HTML & SOAP
		- Request reply protocol (*Middleware*)
			- External data representation 
			- Provide support to the application
			- Runs at all servers at the user level
		- Operating System
- Communication in a Local Network
	- Scientific Computing
		- Message Passing Interface (MPI)
			- Simple Model: Send() & Receive()
			- No native support for fault tolerance
			- Programming interface is complicated
			- e.g. Race, Deadlock
	- Business Sector
		- Remote Procedure Calls (RPC)
			- RPC Semantics
				- e.g. Behavior in presence of network failures
			- RPC Implementation
		- Remote Method Invocation (RMI)
			- Between two JVMs on a network
- Communication in Big Data Deployments
	- Requires scaling from the start
		- May require thousands of nodes on the network itself
		- Ad hoc solutions do *not* work
	- RPC Frameworks
		- Google Protocol Buffer
			- User defines the functions that will be called remotely
			- User compiles the functions
			- System automatically generates interfaces functioning as communication stubs in chosen programming language
			- User imports the generated header/ code into a project
			- At runtime, the program calls the function locally
				- Generated code takes care of serialization and marshalling of the function parameters
				- Code makes the network calls (handling any errors) and transfers the function call in the target system.
		- Apache Thrift
			- Apache HDFS, Hadoop, Spark, Storm utilizes Apache Thrift
	- Consistency
		- Paxos
		- Apache ZooKeeper

### Communication: Single- Node & Networked

- Internet Protocol Stack: Link & Internet Layers
	-  The 2nd level (a.k.a. "internet level") is where internet switches and routers operate.
		- Gets your message from one machine to another
		- Responsible for addressing *host interfaces*
		- Encapsulating data into diagrams (including fragmentation and reassembly)
		- Routing datagrams across one or more IP networks
			- IP Address, IPV4, IPV6
	- EE and network engineers live at the bottom level (a.k.a. "link" level).
- Internet Protocol Stack: Transport Layer
	- The transport level handles packetizing of data.
	- Gets message from a process in one machine to another process in another machine.
	- Typically implemented in the operating system.
	- Provide port numbers (similar to Unix sockets).
	- Transmission Control Protocol (TCP)
		- Keeps track of data segments, retransmissions and acknowledgement.
		- Handles...
			- Network congestion
			- Traffic load balancing
			- Unpredictable network behavior
			- Lost, duplicated or delivered out of order IP packets
	- User Datagram Protocol
		- a.k.a. Unreliable Datagram Protocol
		- Simple and usually chosen for time sensitive applications (e.g. streaming videos, video games, DNS lookups)
- Internet Protocol Stack: Application Layer
	- The application level handles "what to send".
	- HTTP, HTTPS
		- RESTful APIs
	- FTP
	- WebSocket
	- SMTP
	- IMAP
	- SSH
	- DHCP
	- DNS
	- BitTorrent
- HTTP Protocol
	- Originally targeted at static web pages.
		- e.g. Client Requests, Server Response, "Connection is Closed"
	- Works on top of TCP for *reliable* transport.
	- Client (user) can be a web browser or any other software.
	- HTTP resources are identified and located on the network by Uniform Resource Locators (URLs), using the Uniform Resource Identifiers (URI's) schemes (e.g. http and https).
	- ![[URLBreakdown.png]]
	- In HTTP/1.0, a separate connection to the same server is made for every resource request.
		- Establishment of TCP connections has overhead.
	- HTTP/1.1 can reuse a connection multiple times to download images, scripts, stylesheets and more after the page has been delivered.
		- Persistent Sessions
		- Lower Latency
- HTTP Message Format
	- Request "Verbs"
		- GET: retrieve data
		- POST: server should accept the call parameter as a new value for the resource specified in the URL
		- PUT: server should stores the enclosed entity under the supplied URL
		- DELETE: server should delete the specified resource by the URL
		- PATCH: server should apply partial modification to the resource
	- Request Message
		- Request line (e.g. GET/data/inventory.htm HTTP/1.1), which requests "/dataset/inventory.htm" resources from the server.
		- Request header fields
		- An empty line
		- An optional message body
	- Response Message
		- Status line which includes the status code and reason (e.g. HTTP/1.1 200 OK), which indicates that the client's request has succeeded.
			- Informational
				- 1XX
			- Successful
				- 2XX
			- Redirection
				- 3XX
			- Client Error
				- 4XX
			- Server Error
				- 5XX
		- Response header fields (e.g. Content-Type: text/html)
		- An empty line
		- An optional message body
- RPC on HTTP
	- For many types of RPC, the client/ server conversation model of HTTP is sufficient.
	- You can replace the HTML markup with an XML or JSON representation of the data.
		- XML-RPC
		- JSON-RPC
	- Common Example:
		- Bitcoin Servers
		- Commands are encoded as JSON, sent over HTTP
### RESTful Architecture

- Representational State Transfer (REST)
	- Software architecture style for distributed hypermedia systems such as the World Wide Web.
	- Introduced in the doctoral dissertation of [Roy Fielding](https://en.wikipedia.org/wiki/Roy_Fielding), one of the principal authors of the HTTP specification.
	- The motivation for REST was to capture those characteristics of the Web that made the Web successful in the first place.
		- URI- addressable resources
		- HTTP
		- Make a request --> Receive response --> Display response
	- A collection of network architecture principles that outline how resources are defined and addressed.
		- Based on HTTP methods to access resources via URL encoded parameters and the use of JSON or XML to transmit the data.
		- Request/ response between the client and the server (like a conversation).
		- Something is requested --> Something is done --> Something is sent in return.
- RESTful API
	- Uses HTTP verbs: GET, POST, PUT, PATCH, DELETE
		- Exploits use of HTTP beyond HTTP POST and HTTP GET.
			- HTTP PUT and HTTP DELETE are not supported in HTML.
		- GET is "safe" (does *not* change state).
		- GET, PUT and DELETE are idempotent (can execute more than once and get the same state change result).
	- Example:
		- Request:
			- curl -X POST https://api.github.com/user/repos
		- Response:
			- ![[RESTResponse.png]]
- REST- Not a Standard
	- REST is just an architectural style, it is not a standard.
		- Instead, it incorporates other standards:
			- HTTP
			- URL
			- XML/ HTML/ GIF/ JPEG (resource representations)
			- TEXT/xml, text/html, image/gif, image/jpeg (resource types, MIME types)
	- REST has been widely adopted by web "mashup" applications and operations on When entities.
		- Many SaaS and PaaS services utilize REST as well.
			- e.g. LinkedIn, Twitter
	- Concept Overview
		- Nouns (resources)
			- *Unconstrained*
			- e.g. http://example.com/employees/12345
		- Verbs
			- *Constrained*
			- e.g. GET
		- Representations
			- *Constrained*
			- e.g. XML
- Resources
	- The key abstraction of information in REST is a resource.
	- A resource is a conceptual mapping to a set of entities.
		- Any information that can be named can be a resource (e.g. document, image, a temporal service, a collection of other resources, a non- virtual object).
	- Represented with a global identifier (e.g. URI in HTTP).
		- e.g. http://www.boeing.com/aircraft/747
- Naming Resources
	- REST uses URI to identify resources.
		- e.g. http://localhost/books/
	- As you traverse the path from more generic to more specific, you are "navigating" the data.
- Verbs
	- Represents the actions to be performed on resources.
		- GET, POST, PUT, DELETE, PATCH
- HTTP GET
	- How the clients ask for the information they seek.
	- Issuing a GET request transfers the data from the server to the client in some representation.
		- e.g. GET http://localhost/books/ --> Retrieves all books
		- e.g. GET http://localhost/books/ISBN-0011021 --> Retrieves book with ISBN-0011021
- HTTP POST & HTTP PUT
	- HTTP POST *creates* a resource.
		- e.g. POST http://localhost/books/
			- Content: {title, authors...}
			- Creates a new book with given properties
	- HTTP POST *updates* a resource.
		- e.g. PUT http://localhost/books/isbn-123
			- Content: {ISBN, title, authors...}
			- Updates book with ISBN-123 with submitted properties
- HTTP DELETE
	- Removes the resource identified by the URI.
		- e.g. DELETE http://localhost/books/ISBN-123
			- Deletes book with ISBN-123
- Representations
	- How the data is represented or returned to the client for presentation.
	- Formats
		- JavaScript Object Notation (JSON)
			- ![[JSON.png]]
		- XML
			- ![[XML.png]]
	- It is common to have multiple representations of the same data.
- Architecture Style
	- ![[Architecture.png]]
		- Client issues a GET, POST and DELETE requests
		- Requests are sent to a web/ proxy server
		- REST engine generates appropriate responses to the requests

### Service Oriented Architecture & SOAP

### Asynchronous RPC & WebSocket

### HTTP/2 Push & Streaming Videos

## Virtual Private Clouds

### VPC- Virtual Private Clouds

### VPC Subnets

### VPC Gateways

### Advanced VPC Gateways

### VPC Security and Firewalls