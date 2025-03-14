-- 626. Exchange Seats

# Write your MySQL query statement below

-- Table --> Seat
-- PK --> id

-- Swap seat id of every two consecutive students
-- If # of students % 2 != 0, last student not swapped
-- Sort by id ASC

SELECT
    (CASE
        -- Odd + Check Not Last (Swap)
        WHEN id % 2 = 1 AND id != (SELECT MAX(id) FROM Seat) THEN id + 1

        -- Even (Swap)
        WHEN id % 2 = 0 THEN id - 1

        -- Last (No Swap)
        ELSE id
        END) AS id, student
FROM Seat
ORDER BY id ASC
