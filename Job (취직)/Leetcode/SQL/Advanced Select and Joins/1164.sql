-- 1164. Product Price at a Given Date

# Write your MySQL query statement below

-- Table --> Products
-- PK --> product_id, change_date

-- Find prices of all products @ 2019-08-16
-- Assume price of all products before change is 10

-- Check change in price, if no change --> price is 10
SELECT p1.product_id, IFNULL(p2.new_price, 10) AS price

-- Find all products (unique)
FROM 
    (SELECT DISTINCT product_id FROM Products) AS p1
LEFT JOIN Products p2 
ON p1.product_id = p2.product_id

-- Determine any price changes on specified date
AND p2.change_date = (
    SELECT MAX(change_date)
    FROM Products p3
    WHERE p3.product_id = p1.product_id
    AND p3.change_date <= "2019-08-16"
)