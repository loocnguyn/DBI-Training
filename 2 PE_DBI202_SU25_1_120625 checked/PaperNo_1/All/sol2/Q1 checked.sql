CREATE TABLE Customers
(
	CustID int PRIMARY KEY,
	City varchar(100),
	Cname varchar(100),
);
--correct
CREATE TABLE Orders
(
	OrderID int PRIMARY KEY,
	Odate date,
	CustID int,
	FOREIGN KEY(CustID) REFERENCES Customers(CustID)

);
--correct
CREATE TABLE Items
(
	ItemID int PRIMARY KEY,
	Unit_Price decimal(10)
);
--correct
CREATE TABLE Order_Item
(
	Qty int,
	OrderID int,
	ItemID int,
	PRIMARY KEY (	OrderID,	ItemID),
	FOREIGN KEY(ItemID) REFERENCES Items(ItemID),
	FOREIGN KEY(OrderID) REFERENCES Orders(OrderID)
);