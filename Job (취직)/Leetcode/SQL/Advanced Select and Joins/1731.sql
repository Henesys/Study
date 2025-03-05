-- 1731. The Number of Employees Which Report to Each Employee

# Write your MySQL query statement below

-- Table --> Employees
-- PK --> employee_id

-- Manager = Employee >= 1 Underling
-- Find id + name of all managers + # of employees under them + average age 

SELECT e.employee_id, e.name, COUNT(*) AS reports_count, ROUND(AVG(m.age)) AS average_age
FROM Employees e, Employees m
WHERE e.employee_id = m.reports_to
GROUP BY e.employee_id
ORDER BY e.employee_id
