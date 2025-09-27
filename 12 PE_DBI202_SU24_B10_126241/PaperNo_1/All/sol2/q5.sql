select pm.ModelID, pm.Name, count( distinct p.ProductID) as NumberOfProducts
from ProductModel pm
left join Product p on p.ModelID = pm.ModelID
where pm.Name like 'Mountain%' or pm.Name like 'ML Mountain%'
group by pm.ModelID, pm.Name
order by count( distinct p.ProductID) desc, pm.Name asc