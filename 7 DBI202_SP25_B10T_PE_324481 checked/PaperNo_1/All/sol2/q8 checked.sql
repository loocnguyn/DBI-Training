select s.store_id, s.store_name, sum(quantity) as QtyInStock
from stores s
join stocks so on so.store_id = s.store_id
group by s.store_id, s.store_name
having sum(quantity) >=all(select sum(quantity) from stores s
												join stocks so on so.store_id = s.store_id
												group by s.store_id, s.store_name)
