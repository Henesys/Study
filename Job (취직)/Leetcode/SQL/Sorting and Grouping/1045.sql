-- 1045. Customers Who Bought All Products

# Write your MySQL query statement below

-- Table --> Customer
-- customer_id is not NULL
-- FK --> product_key to Product table

-- Table --> Product
-- PK --> product_key

-- Find customer_id from Customer that bought all products in Product table

SELECT c.customer_id
FROM Customer c
GROUP BY c.customer_id

-- Count # of unique products bought by each customer
-- Equate to total # of products
HAVING COUNT(DISTINCT c.product_key) = (SELECT COUNT(*) FROM Product)