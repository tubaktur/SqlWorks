ALTER VIEW UrunlerListesi --alter yerine create yazarsan yeni oluştururu.alter olanın üstüne yaz demek
as 
select p.ProductName,c.CategoryName ,s.CompanyName
from Products p
inner join Categories c on p.CategoryID = c.CategoryID
inner join Suppliers s on s.SupplierID = p.SupplierID

SELECT categoryname,count(*) Adet
from UrunlerListesi
Group by categoryname