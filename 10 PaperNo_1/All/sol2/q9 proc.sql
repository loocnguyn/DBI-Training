create proc staff_order
@staffid int, @countOrders int output
as
begin
	select @countOrders = count(o.order_id)
	from orders o
	where o.staff_id = @staffid
	group by o.staff_id 
end

drop proc staff_order
declare @x int exec staff_order 3, @x output
select @x as NumberOfOrders