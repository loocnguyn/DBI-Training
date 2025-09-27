SELECT s.StudentID, s.StudentLastName, s.StudentFirstName, (year(getdate())-year(s.StudentBirthday)) as Age
FROM STUDENTS s

group by s.StudentID, s.StudentLastName, s.StudentFirstName, s.StudentBirthday
having (year(getdate())-year(s.StudentBirthday)) >20