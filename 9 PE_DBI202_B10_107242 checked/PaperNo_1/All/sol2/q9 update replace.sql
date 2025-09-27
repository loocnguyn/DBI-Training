update st
set st.Phone =	REPLACE(st.Phone, '555', '999')
from Staffs st
where st.Phone like '555%'

select * from Staffs