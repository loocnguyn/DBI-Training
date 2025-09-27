--Q5--
SELECT 
    CC.CategoryID, 
    CC.CategoryName, 
    COUNT(R.RentalID) AS NumberOfRentals FROM CarCategories CC
LEFT JOIN Cars C ON CC.CategoryID = C.CategoryID
LEFT JOIN Rentals R ON C.CarID = R.CarID AND R.RentalDate BETWEEN '2019-01-01' AND '2019-03-31'
GROUP BY CC.CategoryID, CC.CategoryName
ORDER BY NumberOfRentals DESC, CC.CategoryName ASC;
