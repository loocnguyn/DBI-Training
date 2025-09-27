create table tblAirport
(
	City nvarchar(50),
	State nvarchar(50),
	Name nvarchar(20),
	Airportcode nchar(10) PRIMARY KEY
);
create table tblAirplane
(
	AirplaneID nchar(10) PRIMARY KEY,
	AirplaneName nvarchar(20),
	TotalSeat int,
	Company nvarchar(50)
);
create table Canland
(
	Timeland datetime,
	AirplaneID nchar(10),
	Airportcode nchar(10),
	PRIMARY KEY(	AirplaneID,	Airportcode),
	FOREIGN KEY(AirplaneID) REFERENCES tblAirplane(AirplaneID),
	FOREIGN KEY(Airportcode) REFERENCES tblAirport(Airportcode)
);