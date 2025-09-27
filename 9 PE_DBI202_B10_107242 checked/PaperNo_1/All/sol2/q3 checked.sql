select e.locationID, count(e.eventID) TotalEvents
from Events e
group by e.locationID