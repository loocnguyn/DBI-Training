select c.customer_id, c.first_name, c.last_name, c.city
from customers c
where c.city = 'Liverpool'
order by c.customer_id desc