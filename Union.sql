--iki sorguyu birleştirmeye yarıyor ama kolon sayılarının aynı olması gerekiyor.

-- Union : iki farkli sorguyu tek bir sonuc olarak birlestirmeye yarar
-- sorgudaki kolon sayilari ayni olmak zorundadir. Gelen kayitlar tekil dir. 
-- HEpsini gormek istersek union all ifadesini kullanamk gerekir.

SELECT p.ProductID , p.ProductName
from Products p 
UNION ALL
SELECT p1.ProductID , p1.ProductName 
from yedekurunler p1 --ben de yedekürünler tablosu yok ondan çalışmıyor.