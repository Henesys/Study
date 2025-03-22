-- 1667. Fix Names in a Table

# Write your MySQL query statement below

-- Table --> Users
-- PK --> user_id

-- Fix names so that they are grammatically correct
-- Order by user_id

-- Upper/ Lower
-- https://www.w3schools.com/sql/func_sqlserver_upper.asp
-- Concat
-- https://www.w3schools.com/sql/func_sqlserver_concat_with_plus.asp
-- Subtring
-- https://www.w3schools.com/SQl/func_sqlserver_substring.asp

-- First character of string (1 to 1) + Upper
-- UPPER(SUBSTR(string, 1, 1))

-- The rest (2+) + Lower
-- LOWER(SUBSTR(string, 2))

SELECT user_id, CONCAT(UPPER(SUBSTR(name, 1, 1)), LOWER(SUBSTR(name, 2))) AS name
FROM Users
ORDER BY user_id