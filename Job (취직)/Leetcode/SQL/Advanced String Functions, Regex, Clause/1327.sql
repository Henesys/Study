-- 1327. List the Products Ordered in a Period

# Write your MySQL query statement below

-- Table --> Products
-- PK --> product_id

-- Table --> Orders
-- FK --> product_id

-- Find names of products w/ > 100 units @ Feb 2020

SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id

-- 2020 is leap year
WHERE o.order_date BETWEEN "2020-02-01" AND "2020-02-29"

GROUP BY p.product_name
HAVING SUM(o.unit) >= 100