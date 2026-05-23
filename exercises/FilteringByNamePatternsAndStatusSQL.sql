-- Write a SQL query below --
SELECT 
    name,
    ROUND(price, 2) AS price,
    ROUND(rating, 1)AS rating
    from products
    WHERE name LIKE '%Monitor%'
    AND is_active = true
    ORDER BY price ASC;