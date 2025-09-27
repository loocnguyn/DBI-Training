SELECT e.name, l.Name
FROM Locations l
join Events e on l.locationID = e.locationID