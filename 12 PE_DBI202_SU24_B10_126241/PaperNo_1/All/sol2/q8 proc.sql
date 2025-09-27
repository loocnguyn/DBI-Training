create proc proc_product_model
@modelID int,
@numberOfProducts int output
as
begin
	select @numberOfProducts = count(distinct p.ProductID)
	from Product p
	where p.ModelID = @modelID
end

DECLARE @x INT;

EXEC proc_product_model 
    @modelID = 19, 
    @numberOfProducts = @x OUTPUT;

SELECT @x AS NumberOfProducts;
