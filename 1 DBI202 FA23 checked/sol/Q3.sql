select c.custName, c.phone, c.sex, c.cusAddress, sI.NumberOfInvoiceID from Customer c join(
select custID, count(invoiceID) as NumberOfInvoiceID from SalesInvoice group by custID) as sI
on c.custID =sI.custID
where NumberOfInvoiceID >= 3
order by custName asc