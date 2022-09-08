-- SET Operatorleri: UNION, UNION ALL
/* UNION, UNION ALL gibi SET operatorleri  coklu sorgular birlestirebilirler.
   UNION: Bir SET operatorudur.2 veya daha fazla sorgu ifadesinni sonuc kumelerini birlestirerek tek bir sonuc kumesi olusturur.
 NOT: birlesik olan sorgu ifadesinin veri turu diger sorgudaki ifadelerin vari turu ile uyumlu olmalidir.
   Syntax:
   SELECT sutun_adi, sutun_adi2, .. FROM tablo_adi1
   UNION
   SELECT sutun_adi1, sutun_adi2, .. FROM tablo_adi2
 NOT: UNION operatoru sadece benzersiz degerleri alir.Benzerli verileri almak icin UNION ALL kullanilir.  
*/

create table personel
(
	id int primary key,
	isim varchar(50),
	sehir varchar(50),
	maas int,
	sirket varchar(20)
);
insert into personel values(123456789, 'Ali Seker','Istanbul',2500,'Vakko');
insert into personel values(234567890, 'Ayse Gul','Istanbul',1500,'LCWaikiki');
insert into personel values(345678901, 'Veli Yilmaz','Ankara',3000,'Vakko');
insert into personel values(456789012, 'Veli Yilmaz','Ankara',1000,'Pierre Cardin');
insert into personel values(567890123, 'Veli Yilmaz','Izmir',7000,'Adidas');
insert into personel values(456789013, 'Ayse Gul','Ankara',1500,'Pierre Cardin');
insert into personel values(123456710, 'Fatma Yasa','Bursa',2500,'Vakko');

select * from personel;

-- maasi 400'den cok olan isci isimlerini + 5000 liradan fazla maas alinan sehirleri gosteren sorguyu yaziniz.
select isim as isim_sehir, maas
from personel
where maas>4000
union
select sehir,maas
from personel
where maas>5000;

-- Veli Yilmaz ismindeki kisilerin maaslarini  ve 
-- Istanbul'daki personelin maaslarini yuksekten alcaga dogru siralayarak tabloda gosteren sorguyu yaziniz.
select maas , isim as isim_sehir
from personel
where isim='Veli Yilmaz'
union all
select  maas,sehir
from personel 
where sehir='Istanbul'
order by maas desc;

-- Vakko, LCWaikiki, Pierre Cardin 'de calisan ortak isimde personelin ismini listeleyiniz.
select isim from personel where sirket='Vakko'
union
select isim from personel where sirket='LCWaikiki'
union
select isim from personel where sirket='Pierre Cardin';

-- 5000'den az maas alanlarin bilgileri ile, arti Vakko calisani olmayanlarin bilgilerini listeleyen sorgu yaziniz
select isim, maas, sirket from personel where maas<5000
union
select isim, maas, sirket from personel where sirket != 'Vakko';

-- Ismi Veli Yilmaz olanlarin sehirlerini + olarak Istanbul'da calismayanlarin isim-sehirlerini listeleyen sorguyu yaziniz
select isim,sehir from personel where isim='Veli Yilmaz'
union
select isim,sehir from personel where sehir != 'Istanbul';


-- FARKLI TABLOLARDAN BIRLESTIRME
create table personel_bilgi
(
	id int,
	tel char(10) unique,
	cocuk_sayisi int
);

insert into personel_bilgi values(123, '12345468',5);
insert into personel_bilgi values(234, '23454681',4);
insert into personel_bilgi values(345, '34546812',3);
insert into personel_bilgi values(456, '45468123',3);
insert into personel_bilgi values(567, '54681234',2);
insert into personel_bilgi values(456, '46812348',2);
insert into personel_bilgi values(123, '62345468',1);


-- id'si 123456789 olan personelin Personel tablosundan  sehir ve maasini,personel_bilgi tablosundan da tel ve cocuk sayisini yazdirin
select sehir as sehir_tel, maas as maas_cocukSayisi from personel where id =123456789
union
select tel,cocuk_sayisi from personel_bilgi where id=123;

-- Personel tablosundan Istanbul veya Ankara'da calisanlarin id'lerini ve 
-- personel_bilgi tablosundan 2 veya 3 cocugu olanlarin id'lerini sorgulayiniz.
select id from personel where sehir in('Istanbul','Ankara')
union
select id from personel_bilgi where cocuk_sayisi in(2,3);

-- personel den grupla sirketlerin calisan isimlerini say
select sirket,count(isim)calisan_sayisi
from personel
group by sirket;