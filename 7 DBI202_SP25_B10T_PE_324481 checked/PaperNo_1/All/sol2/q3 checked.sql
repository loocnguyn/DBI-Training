select p.product_id,p.product_name, p.model_year, p.list_price
from products p
where p.model_year = 2018 and p.list_price = 229.99