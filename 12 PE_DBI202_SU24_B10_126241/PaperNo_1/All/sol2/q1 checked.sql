create table Departments
(
	DeptID varchar(20) PRIMARY KEY,
	name nvarchar(200),
	office nvarchar(100)
)
create table Employees
(
	EmpCode varchar(20) PRIMARY KEY,
	Name nvarchar(50),
	BirthDate date,
	DeptID varchar(20),
	FOREIGN KEY(DeptID) REFERENCES Departments(DeptID)
)

create table Dependants
(
	Number int,
	Name nvarchar(50),
	BirthDate date,
	Role nvarchar(30),
	EmpCode varchar(20),
	FOREIGN KEY(EmpCode) REFERENCES Employees(EmpCode) on case cascade,
	PRIMARY KEY(Number,EmpCode) 
)