-- 1075. Project Employees I

# Write your MySQL query statement below

-- Table --> Project
-- PK --> project_id, employee_id
-- FK --> employee_id to Employee

-- Table --> Employee
-- PK --> employee_id

-- Find avg experience years of all the employees for each project, rounded to 2 decimal places
-- Order does not matter

SELECT p.project_id, ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id