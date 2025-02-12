#cloud_computing 

Corresponds to [CS498W10Notes](../../W10/CS498W10Notes.md)

# CS498- Week 10 Quiz

## Question 1

- Which system is a more natural fit for OLTP?

### Answer

- RDBMS
	- OLTP systems typically require frequent, short transactions involving updates & queries on small subsets of data
	- RDBMS are designed specifically for this purpose

## Question 2

- A data cube is best thought of as a(n)

### Answer

- Data structure, more specifically, a sophisticated nested array
	- Data cubes are multi- dimensional arrays that hold aggregated data
	- A way to represent data in multiple dimensions, making it easier to perform complex analytical queries

## Question 3

- In general, is is very easy and straightforward to transform data from a SQL database into an OLAP cube

### Answer

- False
	- Transforming data from a SQL database into an OLAP cube involves complex ETL processes that may require significant effort, depending on the complexity of the data and the structure of the OLAP cube

## Question 4

- Select all that apply:
	- What are some commonly available data cube operations?

### Answer

- Slicing
- Dicing
- Drill Up/ Down
- Roll Up
- Pivot

## Question 5

- Which of these would probably be best for storing data retrieved by a key or a sequence of keys?

### Answer

- BigTable
	- BigTable is specialized for key access since it is a wide- column (horizontal scaling) store
## Question 6

- If your primary interest is the richest possible analysis capabilities, which of these two options would likely be the better choice?

### Answer

- OLAP Data Cube
	- Designed for complex queries and provide rich analysis capabilities using slice, dice, drill up/ down, roll up and pivot features
	- RDBMS are limited by the constraints of SQL

## Question 7

- Suppose a table contains 10,000 rows and 100 columns
- A query that uses all of the rows and 5 columns will need to read approximately what percentage of the data contained in the table if you are using a traditional row- based RDBMS system?

### Answer

- Significantly more than 5%
	- Traditional RDBMS reads all the rows (100%) to retrieve all the required columns

## Question 8

- A data lake is 

### Answer

- a new type of data repository for storing massive amounts of raw data in its native form, in a single location (both structured and unstructured)

## Question 9

- Today, OLAP cubes are always designed to fit in the hosting computer's main memory to maximize analytical performance

### Answer

- False
	- Data aggregation techniques are used when the cube outstrips the host's memory

## Question 10

- Redshift, like most columnar stores, makes it easy to update blocks

### Answer

- False. In Redshift, blocks are immutable. In general, columnar stores are not good at updates compared to other approaches
	- Redshift is a columnar data store designed for read- heavy analytical workloads
	- Optimized for querying large volumes of data, **not** frequent updates
	- Columnar stores generally prioritize read performance over write performance (not suitable for frequent updates)

# CS498- Week 10 Practice Quiz

## Question 1

- Over the past decade (2010-2020), the momentum seems to be shifting from:

### Answer 

- building data cubes to running OLAP workloads directly on columnar databases

## Question 2

- Traditionally, OLAP cubes were known for extreme performance advantages over row-oriented RDBMS

### Answer 

- True

## Question 3

- With an OLTP system, the typical query involves one column

### Answer 

- False

## Question 4

- Choose the true statement:

### Answer 

- OLTP and OLAP are both for structured data

## Question 5

- If the vast majority of your queries involve a very large number of rows but only a few columns, which system is a more natural fit?

### Answer 

- OLAP

## Question 6

- If the vast majority of your queries only involve a few rows, but involve most or all of the columns for those rows, which system is a more natural fit?

### Answer 

- OLTP

## Question 7

- Choose all the true statements:

### Answer 

- A data cube is a data structure
- OLAP cubes require complicated pipelines to transform data from a SQL database into OLAP cubes

## Question 8

- A data lake:

### Answer 

- combines the power of analytics with the flexibility of big data models and the agility and limitless resources of the cloud

## Question 9

- Which best fits the category of graphical BI tool?

### Answer 

- AWS QuickSight

## Question 10

- A data cube is an example of a columnar RDBMS

### Answer 

- False
