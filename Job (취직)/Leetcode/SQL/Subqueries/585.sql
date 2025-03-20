-- 585. Investments in 2016

# Write your MySQL query statement below

-- Table --> Insurance
-- PK --> pid

-- Find sum of tiv_2016, where people have same tiv_2015 value as 1+ people and live in unique places as others
-- Round tiv_2016 to 2 decimal

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(pid) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(pid) = 1
)