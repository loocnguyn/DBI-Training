	SELECT E.Lname, E.Fname
	FROM EMPLOYEE E
	WHERE E.Salary >	
	(SELECT MAX( E.Salary)
						FROM EMPLOYEE E
						WHERE E.Dno = 5)
	ORDER BY E.Lname ASC