select p.product_id, p.product_name, p.list_price
from products p
where p.list_price between 1500 and 2000;