create trigger  tr_insert_car on Cars
after insert
as 
begin
	declare @year int
	declare @model nvarchar(100)
	select @year = year, @model = model from inserted
	select * from Cars where year = @year and model = @model
end
