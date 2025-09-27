SELECT p.product_id, p.product_name, sum(st.quantity) as 'sum of quantity in stocks'
FROM products p
join stocks st on st.product_id = p.product_id
WHERE p.product_id not in (select p.product_id
							FROM products p
							join order_items oi on oi.product_id = p.product_id 
							join orders o on o.order_id = oi.order_id and year(o.order_date) = 2017
							group by p.product_id)
group by p.product_id, p.product_name
