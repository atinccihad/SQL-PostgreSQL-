-- JOIN islemleri
/*
Set Operatorleri(Union, Union All) farkli tablolarda birlestirmek icin kullanilir.
Join islemleri ise farkli tablolari birlestirmek icin kullanilir.
Diger bir ifade ile farkli tablolardaki secilen sutunlar ile yeni bir tablo olusturmak icin kullanilabilir.

JOIN islemleri iliskisel veritabanlari icin cok onemli bir ozelliktir.
Cunku Foreign Key'ler ile iliskili olan tablolardan istenilen sutunlari cekmek icin JOIN islemleri kullanilabilir.

1) INNER JOIN: Tablolardaki ortak sonuc kumesini gosterir.
2) LEFT JOIN: Ilk tabloda sol olup digerinde olmayan sonuclari gosterir.
3) RIGHT JOIN: Sadece ikinci tabloda olan tum sonuclari gosterir.
*/
create table sirketler
(
	sirket_id int,
	sirket_isim varchar(20)
);
insert into sirketler values(100, 'Toyota');
insert into sirketler values(101, 'Honda');
insert into sirketler values(102, 'Ford');
insert into sirketler values(103, 'Hyundai');

create table siparisler
(
	siparis_id int,
	sirket_id int,
	siparis_tarihi DATE
);
insert into siparisler values(11,101, '2020-04-17');
insert into siparisler values(22,102, '2020-04-18');
insert into siparisler values(33,103, '2020-04-19');
insert into siparisler values(44,104, '2020-04-20');
insert into siparisler values(55,105, '2020-04-21');

-- Iki tabloda sirket_id 'si ayni olanlarin sirket_ismi,siparis_id ve siparis_tarihleri listeleyen sorgu yaziniz.
select sir.sirket_isim,sip.siparis_id,sip.siparis_tarihi,sip.sirket_id
from sirketler sir
inner join siparisler sip
on sir.sirket_id=sip.sirket_id;

-- Sirketler tablosundaki tum sirketleri ve bu siparislere ait olan siparis_id ve siparis_tarih lerini listeleyen sorgu yaziniz.
select sir.sirket_isim,sip.siparis_id,sip.siparis_tarihi,sir.sirket_id
from  sirketler sir
left join siparisler sip
on sir.sirket_id=sip.sirket_id;


















