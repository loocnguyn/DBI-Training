create function OrderPrice(@orderId int)
returns decimal(18)
as
begin
	declare @result decimal(18);
	select @result = sum(oi.list_price) 
	from order_items oi
	where oi.order_id = @orderId
	group by oi.order_id
	return @result
end


drop function OrderPrice
select [dbo].OrderPrice(3) as sum_of_list_price