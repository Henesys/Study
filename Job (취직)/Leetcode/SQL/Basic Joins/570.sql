-- 570. Managers with at Least 5 Direct Reports

# Write your MySQL query statement below

-- Table --> Employee
-- PK --> id

-- Find managers w/ >= 5 direct reports
-- Order does not matter

SELECT name
FROM Employee
WHERE id 
IN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)