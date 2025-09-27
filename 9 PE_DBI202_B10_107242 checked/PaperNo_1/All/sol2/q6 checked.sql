select e.*
from Events e
join workFor wf on wf.eventID = e.eventID
group by e.eventID, e.name, e.StartTime, e.EndTime, e.locationID
having count(wf.staffID) >1