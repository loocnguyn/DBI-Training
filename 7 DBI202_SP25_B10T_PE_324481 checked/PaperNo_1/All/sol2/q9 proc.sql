create proc prcgetCategory
@pro_name varchar(255), @cat_name varchar(255) output
as
begin
		select @cat_name = c.category_name
		from products p
		join categories c on c.category_id = p.category_id
		where @pro_name = p.product_name
		 
end
drop proc prcgetCategory


DECLARE @cat_name VARCHAR(255);
DECLARE @pro_name VARCHAR(255) = 'Surly Straggler - 2018';

EXECUTE prcgetCategory @pro_name, @cat_name OUTPUT;

SELECT @cat_name AS category_name;