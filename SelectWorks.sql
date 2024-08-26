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