--Join Islemi
-- 1 Inner join : Bir tablodaki her bir kaydin diger tabloda bir karsiligi olan kayitlari listeler
-- inner join ifadesini yazarken inner yazmasak ta default olarak inner join işlemi yapacaktir.

-- Not: Eger sectigimiz sutunlar icerisinde her iki tabloda da ayni sutunlar var ise 
-- acikca bildirilmek zorundadir.

select * from products
inner join categories on products.CategoryID = categories.CategoryID

select products.ProductName,categories.CategoryName
from products
inner join categories on products.CategoryID = categories.CategoryID

-- bu yukarıdakinin kısaltışmış halidir, genelde bu kullanılır.
select p.ProductName,c.CategoryName
from products p
inner join categories c on p.CategoryID = c.CategoryID
inner join suppliers s on p.SupplierID = p.SupplierID



-- select * from products;
-- select * from categories; 
-- select * from suppliers;

select o.OrderID SiparisNo,c.CompanyName SiparişiVeren, (e.FirstName + e.LastName ) Calisan ,
s.CompanyName Kargo , o.OrderDate SiparisTarihi 
from orders o 
inner join customers c on c.CustomerID=o.CustomerID
inner join employees e on e.EmployeeID = o.EmployeeID
inner join Shippers s on s.ShipperID = o.ShipVia


--Almanyadan tedarik ettiğim ürünler hangileridir ve kategorileri nedir? supplier ve product tablosuna gitmek lazım.
select p.ProductName,c.CategoryName, s.CompanyName,s.country 
from products p 
inner join suppliers s on p.SupplierID=s.SupplierID
inner join categories c on c.CategoryID=p.CategoryID
where s.country='Germany'


Select * from orders
select * from [Order Details]


-- Yilllara gore ciro dagilimi 
select DATEPART(year,o.OrderDate) AS Yil,Round(sum(FLOOR(od.UnitPrice*od.QUANTİTY)),0) AS Ciro
from Orders o
inner join [Order Details] od on o.OrderID = od.OrderID
group by DATEPART(year,o.OrderDate)
order by yil

SELECT * FROM Orders