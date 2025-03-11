-- 1907. Count Salary Categories

# Write your MySQL query statement below

-- Table --> Accounts
-- PK --> account_id

-- Find number of bank accounts for each salary category
-- Low < 20k 
-- 20k <= Avg <= 50k
-- High > 50k
-- If no accounts --> 0

SELECT category, accounts_count

-- We want UNION ALL not UNION to preserve duplicates
-- https://www.w3schools.com/sql/sql_ref_union_all.asp

FROM (
    SELECT "Low Salary" AS category, SUM(IF(income < 20000, 1, 0)) AS accounts_count
    FROM Accounts

    UNION ALL

    SELECT "Average Salary" AS category, SUM(IF(income BETWEEN 20000 AND 50000, 1, 0)) AS accounts_count
    FROM Accounts

    UNION ALL

    SELECT "High Salary" AS category, SUM(IF(income > 50000, 1, 0)) AS accounts_count
    FROM Accounts
) AS salary_classification

ORDER BY accounts_count DESC