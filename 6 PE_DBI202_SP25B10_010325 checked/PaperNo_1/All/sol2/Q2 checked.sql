SELECT s.StudentID, s.StudentLastName, s.StudentFirstName, d.DepartmentName
FROM STUDENTS s
JOIN  DEPARTMENTS d on d.DepartmentID = s.DepartmentID
WHERE d.DepartmentName = 'Computer Science'