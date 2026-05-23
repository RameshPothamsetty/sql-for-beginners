-- Write a SQL query below --
SELECT 
    p.name AS product_name,
    c.name AS category_name,
    COALESCE(SUM(oi.quantity), 0) AS total_sold
FROM products p
LEFT JOIN order_items oi ON p.id = oi.product_id
LEFT JOIN categories c ON p.category_id = c.id
GROUP BY p.id, p.name, c.name
ORDER BY total_sold DESC, product_name ASC;