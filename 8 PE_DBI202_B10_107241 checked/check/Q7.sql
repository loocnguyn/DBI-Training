--Q7--
SELECT  RL.RentalLocationID, RL.LocationName, CC.CategoryID, CC.CategoryName,
 COUNT(C.CarID) AS NumberOfCars
FROM RentalLocations RL
CROSS JOIN CarCategories CC 
LEFT JOIN Cars C ON RL.RentalLocationID = C.CurrentLocationID AND CC.CategoryID = C.CategoryID
WHERE
    RL.LocationName IN ('Downtown Office', 'Northside Branch', 'Airport Terminal')
GROUP BY
    RL.RentalLocationID, RL.LocationName, CC.CategoryID, CC.CategoryName
ORDER BY
    RL.LocationName DESC,
    CC.CategoryName ASC;
