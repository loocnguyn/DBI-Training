create proc proc_report
@deptname varchar(50), @result int output
as
begin
	select @result = count(s.StudentID)
	from Departments d
	join Students s on s.DepartmentID = d.DepartmentID
	group by d.DepartmentName
	having  d.DepartmentName = @deptname
end



drop proc proc_report

declare @x int
exec proc_report 'Mathematics', @x output
select @x as 'result'