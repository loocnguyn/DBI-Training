create trigger tr_insert_car on Cars
after insert
as
begin
	declare @year int
	declare @model nvarchar(100)
	select @year = year, @model = model from inserted
	select * from Cars Ca where @year = ca.year and @model = ca.model
end
insert into Cars(CarID, serialNumber, model, colour, year)
values(11223344104, '83ABC83ABC83ABC83','toyota','Black',2017)
drop trigger tr_insert_car