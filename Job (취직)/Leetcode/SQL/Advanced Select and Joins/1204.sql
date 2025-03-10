-- 1204. Last Person to Fit in the Bus

# Write your MySQL query statement below

-- Table --> Queue
-- PK --> person_id

-- Bus has max weight limit of 1000kg
-- Find person_name of LAST person that can board bus w/o going overweight

SELECT person_name
FROM Queue q

-- Select everyone in queue + check if sum @ point/ person is <= 1000
WHERE (
    SELECT SUM(weight) 
    FROM Queue 
    WHERE turn <= q.turn) <= 1000
    
-- Order by turn DESC + select "first", which is the last person to board
ORDER BY turn DESC

-- https://www.w3schools.com/sql/sql_top.asp
LIMIT 1;