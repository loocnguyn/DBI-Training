select p.ProductID, p.Name, sum(pi.quantity) TotalQuantity
from Product p
join ProductInventory pi on pi.ProductID=p.ProductID
group by p.ProductID, p.Name
having sum(pi.quantity) >= all(select sum(pi.quantity)from Product p
join ProductInventory pi on pi.ProductID=p.ProductID
group by p.ProductID, p.Name)