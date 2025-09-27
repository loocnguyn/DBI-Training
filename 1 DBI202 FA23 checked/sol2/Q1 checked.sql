create database d3
use d3
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
	serviceID varchar(50) primary key,
	serviceName nvarchar(100),
	servicePrice money
)
create table Contracts
(
	contractID varchar(50) primary key,
	quantity int,
	roomID varchar(50) foreign key references Rooms(roomID),
	custID varchar(50) foreign key references Customers(custID),
	serviceID varchar(50) foreign key references Services(serviceID),
)