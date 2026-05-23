-- Write a SQL query below --
SELECT name , reviews_count
FROM products
ORDER BY reviews_count DESC
LIMIT 3;