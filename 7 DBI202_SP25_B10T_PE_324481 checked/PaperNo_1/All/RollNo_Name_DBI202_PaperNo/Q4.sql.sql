SELECT p.product_name, c.category_name, p.list_price
FROM products p
JOIN categories c ON p.category_id = c.category_id
WHERE c.category_name = 'Mountain Bikes' AND p.list_price < 469.99;