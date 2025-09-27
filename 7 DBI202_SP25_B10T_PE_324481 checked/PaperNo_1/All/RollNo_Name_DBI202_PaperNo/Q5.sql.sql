SELECT p.product_id, p.product_name, SUM(s.quantity) AS sum_quantity
FROM products p
JOIN stocks s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity) > 75;