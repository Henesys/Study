-- 1633. Percentage of Users Attended a Contest

# Write your MySQL query statement below

-- Table --> Users
-- PK --> user_id

-- Table --> Register
-- PK --> contest_id, user_id

-- Find % of users registered in each contest (2 decimal places)
-- Order by percentage DESC
-- If tie, sort by contest_id ASC

SELECT contest_id, ROUND(COUNT(u.user_id) * 100 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Users u
JOIN Register r
ON u.user_id = r.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC