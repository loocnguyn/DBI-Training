-- Q1--
CREATE TABLE Products(
[Name] NVARCHAR(50),
Description NVARCHAR(250),
ProductNo VARCHAR(30) PRIMARY KEY
);

CREATE TABLE Colors(
ColorCode VARCHAR(20) PRIMARY KEY,
Name NVARCHAR(100)
);

CREATE TABLE Sizes(
SizeCode VARCHAR(15) PRIMARY KEY,
Description NVARCHAR(200)
);

CREATE TABLE Has(
    quantity INT,
    Price DECIMAL(10,2),
    ProductNo VARCHAR(30),
    SizeCode VARCHAR(15),
    ColorCode VARCHAR(20),
    FOREIGN KEY (ProductNo) REFERENCES Products(ProductNo),
    FOREIGN KEY (SizeCode) REFERENCES Sizes(SizeCode),
    FOREIGN KEY (ColorCode) REFERENCES Colors(ColorCode)
);