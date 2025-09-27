--Q6--
WITH RentalsByYearMonth AS (
    SELECT 
        YEAR(RentalDate) AS Year, 
        MONTH(RentalDate) AS Month, 
        COUNT(*) AS NumberOfRentals
    FROM Rentals
    GROUP BY YEAR(RentalDate), MONTH(RentalDate)
),
MaxRentalsPerYear AS (
    SELECT Year, MAX(NumberOfRentals) AS MaxRentals FROM RentalsByYearMonth
    GROUP BY Year
)
SELECT RBYM.Year, RBYM.Month, RBYM.NumberOfRentals FROM RentalsByYearMonth RBYM JOIN MaxRentalsPerYear MRPY ON RBYM.Year = MRPY.Year AND RBYM.NumberOfRentals = MRPY.MaxRentals
ORDER BY RBYM.Year ASC, RBYM.Month ASC;
