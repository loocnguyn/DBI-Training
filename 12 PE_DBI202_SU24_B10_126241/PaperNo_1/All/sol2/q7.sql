select l.LocationID, l.Name LocationName, p.ProductID, p.Name ProductName, pi.Quantity
from Location l
join ProductInventory pi on pi.LocationID = l.LocationID
join Product p on p.ProductID = pi.ProductID
where pi.Quantity = (select max(pi2.Quantity) from ProductInventory pi2
											join Location l1 on l1.LocationID = pi2.LocationID
											where pi2.LocationID = l.LocationID)
order by l.Name asc, p.Name desc