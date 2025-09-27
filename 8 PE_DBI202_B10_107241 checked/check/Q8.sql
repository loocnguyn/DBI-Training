--Q8--
CREATE PROCEDURE P2 
    @year INT, 
    @categoryName VARCHAR(50), 
    @NumberOfRentals INT OUTPUT, 
    @TotalAmount DECIMAL(10,2) OUTPUT
AS
BEGIN
    SELECT 
        @NumberOfRentals = COUNT(*), 
        @TotalAmount = SUM(R.TotalAmount)
    FROM Rentals R
    JOIN Cars C ON R.CarID = C.CarID
    JOIN CarCategories CC ON C.CategoryID = CC.CategoryID
    WHERE 
        YEAR(R.RentalDate) = @year 
        AND CC.CategoryName = @categoryName;
    IF @@ROWCOUNT = 0 
    BEGIN
        SET @NumberOfRentals = 0;
        SET @TotalAmount = 0;
    END
END;