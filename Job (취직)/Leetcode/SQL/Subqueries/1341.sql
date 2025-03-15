-- 1341. Movie Rating

# Write your MySQL query statement below

-- Table --> Movies
-- PK --> movie_id

-- Table --> Users
-- PK --> user_id

-- Table --> MovieRating
-- PK --> movie_id, user_id

-- Find name of user w/ largest # of movies --> if tie return user w/ smaller name
(SELECT u.name AS results
FROM Users u
LEFT JOIN MovieRating r
ON u.user_id = r.user_id

-- Check tie, order by max rating DESC + name ASC
GROUP BY u.name
ORDER BY COUNT(r.rating) DESC, u.name ASC
LIMIT 1)

-- UNION will only pass 18 out of 19 testcases
-- Testcase "Rebecca" is both a username & movie title
-- UNION ALL will KEEP the duplicates since SQL will usually just remove them unless told otherwise
UNION ALL

-- Find movie w/ largest avg rating @ Feb 2020 --> if tie return smaller movie name
(SELECT title 
FROM Movies m
LEFT JOIN MovieRating r
ON m.movie_id = r.movie_id

-- https://www.w3schools.com/sql/func_mysql_date_format.asp
WHERE DATE_FORMAT(created_at, "%Y-%m") = "2020-02"

-- Check tie, order by max rating DESC + title ASC
GROUP BY m.title
ORDER BY AVG(r.rating) DESC, m.title ASC
LIMIT 1)

