-- Write a SQL query below --
SELECT name , ROUND(price,2) AS price
FROM products
ORDER BY price DESC
LIMIT 3;