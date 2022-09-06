-- sorgu icinde calisan sorguya SUBQUERY denir

create table calisanlar
(
	id int,
	isim varchar(50),
	sehir varchar(50),
	maas int,
	isyeri VARCHAR(20)
);
insert into calisanlar values(123456789, 'Ali Seker', 'Istanbul', 2500,'Vakko');
insert into calisanlar values(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
insert into calisanlar values(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
insert into calisanlar values(456789012, 'Veli Yilmaz', 'Izmir', 1000,'Pierre Cardin');
insert into calisanlar values(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
insert into calisanlar values(678901234, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
insert into calisanlar values(789012345, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');

create table markalar
(
	marka_id int,
	marka_isim varchar(20),
	calisan_sayisi int
);
insert into markalar values(100, 'Vakko', 12000);
insert into markalar values(101, 'Pierre Cardin', 18000);
insert into markalar values(102, 'Adidas', 1000);
insert into markalar values(103, 'LCWaikiki', 21000);

select * from calisanlar;
select * from markalar;

-- calisan sayisi 15000'den cok olan markalarin isimlerini ve 
-- markada calisanlarin isimlerini ve maaslarini listeleyin.
select isim, maas, isyeri 
from calisanlar 
where isyeri in(select marka_isim from markalar 
				where calisan_sayisi > 15000);

-- marka_id 'si 101'den buyuk olan marka calisanlarinin isim, maas ve sehirlerini listeleyiniz
-- in yerine = olmaz cunku = 1veri icin yazilabilir
select isim , maas, sehir
from calisanlar 
where isyeri in(select marka_isim from markalar where marka_id>101);

-- Ankara'da calisani olan markalarin marka id'lerini ve calisan sayilarini listeleyiniz.
select marka_id, calisan_sayisi
from markalar
where marka_isim in(select isyeri from calisanlar where sehir='Ankara');

-- AGGREGATE method kullanimi 
-- AGGREGATE methodlari(SUM, COUNT, MIN, MAX, AVG) subquery icinde kullanilabilir ancak sorgu tek bir deger donuyor olmalidir.

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin toplam maasini listeleyen bir sorgu yaziniz.
select marka_isim, calisan_sayisi, 
(select sum(maas) from calisanlar 
		   where marka_isim=isyeri)as toplam_maas
from markalar;

-- Her markanin ismin, calisan sayisini ve o markaya ait calisanlarin ortalama maasini listeleyen sorgu yaziniz.
select marka_isim, calisan_sayisi, (select round(AVG(maas)) from calisanlar
								   where marka_isim=isyeri)ort_maas
from markalar;

-- Her markanin ismin, calisan sayisini ve o markaya ait calisanlarin maksimum ve minimum maasini listeleyen sorgu yaziniz.
select marka_isim, calisan_sayisi, (select max(maas) from calisanlar
									where marka_isim = isyeri)max_maas,
									(select min(maas) from calisanlar
									where marka_isim = isyeri)min_maas
from markalar;

-- Her markanin id'sini, ismini ve toplam kac sehirde bulundugunu listeleyen sorgu yaziniz.
select marka_id, marka_isim, (select count(sehir)from calisanlar 
							  where marka_isim = isyeri)sehir_sayisi
from markalar;							  
