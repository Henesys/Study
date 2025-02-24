-- 1174. Immediate Food Delivery II

# Write your MySQL query statement below

-- Table --> Delivery
-- delivery_id (Unique)

-- Customer's preferred delivery data = order date --> Order = Immediate, Otherwise Scheduled
-- 1st order of customer = earliest order date

-- Find % of immediate orders in the 1st orders of all customers (2 decimal)

-- Counts immediate orders where order_date = customer_pref_delivery_date
SELECT ROUND((COUNT(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 END) / COUNT(*)) * 100, 2) AS immediate_percentage
FROM Delivery d

-- Earliest order date for each customer, min does work on 'date' types
WHERE d.order_date = (
    SELECT MIN(order_date)
    FROM Delivery
    WHERE customer_id = d.customer_id)
-- GROUP BY immediate_percentage