--herbir ülkeden kaç adet kayır var! group by country e göre yap!
SELECT Country,COUNT(country)
from Employees
group by Country 

--hangi ülkeden kaç adet müşterim var
select Country,COUNT(*) Adet
from Customers 
group by Country
order by Adet desc

/*SORULAR (Orders tablosundan çekı ve gruplayarak yap)*/

--1) HANGİ KATEGORİDEN KAÇ ADET ÜRÜN VAR? Products tablosundan çek.
select * from Products
SELECT CategoryID, count(*) from Products group by CategoryID ORDER BY 2 DESC

--2) HANGİ TEDARİKÇİDEN KAÇ ADET ÜRÜN ALIYORUM? PRODUCTS TABLOSUNDAN ÇEK
select * from Products
SELECT SupplierID, count(*) from Products group by SupplierID ORDER BY 2 DESC

--2) 1997 YILINDA HANGİ ÜLKEYE KAÇ ADET SİPARİŞ GÖNDERDİM? ORDER TABLOSU!
SELECT * FROM Orders
SELECT ShipCountry, COUNT(*)
FROM Orders
WHERE DATEPART(year,OrderDate)=1997
group by ShipCountry
order by 2 DESC


--hem yıla hem de ülkeye göre kaç adet sipariş gönderdim
SELECT DATEPART(year,OrderDate), COUNT(*) Adet
FROM Orders
WHERE DATEPART(year,OrderDate)=1997 --bu sırayı komple kaldırırsak tüm yıllara göre getirir!
group by DATEPART(year,OrderDate),ShipCountry
order by Adet DESC


--2) 1997 yılında en az sipariş veren 3 ülke hangisidir* orders tablosuna göre 

SELECT  Top 3 ShipCountry, COUNT(*) Adet
FROM Orders
WHERE DATEPART(year,OrderDate)=1997 
group by ShipCountry
order by Adet 


--3) 1998 yılında en fazla sipariş alan calisanlardan ilk 3 ü hangisi.Prim verilecek --orders a göre yap
SELECT  Top 3 EmployeeID, COUNT(*) Adet
FROM Orders
WHERE DATEPART(year,OrderDate)=1998
group by EmployeeID
order by Adet DESC  --en fazla dediği için desc olacak 



/* ORDER TABLOSU GROUPLAMA İÇİN ÇOK UYGUN BİR TABLODUR */

--3) KARGO FİRMALARININ TAŞIDIĞI SİPARİŞ SAYISI NEDİR?
SELECT * FROM Orders
SELECT  ShipVia, COUNT(*) Adet
FROM Orders
group by ShipVia
order by Adet DESC



