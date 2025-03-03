--619. Biggest Single Number

# Write your MySQL query statement below

-- Table --> MyNumbers

-- Find LARGEST single number (unique/ distinct?), if no single return null
-- Can check count = 1 to select single number as well

SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
) AS largest_single_number