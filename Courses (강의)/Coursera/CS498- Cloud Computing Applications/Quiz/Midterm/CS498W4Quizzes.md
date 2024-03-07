#cloud_computing 

Corresponds to [CS498W4Notes](../../W4/CS498W4Notes.md)

# CS498- Week 4 Quiz

## Question 1

- Which technology is the best suited for the following use case?
	- "Finding the set of words utilized in the Wikipedia website"

### Answer

- **Hadoop**
	- X
- AWS Lex
- HDFS
- Application Manager

## Question 2

- You want to build an image smoother program. Which of the following is the proper Map function for this program?
	- "Image Smoother Program: To smooth an image, use a sliding mask and replace the value of each pixel."

### Answer

- **Option 1**
```
Map(key = x,y, value = R,G,B)

{

emit {([x, y], value), ([x-1, y], value), ([x-1,y-1], value), ([x-1, y+1], value), ([x, y-1], value), ([x, y+1], value), ([x+1, y-1], value), ([x+1, y], value), ([x+1, y+1], value)

}
```

- Option 2
```
Map(key = x,y value = list of R,G,B)

{

compute average of R,G,B

emit intermediate(key, average R,G,B)

}
```

## Question 3

- You want to build an image smoother program. Which of the following is the proper Reduce function for this program?
	- "Image Smoother Program: To smooth an image, use a sliding mask and replace the value of each pixel."

### Answer

- **Option 1**

```
  

Reduce(key = x,y ; value = list of R,G,B)

{

compute average of R,G,B

emit (key, average R,G,B)

}
```

- Option 2
```
Reduce(key = x,y ; value = R,G,B)

{

emit (key, value)

}
```

## Question 4

- You want to build a word count program. Which of the following is the proper Map function for this program?
	- "Word Count Program: You have a huge text file that consists of many lines. The goal is to count the number of times each distinct word appears in the file."

### Answer

- **Option 1**

```
Map(key = line, value = contents):

{

for each word in value:

emit (word, 1)

}
```

- Option 2

```
Map(key = line, values = uniq_counts):

{

Sum all 1’s in values list

Emit result (word, sum)

}
```

- Option 3
```
Map(key, values):

{

for each value in intermediate values:

value += 1;

emit (key, value)

}
```

- Option 4
```
Map(key = line, value = contents):

{

result = 0;

for each word in value:

result += value;

emit(key, result)

}
```

## Question 5

- You want to build a word count program. Which of the following is the proper Reduce function for this program?
	- "Word Count Program: You have a huge text file that consists of many lines. The goal is to count the number of times each distinct word appears in the file."

### Answer

- **Option 1**

```
Reduce(key = word, values = uniq_counts):

{

Sum all 1’s in values list

Emit result (word, sum)

}
```

- Option 2
```
Reduce(key = line, value = contents):

{

result = 0;

for each word in value:

result += value;

emit(key, result)

}
```

- Option 3

```
Reduce(key, values):

{

for each value in intermediate values:

value += 1;

emit intermediate(key, values)

}
```

- Option 4
```
  

Reduce(key = line, value = contents):

{

for each word in value:

emit intermediate (word, 1)

}
```

## Question 6

- Which one of the following features is a main factor in the philosophy of Apache Hadoop?

### Answer

- **Data parallelism across many machines**
	- X
- Caching for fixpoint evaluation
- Caching for loop-invariant data
- Loop-aware task scheduling

## Question 7 

- What is one of the bottlenecks of the MapReduce programming model?

### Answer

- **Reduce phase can’t start until Map phase is completely finished**
	- X
- Map phase can’t start until Reduce phase is completely finished
- Combine phase can’t start until Reduce phase is completely finished
- Combine phase can’t start until Map phase is completely finished

## Question 8

- Which of the following state the purpose of Apache Spark?

### Answer

- **Extend the MapReduce model to better support iterative algorithms**
	- X
- **Enhance programmability**
	- X
- Add concurrency to the MapReduce model
- Eliminate locking found in the MapReduce model

## Question 9

- Which technology is best suited for the following use case?
	- "Training a machine learning model on a large dataset with several iterations"

### Answer

- **Spark**
	- X
- YARN
- HDFS
- Hadoop

## Question 10

- Select all of the transformations that can create an RDD

### Answer

- **groupBy**
	- X
- **filter**
	- X
- **join**
	- X
- **map**
	- X

## Question 11

- Which technology is the best suited for the following use case?
	- "Interactively exploring a new large dataset"

### Answer

- **Spark**
	- X
- HDFS
- Amazon S3
- Apache Storm

## Question 12

- Which is **NOT** an advantage of resilient distributed datasets?

### Answer

- **Bandwidth is infinite**
	- X
- Allows apps to keep working sets in memory for efficient reuse
- Retains the attractive properties of MapReduce
- Support a wide range of applications


# CS498- Week 4 Practice Quiz