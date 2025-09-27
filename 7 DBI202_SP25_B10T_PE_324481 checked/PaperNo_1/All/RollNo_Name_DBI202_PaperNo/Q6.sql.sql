SELECT 
    c.customer_id, 
    c.first_name + ', ' + c.last_name AS Fullname, 
    o.order_date, 
    o.order_status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE YEAR(o.order_date) = 2018 AND MONTH(o.order_date) = 2;