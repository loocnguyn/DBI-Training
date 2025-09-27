select l.Name
from Events e
join Locations l on l.locationID = e.locationID
group by l.Name
having count(e.eventID) >= all(select count(e.eventID) from Events e
								join Locations l on l.locationID = e.locationID
								group by l.Name)