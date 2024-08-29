select * from Customers

--Like Kullanımı where şartından sonra kullanılır.
select * from Employees where FirstName LIKE 'M%' --BAŞ HARFİ M OLSUN GERİSİ ÖNEMLİ DEĞİL DEMEK!

--FirstName a ile bitenler
select * from Employees where FirstName LIKE '%a'

--FirstName içerisinde 'an' olanlar
select* from Employees where FirstName LIKE '%an%' --başında veya sonunda herhangi biryerinde an olanlar

--İsmin ilk harf a olacak ikinci harf önemli değil 3 harf n olan çalışan
SELECT * FROM Employees where FirstName LIKE 'A_N%'

--Notlarda Italian kelimesi gecen calisanlar
SELECT * from Employees where Notes like '%Italian%'

--adının ilk harfi a ya da l olanlar
select * from Employees where FirstName LIKE 'a%' or FirstName like 'l%'
--select * from Employees where FirstName LIKE 'a%' or FirstName like '[al]%' sadece sql de böyle de kullanılabilir.
