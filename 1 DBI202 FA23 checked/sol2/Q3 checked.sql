SELECT C.custName, C.phone, C.cusAddress, COUNT(SI.invoiceID) AS NumberOfInvoiceID
FROM CUSTOMER C
JOIN SalesInvoice SI ON C.custID = SI.custID

GROUP BY C.custName, C.PHONE, C.CUSADDRESS
HAVING COUNT(SI.invoiceID) >=3
order by C.custName asc