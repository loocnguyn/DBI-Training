SELECT st.name
FROM Events e
join workFor wf on wf.eventID = e.eventID
join Staffs st on st.staffID = wf.staffID
join Locations l on l.locationID = e.locationID
WHERE l.Name = 'Convention Center'