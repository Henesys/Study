-- 197. Rising Temperature

# Write your MySQL query statement below

-- Table --> Weather

-- Find all dates' ID with higher temperature than previous day
-- Order does not matter

-- If Day 1 Temp < Day 2 Temp, Return Day 2
-- https://www.w3schools.com/sql/sql_join_self.asp
-- https://www.w3schools.com/sql/func_sqlserver_datediff.asp

-- Column 'id' in field list is ambiguous
SELECT w1.id as Id
FROM Weather w1, Weather w2

-- Intuitively, w2 is later than w1 but not in SQL syntax
WHERE DATEDIFF(w1.recordDate, w2.recordDate) = 1
AND w1.temperature > w2.temperature 