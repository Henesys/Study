-- 550. Game Play Analysis IV

# Write your MySQL query statement below

-- Table --> Activity
-- PK --> player_id, event_date

-- Find FRACTION of players that logged in consecutively, rounded to two decimal (Fraction --> Decimal?)

-- Get first login date for each player
With firstLogin AS (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
),

-- Check if they logged in consecutively
consecLogin AS (
    SELECT f.player_id, CASE WHEN a.event_date IS NOT NULL THEN 1 ELSE 0 END AS is_consec_login
    FROM firstLogin f
    LEFT JOIN Activity a ON f.player_id = a.player_id 
                        AND a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY)
)

-- Calculate fraction
SELECT ROUND(SUM(is_consec_login) / COUNT(*), 2) AS fraction
FROM consecLogin