SELECT top 1 E.Ssn, E.Fname,E.Lname, COUNT(Pno) as DoneProject
FROM EMPLOYEE E
JOIN WORKS_ON WO ON WO.Essn = E.Ssn
GROUP BY E.Ssn, E.Fname,E.Lname
ORDER BY COUNT(Pno) desc