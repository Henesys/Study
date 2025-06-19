# IT Notes (061625)

#it

## [Video 1](https://www.youtube.com/watch?v=625zZYlZHoA) Overview

- IT Concepts & Terminology
- Infrastructure
- Applications and Software
- Software Development
- Database Fundamentals
- Security

### IT Concepts & Terminology

- Notational Systems
	- Binary
		- Language of computers, denoted with 1's and 0's
			- e.g. `110100`
	- Hexadecimal
		- Easier way to represent binary values in a computer system because they reduce the number of digits, as *1* hexadecimal digit is equivalent to *4* binary digits
			- e.g. `00:25:96:FF:FE:12:34:56`
	- Decimal
		- Can refer to decimal numbering system or decimal notation
		- Written according to their place value
			- e.g. `192.1.0.2`
- Data Types
	- Character
		- Stores data in fixed-length field
	- Strings
		- Sequence of characters or numbers
	- Integers
		- Represents a range of mathematical integers, represented as a group of binary digits known as bits
	- Floats
		- Used to represent high precision fractional values
	- Boolean
		- Data type that stores `True` or `False` values
- Storage Types
	- Byte
		- 8 bits
	- Kilobyte
		- 1024 B
	- Megabyte
		- 1024 KB
	- Gigabyte
		- 1024 MB
	- Terabyte
		- 1024 GB
	- Petabyte
		- 1024 TB
- Throughput
	- Rate of production or the rate at which something is processed
		- e.g. Mbps = Megabits per second
- Processing Speed
	- e.g. GHz = Gigahertz
- Input vs. Output Devices
	- Input
		- Keyboards
		- Pointing Devices
		- Scanners
		- Microphones
	- Output
		- Printers
		- Display Devices
		- Speakers
	- Both
		- Flash Drives
		- External Hard Drives
		- Memory Cards
		- Smartphones
- Input vs. Output Interfaces
	- Networking
		- Wired
			- Telephone/ Dial Up (RJ-11 Connector)
			- Ethernet (RJ-45 Connector)
		- Wireless
			- Bluetooth
			- Near Field Communication (NFC)
	- Peripherals Connection Types
		- Firewire
			- Also known as 1394
			- Mostly replaced by USB
		- USB
		- Thunderbolt
			- Introduced as a faster version of USB
		- Bluetooth
			- Wireless connection
		- Radio Frequency (RF)
			- Old piece of technology, still used today (e.g. remote controller)
			- Requires a line of sight

### Infrastructure

- X

### Applications and Software

- X

### Software Development

- X

### Database Fundamentals

- X

### Security

- X

## [CompTIA A+ 1101 Core Series Guide](https://uniontestprep.com/comptia-a-core-series-exam/study-guide/220-1101-hardware/pages/1)

### Hardware

- General Information
	- Hardware concepts make up about *25%* of the CompTIA A+ 1101 exam
	- Recent increase in remote work makes it necessary to know about different devices that support the workforce 
	- Nearly all hardware questions involve a *scenario*
- Basic Cable Types: Connectors, Features & Purposes
	- Network Cables
		- 
- Adapters
	- 
- Connector Types
	- 

## On-Site Observations

- Internal IP Mesh Setup
- Windows Password Recovery w/ `ntpwed07`

### Internal IP Mesh Setup

- Internal IP Mesh Network
	- Robust and flexible topology designed to provide extended Wi-Fi coverage throughout a home or an office
	- Mesh networks do not rely on a single router and instead uses multiple interconnected *nodes* or access points that work together as a single unified network
		- All nodes broadcast the same Wi-Fi network name (SSID) and password
		- As you move around, your devices will switch to the closest node to ensure a seamless connection experience
	- Structure
		- Main Router/ Gateway Node
			- Node present in mesh system acts as primary router or gateway
				- Connects directly to Internet modem and typically acts as **Dynamic Host Configuration Protocol (DHCP)** server for the *entire* internal network
					- DHCP is a network management protocol that automatically assigns IP addresses to devices connecting to a network
			- Usually has a default LAN address (e.g. `192.168.1.1` or `192.168.10.1`)
				- You can usually use these addresses to directly access the system's admin interface
		- Satellite Nodes
			- Typically receives IP addresses dynamically from the main router via DHCP, doesn't require manual configuration
			- Won't be visible as a "client list" format, but will be visible in the network's internal visualization
		- Client Devices
			- All devices connected to the mesh network will receive their IP addresses from the main mesh router via DHCP

### Windows Password Recovery w/ `ntpwed07`

- [Source 1](https://www.isumsoft.com/windows-password/reset-windows-11-password-in-recovery-mode.html)
	- `NTPWEdit`
		- Free password editor program that enables you to modify or reset Windows 7/ 8/ 10/ 11 passwords in Windows Recovery Environment
	- Process
		- Save a copy of `NTPWEdit` on a USB flash drive
			- Extract a zip file of `NTPWEdit` into the flash drive such that the executable file is able to be accessed via the command prompt
		- Restart the Windows computer while holding `shift`, forcing the computer to boot into Windows recovery mode