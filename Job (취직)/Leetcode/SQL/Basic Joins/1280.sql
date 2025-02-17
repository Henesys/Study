-- 1280. Students and Examinations

# Write your MySQL query statement below

-- Table --> Students
-- PK --> student_id

-- Table --> Subjects
-- PK --> subject_name

-- Table --> Examinations
-- PK --> N/A, can contain duplicates

-- Find # of times each student attended each exam
-- Order by student_id & student_name

SELECT s.student_id, s.student_name, sb.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students s
JOIN Subjects sb
LEFT JOIN Examinations e
ON s.student_id = e.student_id
AND sb.subject_name = e.subject_name
GROUP BY s.student_id, sb.subject_name
ORDER BY s.student_id, sb.subject_name