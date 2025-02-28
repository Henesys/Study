-- 1070. Product Sales Analysis III

# Write your MySQL query statement below

-- Table --> Sales
-- PK --> sale_id, year

-- Table --> Product
-- PK --> product_id

-- Select <> for 1st year of every product sold

SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM Sales s

-- Find first year --> min(year)
JOIN (
  SELECT product_id, MIN(year) AS year 
  FROM Sales 
  GROUP BY product_id
  ) AS p
  
ON s.product_id = p.product_id
AND s.year = p.year 