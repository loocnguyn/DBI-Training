SELECT C.custName, CA.model, ST.serviceTicketID, ST.dateReturned
FROM CUSTOMER C
JOIN ServiceTicket ST ON ST.custID = C.custID
JOIN CARS CA ON CA.carID = ST.carID
WHERE YEAR(ST.dateReturned) = 2021 AND MONTH(ST.dateReturned) <=3
ORDER BY ST.serviceTicketID DESC