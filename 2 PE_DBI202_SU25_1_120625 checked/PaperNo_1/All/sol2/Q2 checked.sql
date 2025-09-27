SELECT e.Bdate, e.Address
FROM EMPLOYEE E
WHERE (E.Fname + ' '+ e.Minit + '. '+ e.Lname) = 'John B. Smith	'