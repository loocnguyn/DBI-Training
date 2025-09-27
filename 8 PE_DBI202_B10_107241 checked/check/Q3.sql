--Q3--
SELECT c.CarID , c.Maker , c.Model, c.Year , c.LicensePlate,
c.Status, Rl.RentalLocationID , rl.LocationName
FROM Cars AS c
JOIN RentalLocations AS Rl
ON c.CurrentLocationID = rl.RentalLocationID
WHERE ( rl.LocationName = 'Waterfront' OR rl.LocationName = 'Central Park') AND c.Status = 'Available'
