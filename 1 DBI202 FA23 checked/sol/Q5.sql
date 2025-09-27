create proc proc_serviceTicket_part
@serviceTicketID int, @numberOfPart int output
as
begin
	select @numberOfPart = count(numberUsed) 
	from PartsUsed where @serviceTicketID = serviceTicketID 
	group by serviceTicketID
end

declare @x int
exec proc_serviceTicket_part 10111236, @x output
select @x