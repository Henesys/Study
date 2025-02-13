-- 1148. Article Views I

# Write your MySQL query statement below

-- No PK
-- Table may have duplicate rows
-- author_id = viewer_id 

-- Find all authors that viewed at least one of their own articles
-- Sort by id in asc

-- DISTINCT ensures only unique author_id are present
-- Duplicate authors are not chosen
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC