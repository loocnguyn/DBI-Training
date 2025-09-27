select e.eventID, e.name, e.StartTime, e.EndTime, l.locationID
from Events e
join Locations l on l.locationID = e.locationID
where e.StartTime > '2024-01-01'