CREATE TRIGGER updateRentals
ON Rentals
AFTER UPDATE
AS
BEGIN
    IF UPDATE(ReturnDate) OR UPDATE(RentalDate)
    BEGIN
        UPDATE R
        SET TotalAmount = CC.RentalPricePerDay * 
                          (CASE 
                              WHEN R.RentalDate = R.ReturnDate THEN 1
                              ELSE DATEDIFF(DAY, R.RentalDate, R.ReturnDate) + 1
                          END)
        FROM Rentals R
        JOIN inserted I ON R.RentalID = I.RentalID
        JOIN Cars CA ON R.CarID = CA.CarID
        JOIN CarCategories CC ON CA.CategoryID = CC.CategoryID
        WHERE I.ReturnDate IS NOT NULL AND I.RentalDate IS NOT NULL;
    END
END;