-- 1683. Invalid Tweets

# Write your MySQL query statement below

-- PK --> tweet_id

-- Find IDs of invalid tweets
-- Invalid tweet = # of characters > 15
-- Order does not matter

SELECT tweet_id 
FROM Tweets
WHERE LENGTH(content) > 15