create trigger Tri_Del on Stocks
after delete
as
begin
	select d.product_id, p.product_name, d.store_id, st.store_name, d.quantity
	from deleted d
	join products p on p.product_id = d.product_id
	join stores st on st.store_id = d.store_id
end
delete from stocks
where product_id in(2,7,12,15) and store_id = 2
rollback transaction