# Chapter 1: Notational Systems

#it 

## Objective

- Compare and contrast notational systems

## Section 1: Storing Data

- *Notational systems* provide us with ways to use binary data storage technologies to represent numbers, text and other data formats
- Types of Data
	- Binary Data
		- Basic unit of binary storage in any computer system is the *bit*, which can be either 0 or 1
		- On magnetic hard drives, the computer stores the 0 value with no magnetic charge and the 1 value with a magnetic charge
		- On solid state drives (SSDs), the process is done similarly with electricity instead of magnetism (on vs. off)
		- A combination of 8 bits is called a *byte* and has the ability to represent 256 possible values ranging from 0 to 255
	- Decimal Data
		- Each digit in a decimal number can represent 10 possible values ranging from 0 to 9 (self explanatory)
	- Hexadecimal Data
		- Each value can store 16 possible values ranging from 0 to 15
			- 0 to 9 is represented as is, 10 to 15 is represented by values A to F

## Section 2: Character Encoding

- We want to process and store text values instead of numbers, which is done by encoding text characters as numbers
	- 1 byte will store 1 character of text
- Languages
	- English and any languages that utilize the alphabet, we use the **American Standard Code for Information Interchange (ASCII)**, which describes what numeric value to use for uppercase letters, lowercase letters, digits, punctuation etc.
		- Originally designated as a 7-bit code, modern systems use an extended 8-bit version
	- For other languages, systems require more characters and will utilize **Unicode**, a large character set capable of rendering thousands of different characters using 8 or 16 bits of data

## Practice Questions

### Practice Question 1

- Question
	- A developer is working on a new software program that will store data in memory about many different characteristics of customers of a bank. Each of these characteristics is best represented as a “yes” or “no” value.
		- What notational system would best store this type of data?
- Answer
	- D. Binary
		- Encode "yes" to 1, "no" to 0

### Practice Question 2

- Question
	- Your company recently entered into a partnership with an organization based in Egypt and you are helping an executive receive documents that must be translated from Arabic into English. The documents contain Arabic characters, but those characters are not rendering properly on the screen.
		- What representational system is best used for this type of document?
- Answer
	- C. Unicode
		- Arabic (non- English) characters can be represented in Unicode 