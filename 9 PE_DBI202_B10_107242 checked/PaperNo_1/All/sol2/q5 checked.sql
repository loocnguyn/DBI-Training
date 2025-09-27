select e.name, l.Name, st.name
from Events e
join workFor wf on wf.eventID = e.eventID
join Staffs st on st.staffID = wf.staffID
join Locations l on l.locationID = e.locationID