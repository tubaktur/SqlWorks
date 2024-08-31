
 SELECT *
 FROM Suppliers
 WHERE EXISTS 
 (SELECT ProductName 
 FROM Products 
 WHERE Products.SupplierID = Suppliers.supplierID AND UnitPrice > 200);

