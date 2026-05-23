-- Write a SQL query below --
SELECT 
    c.first_name, 
    c.last_name, 
    a.city, 
    a.country
FROM customers c
INNER JOIN addresses a ON c.id = a.customer_id
WHERE c.is_active = true 
  AND a.is_default = true
ORDER BY c.last_name ASC;