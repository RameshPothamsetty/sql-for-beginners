-- Write a SQL query below --
SELECT 
    c.email, 
    ci.product_id
FROM customers c
JOIN carts ca ON c.id = ca.customer_id
JOIN cart_items ci ON ca.id = ci.cart_id
WHERE c.is_active = true
ORDER BY c.email ASC;