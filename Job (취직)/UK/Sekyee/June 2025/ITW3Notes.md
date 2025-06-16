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

- X

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