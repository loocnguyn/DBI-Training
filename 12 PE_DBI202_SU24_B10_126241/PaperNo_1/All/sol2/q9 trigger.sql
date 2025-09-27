create trigger tr_insert_Product_Subcategory on Product
after insert
as
begin
	select i.ProductID, i.Name ProductName, i.SubcategoryID, ps.Name SubcategoryName, ps.Category
	from inserted i
	join ProductSubcategory ps on ps.SubcategoryID = i.SubcategoryID
end


insert into Product(ProductID, Name, Cost, Price, SubcategoryID, SellStartDate)
values (1005, 'Product Test', 12, 15,1, '2021-10-25')