-- 1378. Replace Employee ID With The Unique Identifier

# Write your MySQL query statement below

-- Table --> Employees 
-- PK --> id

-- Table --> EmployeeUNI
-- PK --> id, unique_id

-- Show UNIQUE id of each user
-- If user does not have unique ID, show null
-- Order does not matter

-- https://www.w3schools.com/sql/sql_join_left.asp
SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu 
ON e.id = eu.id