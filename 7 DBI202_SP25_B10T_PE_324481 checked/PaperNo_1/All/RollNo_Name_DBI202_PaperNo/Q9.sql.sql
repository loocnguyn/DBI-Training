CREATE PROCEDURE prcgetCategory
    @pro_name varchar(255),
    @cat_name varchar(255) OUTPUT
AS
BEGIN
    SELECT @cat_name = c.category_name
    FROM products p
    JOIN categories c ON p.category_id = c.category_id
    WHERE p.product_name = @pro_name;

    IF @cat_name IS NULL
    BEGIN
        SET @cat_name = 'Product not found';
    END
END;


DECLARE @cat_name varchar(255);
DECLARE @pro_name varchar(255) = 'Surly Straggler - 2018';
EXECUTE prcgetCategory @pro_name, @cat_name OUTPUT;
SELECT @cat_name AS category_name;