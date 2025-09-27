select c.customer_id, (c.first_name+ ' ' +c.last_name )   full_name, count(o.order_id) as number_of_order
from customers c
left join orders o on o.customer_id = c.customer_id
group by c.customer_id, c.last_name, c.first_name
order by count(o.order_id) desc