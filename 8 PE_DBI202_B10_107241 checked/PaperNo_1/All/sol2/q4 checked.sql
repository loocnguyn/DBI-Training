SELECT e.eventID, count(wf.staffID) NumberStaff
FROM Events e 
join workFor wf	on wf.eventID = e.eventID
join Staffs st on st.staffID = wf.staffID
group by e.eventID
having count(wf.staffID) >=2