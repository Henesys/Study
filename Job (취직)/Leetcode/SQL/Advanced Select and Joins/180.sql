-- 180. Consecutive Numbers

# Write your MySQL query statement below

-- Table --> Logs
-- PK --> id

-- Find numbers that appear >= 3 times CONSECUTIVELY

SELECT DISTINCT L1.num AS ConsecutiveNums
FROM Logs L1, Logs L2, Logs L3
WHERE L1.id + 1 = L2.id AND L2.id + 1 = L3.id
AND L1.num = L2.num AND L1.num = L3.num