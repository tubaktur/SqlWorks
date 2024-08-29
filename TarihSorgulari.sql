--Tarih sorgularında genel olarak kullanılan date_part fonksiyonu vardır.
select * FROM Orders where DATEPART(YEAR,OrderDate)=1996
select * FROM Orders where YEAR(OrderDate)=1996 AND MONTH(OrderDate)=7 AND DAY(OrderDate)=8

SELECT DATEPART(DAYOFYEAR,GETDATE()) --GETDATE SQL DE BUGÜNKÜ ZAMANI VERİR.
SELECT DATEPART(DAYOFYEAR,CURRENT_TIMESTAMP) --day of year

SELECT GETDATE() -- Sql şuanki zamanı verir.

select * FROM Employees
--select Age(CURRENT_TIMESTAMP,BirthDate)