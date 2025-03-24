-- 196. Delete Duplicate Emails

# Write your MySQL query statement below

-- Table --> Person
-- PK --> id

-- Delete all duplicate emails, keep only 1 unique email with smallest id

-- https://www.w3schools.com/sql/sql_delete.asp

DELETE p1
FROM Person p1, Person p2

-- Check non-unique to delete
WHERE p1.email = p2.email 

-- Check non-smallest id to delete
AND p1.id > p2.id