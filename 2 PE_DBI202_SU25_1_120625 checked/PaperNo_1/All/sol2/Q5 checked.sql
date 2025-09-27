SELECT E.Fname, E.Lname, E.salary
FROM EMPLOYEE E
WHERE E.Dno = (	SELECT E.Dno
	FROM EMPLOYEE E		
	WHERE E.Salary = (SELECT MAX(E.Salary)
					FROM EMPLOYEE E))






