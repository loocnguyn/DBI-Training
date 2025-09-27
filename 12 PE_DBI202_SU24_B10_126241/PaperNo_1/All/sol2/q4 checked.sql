select p.ProductID, p.Name ProductName, p.Color, p.Cost, p.Price, l.LocationID, l.Name LocationName, pi.Shelf, pi.Bin, pi.Quantity
from Product p
left join ProductInventory pi on pi.ProductID = p.ProductID
left join Location l on l.LocationID = pi.LocationID
where p.Color = 'Yellow' and p.Cost <400