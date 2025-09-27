SELECT TOP 1 M.mechanicName, SUM(hours) AS sumHours
FROM Mechanic M
JOIN ServiceMehanic SM ON SM.mechanicID = M.mechanicID
JOIN ServiceTicket ST ON ST.serviceTicketID = SM.serviceTicketID
WHERE YEAR(ST.dateReturned) = 2021
GROUP BY M.mechanicName
ORDER BY SUM(hours) DESC