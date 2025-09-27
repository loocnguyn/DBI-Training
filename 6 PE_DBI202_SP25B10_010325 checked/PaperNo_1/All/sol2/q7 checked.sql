SELECT d.DepartmentName, s.SubjectName, count(r.Score) numberOfFailExams
FROM Results r
join Subjects s on r.SubjectID = s.SubjectID
join Departments d on d.DepartmentID = s.DepartmentID
where r.Score <5
group by d.DepartmentName, s.SubjectName
having count(r.Score) >=All (select count(r.Score) FROM Results r
													join Subjects s on r.SubjectID = s.SubjectID
													join Departments d on d.DepartmentID = s.DepartmentID
													where r.Score <5
													group by d.DepartmentName, s.SubjectName)