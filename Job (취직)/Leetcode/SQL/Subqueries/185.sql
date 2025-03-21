-- 185. Department Top Three Salaries

# Write your MySQL query statement below

-- Table --> Employee
-- PK --> id
-- FK --> departmntId

-- Table -->  Department
-- PK --> id

-- High earner = Employee w/ salary @ top 3 unique 
-- Find high earner in each department

SELECT 
    d.Name AS Department,
    e1.Name AS Employee,
    e1.Salary
FROM Employee e1
JOIN Department d 
ON e1.departmentId = d.Id
WHERE 
    3 > (
        -- Distinct salary higher than current employee salary
        SELECT COUNT(DISTINCT e2.Salary)
        FROM Employee e2
        WHERE e2.Salary > e1.Salary 
        AND e1.DepartmentId = e2.DepartmentId
    )