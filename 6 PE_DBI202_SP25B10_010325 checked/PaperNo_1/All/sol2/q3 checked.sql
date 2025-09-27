SELECT s.StudentID, s.StudentLastName, s.StudentFirstName
FROM Students s
WHERE s.StudentFirstName like 'T%'
order by s.StudentLastName asc