-- 595. Big Countries

# Write your MySQL query statement below

-- PK --> name

-- country = big if:
-- area >= 3 * 10^6 km^2 OR
-- population >= 25 * 10^6

-- Find name, population and area of big countries
-- Order does not matter

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000