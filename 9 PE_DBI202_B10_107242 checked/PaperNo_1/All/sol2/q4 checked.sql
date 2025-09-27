select e.eventID, count(wf.staffID) as NumberStaff
from Events e
join workFor wf on wf.eventID = e.eventID
group by e.eventID
having count(wf.staffID) >=2