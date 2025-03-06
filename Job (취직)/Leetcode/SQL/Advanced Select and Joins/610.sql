-- 610. Triangle Judgement

# Write your MySQL query statement below

-- Table -- Triangle
-- PK --> x, y, z

-- Check if lines can become valid triangle
-- https://www.w3schools.com/sql/sql_case.asp

-- Apparently you need to add comma between SELECT and CASE
SELECT x, y, z,
CASE
    WHEN x + y > z AND x + z > y AND y + z > x THEN "Yes"
    ELSE "No"
END AS triangle
FROM Triangle