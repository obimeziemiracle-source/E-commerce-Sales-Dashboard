use dinmadb;

select * from Ecommerce_Messy_Dataset_300_Rows;

select *
from Ecommerce_Messy_Dataset_300_Rows
where CustomerRating is NULL;

select COUNT(CustomerName) AS
TotalCustomer
from Ecommerce_Messy_Dataset_300_Rows;

select *
from Ecommerce_Messy_Dataset_300_Rows
where Gender = 'Female';

select *
from Ecommerce_Messy_Dataset_300_Rows
where Gender = 'Male';

select SUM(Sales) AS
TotalRevenue
from Ecommerce_Messy_Dataset_300_Rows;

select AVG(Quantity) AS
AveargeQuantity
from Ecommerce_Messy_Dataset_300_Rows;

select CustomerName, SUM(Sales) As
TotalSpent
from Ecommerce_Messy_Dataset_300_Rows
group by CustomerName
order by TotalSpent DESC;

select CustomerName, AVG(Sales) AS
AverageSales
from Ecommerce_Messy_Dataset_300_Rows
group by CustomerName
order by AverageSales;

select CustomerName, COUNT(*) AS
PurchaseCount
from Ecommerce_Messy_Dataset_300_Rows
group by CustomerName
having COUNT(*) > 1;

select MAX(Sales) AS
HighestSales
from Ecommerce_Messy_Dataset_300_Rows;

select MIN(Sales) AS
LowestSales
from Ecommerce_Messy_Dataset_300_Rows;

select DateName(Month, OrderDate) AS SalesMonth,
SUM(Sales) AS TotalSales
from Ecommerce_Messy_Dataset_300_Rows
group by DateName(Month, OrderDate)
Order by TotalSales DESC;

select Top 3 Region, SUM(Sales) AS
TotalSales
from Ecommerce_Messy_Dataset_300_Rows
group by Region
order by TotalSales;

select AVG(CustomerRating) AS
AverageCustomerRating
from Ecommerce_Messy_Dataset_300_Rows;


select Top 5 Product, (CustomerRating) AS
HighestRating
from Ecommerce_Messy_Dataset_300_Rows;
