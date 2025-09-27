create trigger trgUpdateRequiredDate on orders
after update
as
begin
	IF update(required_date)
	begin
		if exists(
			select 1 
			from inserted i
			where i.required_date <i.order_date
		)
		begin
			rollback transaction;
		end
	end	
end

drop trigger trgUpdateRequiredDate 


UPDATE Orders
SET required_date = '2016-01-01'
WHERE order_id = 9
select * from Orders where order_id = 9


	if exists(
	select 1
	from inserted i
	join Ranking r on r.UniversityID = i.UniversityID
	and r.RankingYear = i.RankingYear
	and r.AgencyID = i.AgencyID)
	begin
	return;
	end
	insert into Ranking(RankingID,UniversityID,AgencyID,RankingYear,Score)
	select RankingID,UniversityID,AgencyID,RankingYear,Score
	from inserted