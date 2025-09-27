SELECT l.Name 
FROM Locations l
join Events e on l.locationID = e.locationID
group by l.Name
having count(e.eventID) >=all(select count(e.eventID) FROM Locations l
join Events e on l.locationID = e.locationID
group by l.Name)