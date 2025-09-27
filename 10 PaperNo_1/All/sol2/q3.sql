select c.customer_id, c.first_name, c.last_name, c.city, c.state
from customers c
where  c.city = 'Bellmore' or c.city ='New York'

order by c.city asc, c.customer_id asc