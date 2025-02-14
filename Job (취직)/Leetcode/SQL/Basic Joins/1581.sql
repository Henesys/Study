-- 1581. Customer Who Visited but Did Not Make Any Transactions

# Write your MySQL query statement below

-- Table --> Visits
-- Table --> Transactions
-- Join via visit_id

-- Find ID of users who visited w/o making any transactions 
-- Find # of times they made that visit
-- Order does not matter

SELECT customer_id, COUNT(*) as count_no_trans
FROM Visits
WHERE visit_id NOT IN (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id