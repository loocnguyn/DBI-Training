create function f_tk (@mechanicID decimal(18,0))
returns table
as
return
(
	SELECT SM.mechanicID, M.mechanicName, sum(hours) as sumHours
	FROM	ServiceMehanic SM
	JOIN	Mechanic M ON SM.mechanicID = M.mechanicID
	WHERE	SM.mechanicID = @mechanicID
	group by SM.mechanicID, M.mechanicName
)

drop function f_tk
select * from f_tk(41051230025)