-- 2356. Number of Unique Subjects Taught by Each Teacher

# Write your MySQL query statement below

-- Table --> Teacher
-- PK --> subject_id, dept_id

-- Find # of UNIQUE subjects each teacher teaches

-- https://www.w3schools.com/sql/sql_unique.asp
-- https://www.w3schools.com/sql/sql_distinct.asp

SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id