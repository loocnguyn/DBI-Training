create table Customers
(
	custID varchar(50) primary key,
	custName nvarchar(100),
	custAddress nvarchar(200)
)
create table Rooms
(
	roomID varchar(50) primary key,
	roomPrice money
)
create table Services
(
	ServiceID varchar(50) primary key,
	ServiceName nvarchar(100),
	servicePrice money
)
create table Contracts
(
	contractID varchar(50) primary key,
	quantity int,
	custID varchar(50) foreign key references Customers(custID),
	roomID varchar(50) foreign key references Rooms(roomID),
	serviceID varchar(50) foreign key references Services(serviceID),
)
