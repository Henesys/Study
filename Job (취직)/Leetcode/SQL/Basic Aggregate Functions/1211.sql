-- 1211. Queries Quality and Percentage

# Write your MySQL query statement below

-- Table --> Queries

-- Find query_name, quality (2 decimal), poor_query_percentage (2 decimal)
SELECT query_name, ROUND(AVG(rating / position), 2) AS quality, ROUND(AVG(rating < 3) * 100, 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name