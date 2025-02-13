-- 584. Find Customer Referee

# Write your MySQL query statement below

-- PK --> id

-- Find names of customer NOT referred by referee_id = 2
-- Order does not matter

SELECT name
FROM Customer

-- IS NULL Condition
-- https://www.sqlshack.com/working-with-sql-null-values/
-- != null doesn't work in SQL
WHERE referee_id != 2 OR referee_id IS NULL