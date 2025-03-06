-- 1789. Primary Department for Each Employee

# Write your MySQL query statement below

-- Table --> Employee
-- PK --> employee_id, department_id

-- Find all employees w/ primary department
-- If employee has 1 department, report that department

SELECT employee_id, department_id
FROM Employee

-- More than 1 department, department is selected as primary
WHERE primary_flag = "Y"

-- Only 1 department, department automatically becomes primary
OR employee_id IN(
    SELECT employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(*) = 1
)
ORDER BY employee_id