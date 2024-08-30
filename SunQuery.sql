--hic sipariş vermemişi müşterim var mı? bu sorunun cevabı için customer ve orders tablosuna ihtiyaç vardır. öce customersleri bir al.
SELECT * FROM Customers
where CustomerID not in (select CustomerID FROM ORDERS)

--hiç sipariş almamış çalışan var mı?
select * from Employees
where EmployeeID not in (select EmployeeID FROM ORDERS)

SELECT ProductName,
(select CategoryName from Categories WHERE Categories.CategoryID=products.categoryID),
(select CompanyName from Suppliers WHERE Suppliers.SupplierID=products.SupplierID)
from Products

