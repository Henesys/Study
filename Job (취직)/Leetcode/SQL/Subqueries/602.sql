-- 602. Friend Requests II: Who Has the Most Friends

# Write your MySQL query statement below

-- Table --> RequestAccepted
-- PK --> requester_id, accepter_id

-- Find people w/ max friends + max friend number(?)

SELECT id, num
FROM (
    SELECT id, COUNT(*) as num
    FROM (
        SELECT requester_id AS id 
        FROM RequestAccepted
        
        UNION ALL
        
        SELECT accepter_id 
        FROM RequestAccepted
    ) AS combine_request
    
    GROUP BY id
) AS friend_counts

ORDER BY num DESC
LIMIT 1