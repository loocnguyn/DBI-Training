create proc proc_Staffs
@StaffID int,
@NewPhone varchar(15)
as
begin
	update st
	set st.Phone = @NewPhone
	from Staffs st
	where st.staffID = @StaffID

end