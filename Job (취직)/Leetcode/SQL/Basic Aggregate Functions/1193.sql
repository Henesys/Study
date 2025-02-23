-- 1193. Monthly Transactions I

# Write your MySQL query statement below

-- Table --> Transactions
-- PK --> id

-- Find for each month + country, # of transactions + total amount + # of approved transactions + total amount

-- https://www.w3schools.com/sql/sql_dates.asp
-- e.g. 2018-12 = %Y-%m

SELECT 
    DATE_FORMAT(trans_date, "%Y-%m") AS month, 
    country, 
    COUNT(state) AS trans_count, 
    SUM(IF(state = "approved", 1, 0)) AS approved_count, 
    SUM(amount) AS trans_total_amount, 
    SUM(IF(state = "approved", amount, 0)) AS approved_total_amount
FROM Transactions
GROUP BY month, country