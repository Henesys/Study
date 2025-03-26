-- 176. Second Highest Salary

# Write your MySQL query statement below

-- Table --> Employee
-- PK --> id

-- Find second highest distinct salary, return None if N/A

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee)