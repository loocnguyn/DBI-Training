SELECT s.StudentID, s.StudentLastName, s.StudentFirstName
FROM Students s
join Departments d on d.DepartmentID = s.DepartmentID 
group by s.StudentID, s.StudentLastName, s.StudentFirstName, s.StudentScholarship
having s.StudentScholarship = ( select	s.StudentScholarship from Students s
										join Departments d on d.DepartmentID = s.DepartmentID and d.DepartmentName = 'Mathematics'
										group by s.StudentID, s.StudentLastName, s.StudentFirstName, s.StudentScholarship
										having s.StudentScholarship >= all (select	s.StudentScholarship from Students s
										join Departments d on d.DepartmentID = s.DepartmentID and d.DepartmentName = 'Mathematics'
										group by s.StudentID, s.StudentLastName, s.StudentFirstName, s.StudentScholarship))