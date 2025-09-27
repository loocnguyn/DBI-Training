INSERT INTO CarCategories (CategoryName, RentalPricePerDay)
VALUES ('Sport', 100.3);

DECLARE @sportCategoryID INT;
SELECT @sportCategoryID = CategoryID 
FROM CarCategories 
WHERE CategoryName = 'Sport';

INSERT INTO Cars (Maker, Model, Year, LicensePlate, CategoryID, CurrentLocationID, Status)
VALUES ('Chevrolet', 'Corvette Stingray', 2024, '555-72HU', @sportCategoryID, NULL, 'Available');