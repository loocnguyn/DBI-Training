SELECT e.eventID, e.name, count(wf.staffID) as TotalStaff
FROM Events e
left join workFor wf on wf.eventID = e.eventID
group by e.eventID, e.name