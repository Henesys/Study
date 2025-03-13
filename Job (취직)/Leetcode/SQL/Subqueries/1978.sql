-- 1978. Employees Whose Manager Left the Company

# Write your MySQL query statement below

-- Table --> Employees
-- PK --> employee_id

-- Find ID of employee w/ salary < 30k + manager left company

SELECT employee_id
FROM Employees
WHERE salary < 30000 

-- Reports still have their manager_id set to the manager that left
AND manager_id IS NOT NULL

-- When a manager leaves the company, their info is deleted from Employees
AND manager_id NOT IN (SELECT employee_id FROM Employees)

ORDER BY employee_id