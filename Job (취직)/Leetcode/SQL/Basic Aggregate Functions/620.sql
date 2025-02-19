-- 620. Not Boring Movies

# Write your MySQL query statement below

-- Table --> Cinema
-- PK --> id

-- Find movies w/ odd ID + description that isn't boring
-- Sort by rating DESC

SELECT *
FROM Cinema
WHERE id % 2 = 1 
AND description != "boring"
ORDER BY rating DESC