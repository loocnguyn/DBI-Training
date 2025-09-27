--Q4--
SELECT 
    R.RentalID, 
    R.RentalDate, 
    R.CarID, 
    C.Maker, 
    C.Model, 
    CC.CategoryName, 
    RL.LocationName AS RentalLocationName
FROM 
    Rentals R
JOIN 
    Cars C ON R.CarID = C.CarID
JOIN 
    CarCategories CC ON C.CategoryID = CC.CategoryID
JOIN 
    RentalLocations RL ON R.RentalLocationID = RL.RentalLocationID
WHERE 
    YEAR(R.RentalDate) = 2020 
    AND RL.LocationName = 'Westside Depot'
ORDER BY 
    R.RentalDate DESC;