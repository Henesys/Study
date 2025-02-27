-- 1141. User Activity for the Past 30 Days I

# Write your MySQL query statement below

-- Table --> Activity

-- Find daily active user count for 30 days ending @ 2019-07-27 inc

SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date 
BETWEEN DATE_SUB("2019-07-27", INTERVAL 29 DAY) AND "2019-07-27"
GROUP BY day