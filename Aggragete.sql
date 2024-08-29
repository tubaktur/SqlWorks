--Bu bölümdeki genel hatlar: Toplama fonksiyonları, gruplama fonksiyonları, sayma fonksiyonları.
--Count =>bir tablodaki verilen değere göre kayit sayısını bulur.

select count(*) FROM Employees --tablodaki kayıt sayısı
select count(FirstName) from Employees --9 kayit
SELECT count(region) FROM Employees --5 kayit çıkar: null değerleri saymaz
select * from Employees WHERE region is NULL -- bölgesi olmayan kayıtları sıralar
SELECT * FROM Employees WHERE Region is NULL
--Distinct ifadesi tablonun belli kolonlarında tekrar eden verilerin bir adet olacak şekilde çekilmesine olanak sağlar.
SELECT DISTINCT Country FROM Employees

--Sum => Toplama
SELECT * FROM Products -- UnitPrice toplamını bul!!!
SELECT SUM(UnitPrice) from Products --sayısal alanlarda çalışır.

SELECT sum(DATEPART(year,BirthDate)) / COUNT(*) from Employees -- calisanların yas ortalaması
SELECT AVG(DATEPART(year,BirthDate)) from Employees --calisanların yas ortalaması
select AVG(UnitPrice) from Products where CategoryID=1 --fiyat ortalaması


--yuvarlama
--yukarı yuvarlama
SELECT CEILING(10.5) -- 11 YAPAR
--aşağı yuvarlama
SELECT FLOOR(10.9) --10 yapar (.) KABUL EDİYOR


--normal yuvarlama
--round
SELECT round(10,9) --10 yapar (,) KABUL EDİYOR

--MİN, MAX
SELECT MAX(UnitPrice) from Products
--SELECT * from Products order by UnitPrice DESC limit 1 --aynı mantığa gelir

--SIRALAMA ORDER BY
--cümlenin her zaman en sonunda olmak zorunda order by.
SELECT * FROM Employees order BY FirstName --artan sırada sıralar.
SELECT * FROM Employees order BY FirstName desc --azalan sırada sıralar.
SELECT * FROM Employees order BY FirstName desc,BirthDate -- , ile ayrılarak istenildiği kadarfield eklenebilir(sütun).
SELECT FirstName,LastName,BirthDate,Title FROM Employees order by 2,4 --seçilen kolonların sirasına göre sıralanabilir.
--alies ile sıralama
SELECT FirstName AD,LastName SOYAD,BirthDate DOGUMTARİH,Title FROM Employees order by 2,4 -- firstname ve diğerlerine allies verdik yani yeni isimler


