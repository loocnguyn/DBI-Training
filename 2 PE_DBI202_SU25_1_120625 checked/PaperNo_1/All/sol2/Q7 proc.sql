create proc proc_SumSalary
@depNo INT	, @sumOfSalarys int output
as
begin
	SELECT @sumOfSalarys = sum(E.Salary)
	FROM EMPLOYEE E
	WHERE E.Dno = @depNo
end

declare @x int
exec proc_SumSalary 1, @x output
select @x as sumOfSalarys

drop proc proc_SumSalary