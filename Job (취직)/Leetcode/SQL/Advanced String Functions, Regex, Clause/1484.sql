-- 1484. Group Sold Products By The Date

# Write your MySQL query statement below

-- Table --> Activities

-- Find for each date the # of different products sold + names
-- Sort alphabetically
-- Order by sell_date

-- https://www.geeksforgeeks.org/mysql-group_concat-function/
-- GROUPT_CONCAT Function
-- Combines all products into single cell

SELECT 
    sell_date, 
    COUNT(DISTINCT product) AS num_sold, 
    GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ",") AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date