-- 596. Classes More Than 5 Students

# Write your MySQL query statement below

-- Table --> Courses
-- PK --> student, class

-- Find classes with >= 5 students

SELECT class
FROM (
    SELECT class, COUNT(DISTINCT student) AS student_count
    FROM Courses
    GROUP BY class
) AS class_counts
WHERE student_count >= 5
