-- Write a SQL query below --
SELECT 
    o.id AS order_id,
    c.email,
    ROUND(o.total_amount, 2) AS total_amount,
    p.payment_method
FROM orders o
JOIN customers c ON o.customer_id = c.id
JOIN payments p ON o.id = p.order_id
JOIN (
    SELECT order_id, MAX(paid_at) AS latest_paid_at
    FROM payments
    GROUP BY order_id
) latest ON p.order_id = latest.order_id 
        AND p.paid_at = latest.latest_paid_at
WHERE o.ordered_at >= '2023-10-01' AND o.ordered_at < '2023-11-01'
ORDER BY o.id ASC;