-- Tek satırlık yorum satırı
/* 
çok satırlı yorum
 */ 

 /*
Select veritabanındaki tabloları yada wiev'leri sorgulamaya yarar.
Genel kullanımı SELECT * FROM Products (burada fromdan sonra tablo adı gelir.)

 */

 SELECT * FROM Products
 SELECT * FROM Shippers
 SELECT * FROM Categories
 SELECT * FROM Employees

 -- limit komutuyla sadece 5 tanesini getir diyebiliriz
 SELECT TOP 5 * FROM Orders;
 SELECT TOP 5 * FROM [Order Details];

 SELECT * FROM Products WHERE ProductID=42; --42 numaralı siparişte ne var göst.

 /*
Select ifadesinde * kullanılırsa butun field alanları gelir.
Bu genelde tercih edilmez. Cunku fazladan network trafiğine neden olur.
Bundan kaçmanın yolu ihtiyaç duyulan fieldların tek tek aralarında virgül olmak kaydıyla belirlenmesidir.
 */

 SELECT EmployeeID,FirstName,LastName FROM Employees; --Bu şekilde sorgu tercih edilir.
 SELECT * FROM Employees; --Bu pek tercih edilmez.


 --Data filtreleme: Filtreleme yapmak için where şartı kullanılır.

 --Amerikadaki musterilerin listesi
 SELECT * FROM Customers WHERE Country= 'USA'

 --Amerikadaki musterilerin seattle olanlarının listesi
 SELECT * FROM Customers WHERE Country='USA' AND City='Seattle'

 -- Where sartında null kayitların aranması
 SELECT * FROM Customers WHERE Region is null

 -- Tarih ile ilgili alanların sorgulanması

 --YIL
 SELECT * FROM Orders where YEAR(OrderDate)=1996

 --AY
 SELECT * FROM Orders where MONTH(OrderDate)=7

 --GUN
 SELECT * FROM Orders where DAY(OrderDate)=5

 --Date_part
 SELECT * FROM Orders WHERE DATEPART(MONTH,OrderDate)=7

 --SAYISAL ALANLARDA SORGULAMA
 SELECT * FROM Orders WHERE ShipVia = 3

 --Amerika dışındaki tedarikçilerin listesi
 SELECT * from Suppliers WHERE Country !='USA'

 /*
 İŞLENECEK KONULAR;
 1- LİKE KOMUTU,COUNT,SUM,AVG FONKSİYONLARI,SUB QUERY
 2- GRUPLAMA VE HAVİNG
 3- JOİN (İNNER,LEFT,RİGHT,FULL)
 4- PROCEDURE,WİEV,TRİGGER KONULARI ELE ALINACAK
 5- CRUD İŞLEMLERİ CREATE,UPDATE,DELETE
 6- kENDİ DATABASE MİZİ OLUŞTURMA
 7- NORMALİZATİON

 */








































