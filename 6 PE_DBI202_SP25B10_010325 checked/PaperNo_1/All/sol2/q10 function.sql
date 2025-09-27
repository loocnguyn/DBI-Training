create function fn_students(@departmentID int)
returns table
as
return 
(
	select s.*
	from students s
	where s.DepartmentID = @departmentID and s.StudentScholarship >0

)

select * from fn_students(2)