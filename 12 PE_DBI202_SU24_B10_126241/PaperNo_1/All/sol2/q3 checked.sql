select p.ProductID, p.Name, p.Price, pi.Quantity, pi.Shelf
from Product p
join ProductInventory pi on pi.ProductID = p.ProductID
where pi.Shelf = 'A'
order by pi.Quantity desc