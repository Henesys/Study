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
	- asdf
- L2 vs. L3 Switches
	- X
- Frames vs. Packets

## Firewalls (Functions, Protocols, Policies, Routing Tables)

- 

## PoE, Work, Internet, Phone Lines

  - 

## IP Classes, Subnets, CIDR

  - 

## Fortinet (FortiGate) Firewalls, VPN & VPN Protocols

- 