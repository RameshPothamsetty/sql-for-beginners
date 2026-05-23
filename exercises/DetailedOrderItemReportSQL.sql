-- Write a SQL query below --
SELECT 
     oi.order_id,
     p.name AS product_name,
     oi.quantity,
     ROUND(oi.price,2) AS price
FROM order_items oi
join products p
    ON oi.product_id = p.id
    WHERE oi.quantity > 1
    ORDER BY order_id ASC;
