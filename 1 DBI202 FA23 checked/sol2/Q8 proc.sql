

create proc proc_salesPerson_invoice
@salesID decimal(18,0), @numberOfInvoices int output
as
begin
	select @numberOfInvoices = count( distinct SI.invoiceID)
	from SalesInvoice SI
	where @salesID = SI.salesID
end


declare @t int
declare @a decimal(18,0)
set @a = 30121050035
exec proc_salesPerson_invoice @a, @t output
select @t


drop proc proc_salesPerson_invoice