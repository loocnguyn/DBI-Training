create proc proc_serviceTicketID_part
@serviceTicketID int, @numberOfParts int output
as
begin
	SELECT  @numberOfParts = COUNT( distinct PU.partID)
	FROM ServiceTicket ST
	JOIN PartsUsed PU ON PU.serviceTicketID = ST.serviceTicketID
	WHERE @serviceTicketID = ST.serviceTicketID
end

declare @x int
exec proc_serviceTicketID_part 10111236, @x output
select @x
drop proc proc_serviceTicketID_part