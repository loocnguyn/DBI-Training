create table Staff
(
	StaffID nchar(7)  PRIMARY KEY,
	Phone nchar(10),
	Name nvarchar(30)
);
create table Event
(
	EventID nchar(20)  PRIMARY KEY,
	EventName nvarchar(30)
);
create table Work
(
	Hours float,
	StaffID nchar(7),
	EventID nchar(20),
	PRIMARY KEY(StaffID, EventID),
	FOREIGN KEY(StaffID) REFERENCES  Staff(StaffID),
	FOREIGN KEY(EventID) REFERENCES  Event(EventID)
);