-- 1527. Patients With a Condition

# Write your MySQL query statement below

-- Table --> Patients
-- PK --> patient_id

-- Find patient_id, patient_name & conditions of patients w/ t1 diabetes

SELECT patient_id, patient_name, conditions
FROM Patients

-- https://www.w3schools.com/sql/sql_like.asp
-- LIKE Operator
WHERE conditions LIKE "DIAB1%"
OR conditions LIKE "% DIAB1%"