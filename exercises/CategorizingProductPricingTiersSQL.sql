-- Write a SQL query below --
SELECT name,
ROUND(price , 2) AS price,
    CASE
        WHEN price > 200 THEN 'Premium'
        WHEN price >= 100 AND price <= 200 THEN 'Mid-Range'
        WHEN price < 100 THEN 'Budget'
    END AS price_tier
FROM products
ORDER BY price DESC;