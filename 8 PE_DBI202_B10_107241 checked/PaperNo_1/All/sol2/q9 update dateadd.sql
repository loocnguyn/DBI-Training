update e
set e.StartTime = DATEADD(HOUR, 2,StartTime)
from Events e
join workFor wf on wf.eventID = e.eventID
where wf.staffID = 2


