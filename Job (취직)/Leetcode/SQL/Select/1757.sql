-- 1757. Recyclable and Low Fat Products

# Write your MySQL query statement below

-- Table --> Products
-- PK --> product_id
-- ENUM (category) --> low_fats | Y = product is low fat, N = not low fat
-- ENUM (category) --> recyclable | Y = product is recyclable, N = not recyclable

-- Find ids of products WHERE
-- low_fats = "Y" AND recyclable = "Y"

SELECT product_id 
FROM Products
WHERE low_fats = "Y" AND recyclable = "Y"