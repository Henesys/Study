-- 1321. Restaurant Growth

# Write your MySQL query statement below

-- Table --> Customer
-- PK --> customer_id, visited_on

-- Find moving avg of how much customer paid in 7 day window, round to 2 decimal
-- Order by visited_on ASC

SELECT visited_on, amount, ROUND(amount / 7, 2) AS average_amount
FROM (
  SELECT DISTINCT 
    visited_on,
    SUM(amount) OVER(ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) AS amount,
    MIN(visited_on) OVER() AS current_day
  FROM Customer
) AS cWindow
-- SQL Interval
-- https://www.w3schools.com/sql/func_mysql_date_add.asp
WHERE visited_on >= current_day + INTERVAL 6 DAY
ORDER BY visited_on ASC