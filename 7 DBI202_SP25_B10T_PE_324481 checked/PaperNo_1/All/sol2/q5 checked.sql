select p.product_id, p.product_name, sum(st.quantity) as sum_quantity
from products p
join stocks st on st.product_id = p.product_id
group by p.product_id, p.product_name
having sum(st.quantity) >75