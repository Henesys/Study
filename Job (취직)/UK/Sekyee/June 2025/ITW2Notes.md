# IT Notes (061125)

#it

## Overview

- L2 vs. L3 Switches (Functions, Differences, OSI)
- Firewalls (Functions, Protocols, Policies, Routing Tables)
- PoE, Work, Internet, Phone Lines
- IP Classes, Subnets, CIDR
- Fortinet (FortiGate) Firewalls, VPN & VPN Protocols

## L2 vs. L3 Switches

- Open Systems Interconnection Model (OSI Model)
	- OSI is a framework that standardizes the functions of a telecommunication system into different "layers"
- Layers
	- Layer 1 (Physical Layer)
		- Physical transmission of raw bit streams over a physical medium (e.g. cables, connectors)
	- Layer 2 (Data Link Layer)
		- Deals with error-free transmission of data frames between nodes on the same network with **Media Access Control (MAC)** addresses
	- Layer 3 (Network Layer)
		- Responsible for logical coordination and routing of data *packets* across different networks with Internet Protocol (IP) addresses
	- Layer 4 (Transport Layer)
		- Provides end-to-end communication services (e.g. UDP, TCP)
	- Layer 5 (Session Layer)
		- Handles connections between various applications
	- Layer 6 (Presentation Layer)
		- Handles data formatting, encryption and compression
	- Layer 7 (Application Layer)
		- Handles network services to end-user applications
- L2 Switches
	- Operates at **Layer 2 (Data Link Layer)**
	- Forwards data **frames** based on **MAC addresses**
	- L2 switch receives a frame, reads the destination MAC and looks it up in its MAC address table (CAM). 
	- CAM maps MAC addresses to specific *physical* ports on the switch
	- If the address is found, the switch forwards the frame out of the *specific* port
	- If the address is unknown *or* if it's a broadcast address, the switch "floods" the frame out of *all* ports except the port the frame came in on 
		- Broadcasts sent by a single device in a network will be seen by all other devices connected to the L2 switch
	- The work L2 does is simple, which allows it to be generally faster and cheaper than L3
		- Local Area Network (LAN) segmentation allows the L2 switch to segment LANs into smaller domains, improving performance
- L3 Switches
	- Operates at **Layer 2 (Data Link Layer) and Layer 3 (Network Layer)**
		- Layer 2 is used for switching *within* a subnet
		- Layer 3 is used for routing *between* subnets
	- L3 switches have the same capabilities as L2 switches, but they also have **routing** capabilities
		- L3 switches have the ability to forward data **packets** based on **IP addresses**
	- If an L3 switch receives a packet designated for a different network segment (different IP subnet), it uses a **routing table** to determine the best route to its destination
	- L3 switches have the ability to connect to multiple broadcast domains (VLANs), allowing for inter- VLAN routing
		- This routing is usually done with hardware, allowing for faster speeds than external routers 
		- Routing capabilities of the L3 make it more expensive than the L2
- Frames vs. Packets
	- Frames
		- Unit of data at **Layer 2 (Data Link Layer)**
		- Once a *packet* is ready to be sent over a specific *physical* link, it gets encapsulated by the *frame*
		- Includes 
			- Header
				- **Source MAC address** (physical address of sending network interface card) and the **destination MAC address** (physical address of the next device on the local network segment)
				- Also includes preamble for synchronization and type/ length fields
			- Payload
				- Location of the *packet*
				- The entire packet becomes the payload of the frame
			- Trailer
				- Contains error checking information, commonly a **Frame Check Sequence (FCS)** or **Cyclic Redundancy Check (CRC)** to ensure the data wasn't corrupted during transmission over the link
		- Function
			- Frames are responsible for hop-to-hop communication within a single LAN
				- L2 switches forward the frame via the MAC address
				- Once the frame reaches the destination router, the router "unwraps" the packet from the frame, reads it, encapsulates it into a *new* frame for transmission and send it
	- Packets
		- Unit of data at **Layer 3 (Network Layer)**
		- Includes
			- Header
				- Critical information for routing, including the **source IP address** (its origin) and the **destination IP address** (its destination)
				- Also contains other information such as protocol version, time-to-live (TTL) and checksums for error detection
			- Payload
				- Actual information that is being sent (e.g. photo, video, file)
			- Optional Trailer
				- May sometimes included for additional error checking
		- Function
			- Responsible for end-to-end communication across different **routers** that operate at **Layer 3**
				- Routers read the destination IP in the packet header to calculate the best route to the destination 

## Firewalls (Functions, Protocols, Policies, Routing Tables)

- 

## PoE, Work, Internet, Phone Lines

  - 

## IP Classes, Subnets, CIDR

  - 

## Fortinet (FortiGate) Firewalls, VPN & VPN Protocols

- 