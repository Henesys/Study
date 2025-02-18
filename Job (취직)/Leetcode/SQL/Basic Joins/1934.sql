-- 1934. Confirmation Rate

# Write your MySQL query statement below

-- Table --> Signups

-- Table --> Confirmations
-- PK --> user_id, time_stamp
-- FK --> user_id (reference) to Signups table

-- Confirmation Rate --> # of "confirmed" messages / # of requested confirmation messages to 2 decimal places

-- https://www.w3schools.com/sql/func_sqlserver_coalesce.asp
SELECT s.user_id, ROUND(COALESCE(SUM(CASE WHEN ACTION = "confirmed" THEN 1 END) / COUNT(*), 0), 2) AS confirmation_rate
FROM Signups s 
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id