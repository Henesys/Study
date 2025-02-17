-- 1661. Average Time of Process per Machine

# Write your MySQL query statement below

-- Table --> Activity
-- PK --> machine_id, process_id, activity_type

-- Find average time of each machine
-- Time = End Timestamp - Start Timestamp
-- Average Time = Total Time / # of Processes
-- Return machine_id, average_time AS processing_time (round to 3)

SELECT machine_id, ROUND(AVG(end - start), 3) AS processing_time

-- https://www.w3schools.com/sql/sql_case.asp
FROM (
    SELECT 
        machine_id, 
        process_id, 
        MAX(CASE WHEN activity_type = "start" THEN timestamp END) AS start, 
        MAX(CASE WHEN activity_type = "end" THEN timestamp END) AS end
    FROM Activity
    GROUP BY machine_id, process_id
) AS subquery

GROUP BY 
    machine_id