-- 1251. Average Selling Price

# Write your MySQL query statement below

-- Table --> Prices
-- PK --> product_id, start_date, end_date

-- Table --> UnitsSold
-- Can contain duplicate

-- Find avg selling price for each product, rounded to 2 decimal places
-- Order does not matter

SELECT p.product_id, IFNULL(ROUND(SUM(p.price * u.units) / SUM(u.units), 2), 0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id

-- For each product_id there will be no two overlapping periods
AND u.purchase_date BETWEEN p.start_date AND p.end_date

GROUP BY p.product_id