--Ülkelerin siparişlerinin yıllara göre dağılımı  -- order a göre yap
select DATEPART(year,OrderDate) yil, ShipCountry, COUNT(*) adet
from Orders
group by DATEPART(year,OrderDate),ShipCountry
order by adet desc 


/* HAVING */

--20 ile 10 adet arasında sipariş verenlerin listesi
select DATEPART(year,OrderDate) yil, ShipCountry, COUNT(*) adet
from Orders
group by DATEPART(year,OrderDate),ShipCountry
--GROUP BY İÇİNDEN GELMİŞ OLAN VERİLER ÜZERİNDE BİR WHERE ŞARTI UYGULAMAK İSTİYORSAM HAVING KULLANILMAK ZORUNDADIR.0
HAVING COUNT(*) >=10 AND COUNT(*)<=20 
order by adet desc 

--TOPLAM TUTAR HESAPLAMA PRİCE(FİYAT) İLE QUANTİTY(ADET) ÇARP
SELECT TOP 20 * FROM [Order Details] 

--EN YÜKSEK CİROLU İLK 5 SİPARİŞ
SELECT TOP 5 OrderID , sum(UnitPrice*Quantity) Ciro
FROM [Order Details] --ORDER DETAİLS TABLOSU DA VARDIR!
GROUP BY OrderID
ORDER BY Ciro DESC
select * from [Order Details] WHERE OrderID=10865

--TOPLAM CİROSU 5000 İLE 10000 ARASI OLAN SİPARİŞLERİN LİSTESİ
/*NOOOOT!
WHERE ŞARTINDA AGGRİGRATE ŞARTINI KULLANAMIYORUZ!
BUNUN İÇİN GROUP BY DAN SONRA,order by dan önce HAVING KULLAN */

--TOPLAM CİROSU 5000 İLE 10000 ARASI OLAN SİPARİŞLERİN LİSTESİ
SELECT OrderID,sum(UnitPrice*Quantity) Ciro
from [Order Details]
group BY OrderID
HAVING sum(UnitPrice*Quantity)>5000 and SUM(UnitPrice*Quantity)<10000
ORDER BY Ciro DESC

--between ile çözümü
SELECT OrderID,sum(UnitPrice*Quantity) Ciro
from [Order Details]
group BY OrderID
HAVING sum(UnitPrice*Quantity) BETWEEN 5000 and 10000
ORDER BY Ciro DESC

