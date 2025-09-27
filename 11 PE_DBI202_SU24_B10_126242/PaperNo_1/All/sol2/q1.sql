
create table Roles
(
	RoleID int PRIMARY KEY,
	name nvarchar(100)

);
create table Users
(
	Username varchar(30) PRIMARY KEY,
	Password nvarchar(20),
	Email nvarchar(200),
	RoleID int,
	FOREIGN KEY(RoleID) references Roles(RoleID)
);
create table Permissions
(
	permissionID int PRIMARY KEY,
	name nvarchar(50)
);

create table hasPermission
(
	permissionID int,
	RoleID int,
	PRIMARY KEY(RoleID, permissionID),
	FOREIGN KEY(permissionID) REFERENCES Permissions(permissionID),
	FOREIGN KEY(RoleID) REFERENCES Roles(RoleID)
)