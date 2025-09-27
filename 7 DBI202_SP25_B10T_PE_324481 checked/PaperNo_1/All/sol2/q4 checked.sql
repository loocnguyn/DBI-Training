select p.product_name, c.category_name, p.list_price
from products p
join categories c on c.category_id = p.category_id
where c.category_name = 'Mountain Bikes' and p.list_price < 469.99