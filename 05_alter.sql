/* ALTER TABLE
   ALTER TABLE tabloda ADD, MODIFY, veya DROP/DELETE COLUMNS islemleri icin kullanilir.
   
   ALTER TABLE tablolari yeniden isimlendirmek(RENAME) icin de kullanilir.
*/

create table personel
(
id int PRIMARY KEY,
isim varchar(50),
sehir varchar(50),
maas int,
sirket varchar(20)	
);

insert into personel values(123456789, 'Ali Yilmaz', 'Istanbul', 5500,'Honda');
insert into personel values(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');
insert into personel values(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');
insert into personel values(456789012, 'Mehmet Ozturk', 'Izmir', 6000,'Ford');
insert into personel values(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');
insert into personel values(678901234, 'Veli Sahin', 'Ankara', 4500, 'Ford');

select * from personel;

-- personel tablosuna ulke_isim adinda ve default degeri 'Turkiye' olan yeni bir sutun ekleyiniz.
alter table personel
add ulke_isim varchar(20) default 'Turkiye';

-- personel tablosuna cinsiyet varchar(20) ve yas int seklinde yeni sutunlar ekleyiniz.
alter table personel add cinsiyet varchar(20);
alter table personel add yas int;

-- personel tablosundan sirket sutununu siliniz
alter table personel drop column sirket;

-- personel tablosundaki ulke_isim sutununun adini ulke_adi olarak degistiriniz
alter table personel rename column ulke_isim to ulke_adi;

-- personel tablosunun adini isciler olarak degistiriniz
alter table personel rename  to isciler;
select * from isciler;

-- isciler tablosundaki ulke_adi sutununa NOT NULL kisitlamasi ekleyiniz ve veri tipini VARCHAR(30) olarak degistiriniz
alter table isciler MODIFY ulke_adi varchar(30) not null;