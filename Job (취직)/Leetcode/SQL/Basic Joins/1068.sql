-- 1068. Product Sales Analysis I

# Write your MySQL query statement below

-- Table --> Sales
-- PK --> sale_id + year
-- https://www.w3schools.com/sql/sql_foreignkey.asp
-- FK --> product_id

-- Table --> Product
-- PK --> product_id

-- Find product_name, year, price for each sale_id in Sales
-- Inner Join

SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id
