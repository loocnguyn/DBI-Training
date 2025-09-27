
create table Students
(
	StudentID int PRIMARY KEY,
	Full_name varchar(100),
	Email varchar(100),
	Gender varchar(10),
	BirthDate Date
);

create table Teachers
(
	TeacherID int PRIMARY KEY,
	Phone varchar(15),
	Email varchar(50),
	Full_Name varchar(100)

);
create table Courses
(
	CourseID int PRIMARY KEY,
	Course_Name varchar(100),
	TeacherID int,
	FOREIGN KEY(TeacherID) REFERENCES Teachers(TeacherID)

);
create table Enrollments
(
	Edate date,
	Etime time,
	StudentID int,
	CourseID int,
	FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
	FOREIGN KEY(CourseID) REFERENCES Courses(CourseID),
	PRIMARY KEY(StudentID,CourseID)
);