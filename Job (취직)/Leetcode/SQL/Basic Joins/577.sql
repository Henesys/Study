-- 577. Employee Bonus

# Write your MySQL query statement below

-- Table --> Employee
-- Table --> Bonus
-- JOIN ON empId (FK @ Bonus to Employee)

-- Find name + bonus amount of each employee w/ bonus < 1000

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON b.empId = e.empId
WHERE b.bonus < 1000

-- | Brad | null  |
OR b.bonus IS NULL