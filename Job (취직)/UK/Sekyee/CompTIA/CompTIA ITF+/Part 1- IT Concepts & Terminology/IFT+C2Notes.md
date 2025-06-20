# Chapter 2: Data Types

#it 

## Objective

- Compare and contrast fundamental data types and their characteristics

## Section 1: Data Types

- Boolean Data
	- Consists of only a single bit `{0, 1}`
		- 0 = False
		- 1 = True
	- Boolean values are sometimes referred to as *flags*
- Numeric Data
	- Systems commonly store numeric values in memory
		- Stored as *integers* and *floating point numbers*
	- Integers
		- Whole numbers, can be negative
			- e.g. `1, 2, 3`
	- Floating Point Numbers
		- Floats are numbers that have decimal points associated with them
		- The more precision we use, the more memory a floating point number consumes
			- e.g. `1.2345`
		- Note that it is possible to numbers with no decimal content as floats, but it is inefficient
			- e.g. `150.0`
- Text Data
	- A single character of text uses the *char* data type 
		- *Character strings* consist of one or more characters strung together
- Notes
	- ZIP codes should **not** be stored as *numeric values*, they must be stored as *character strings*
		- ZIP code values are not used in computational purposes and codes that start with 0 will result in the 0 being truncated, rendering it useless
	- Data used in computations should be in numeric form
	- Text data can be stored in *char* data type if it's a single character or *character string* data type if the text is a sentence, paragraph etc.
	- Data that can be represented by a single binary digit (bit) should use the Boolean data type

## Practice Questions

### Practice Question 1

- Question
	- You are creating a new software program for your organization that will track the number of times a customer visits your store. The program will contain a variable called `visits` that will maintain the tally.
		- What data type would be _best_ suited for the `visits` variable?
- Answer
	- C. Integer
		- Numeric value that stores data in integer format, float would not be appropriate for representing number of visits 

### Practice Question 2

- Question
	- You are working with a software developer who is creating a database that will track information about the guests who stay at a hotel. One of the variables that you wish to track is whether each guest is a member of the hotel loyalty program. You will track this in a variable called `loyalty`.
		- What data type would be **best** suited for the `loyalty` variable?
- Answer
	- A. Boolean
		- Data can be stored in a single bit and should store data that represents whether person is a member (yes, 1) or person is not a member (no, 0)