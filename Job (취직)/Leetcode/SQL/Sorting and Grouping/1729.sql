# 1729. Find Followers Count

# Write your MySQL query statement below

-- Table --> Followers
-- PK --> user_id, follower_id

-- Find # of followers for each user
-- Order by user_id ASC

SELECT user_id, COUNT(follower_id)AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC