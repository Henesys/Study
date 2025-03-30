-- 1517. Find Users With Valid E-Mails

# Write your MySQL query statement below

-- Table --> Users
-- PK --> user_id

-- Find valid emails
-- prefix + domain name
-- prefix --> start with letter, inc. digits, underscore, period, dash

SELECT *
FROM Users
WHERE mail REGEXP "^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$"