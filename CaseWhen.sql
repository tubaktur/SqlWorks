select FirstName, LastName, Country from Employees
--burada gelen tabloda usa gördüğüm yere amerika,uk gördüğüm yere de ingiltere yazmak istiyorum bu durumda:
--case kullanımı

SELECT FirstName, LastName, 
CASE Country
    WHEN 'USA' THEN 'AMERIKA'
    WHEN 'UK' THEN 'INGILTERE'
END

FROM Employees

--Eger urun fiyatı 50den  ucuz ise ucuz urun, 50 ile 150 arasındaysa ekonomik urun, 150-200 arasındaysa pahalı urun, 
--200 ve üzeri ise lux kategorisinde yazdıralım?

SELECT ProductName,UnitPrice,
CASE 
    WHEN UnitPrice<50 THEN 'UCUZ ÜRÜN'
    WHEN UnitPrice>=50 AND UnitPrice<150 THEN 'Ekonomik Ürün'
    WHEN UnitPrice>=150 AND UnitPrice<200 THEN 'Pahalı ürün'
    else 'Lux urun'
end urunsegment

from Products

