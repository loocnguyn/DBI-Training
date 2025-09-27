select p.product_id, p.product_name
from products p
join order_items oi on oi.product_id = p.product_id
group by p.product_id, p.product_name
having count(oi.order_id) >= all(select count(oi.order_id) from products p
join order_items oi on oi.product_id = p.product_id
group by p.product_id, p.product_name)