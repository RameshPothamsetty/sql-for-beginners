-- Write a SQL query below --
SELECT COUNT(*) AS total
FROM orders
WHERE order_status = 'Delivered';