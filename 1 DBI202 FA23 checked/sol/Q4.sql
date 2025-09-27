select c.custName, c1.model, sT.serviceTicketID, sT.dateReturned from Customer c join SalesInvoice sI on sI.custID = c.custID
join Cars c1 on sI.carID = c1.carID
join ServiceTicket sT on sT.carID = c1.carID
where year(sT.dateReturned) = 2021 and month(sT.dateReturned) <=4






order by ServiceTicketID desc