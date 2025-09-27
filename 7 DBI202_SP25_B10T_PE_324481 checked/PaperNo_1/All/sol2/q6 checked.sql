select c.customer_id, (c.first_name+ ', ' +c.last_name) as Fullname, o.order_date, o.order_status
from customers c
join orders o on o.customer_id = c.customer_id
where month(o.order_date) = 2 and year(o.order_date) = 2018