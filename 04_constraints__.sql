-- CONSTRAINTS - KISITLAMALAR

create table calisanlar
(
	id char(5)primary key,
	isim varchar(50)unique,
	maas int not null,
	ise_baslama date
);


insert into calisanlar values('10002', 'Mehmet Yilmaz', 12000, '2018-04-14');
insert into calisanlar values('10008', null, 5000, '2018-04-14');
insert into calisanlar values('10004', 'Veli Han', 5000, '2018-04-14');
insert into calisanlar values('10005', 'Mustafa Ali', 5000, '2018-04-14');
insert into calisanlar values('10006', 'Canan Yas', NULL, '2018-04-12'); --maas null olamaz
insert into calisanlar values('10003', 'Can', 5000, '2018-04-14');
insert into calisanlar values('10007', 'Can', 5000, '2018-04-14');-- can unique
insert into calisanlar values('10009', 'cem', '', '2018-04-14');-- data tipi farkli
insert into calisanlar values('10010', '', 2000, '2018-04-14'); -- '' hiclik'i String olarak kabul eder

select * from calisanlar;

-- KISITLAMALAR 
-- FOREIGN KEY
create table adresler
(
	adres_id char(5),
	sokak varchar(50),
	cadde varchar(30),
	sehir varchar(15),
	constraint id_clsnlr foreign key(adres_id) references calisanlar(id)
);
insert into adresler values('10003', 'Mutlu Sok',  '40.cad','IST');
insert into adresler values('10003', 'Can Sok',  '45.cad','Ankara');
insert into adresler values('10010', 'Ağa Sok',  '30.cad','Antep');
-- FK'ye null degeri atanabilir.
insert into adresler values(NULL, 'Ağa Sok',  '30.cad','Antep');

select * from adresler;
-- baglantili tablolarda child silinmeden parent silinmez
drop table calisanlar; -- ERROR:  cannot drop table calisanlar because other objects depend on it DETAIL:  constraint id_clsnlr on table adresler depends on table calisanlar
drop table adresler;

create table talebeler
(
	id char(3) primary key,
	isim varchar(50),
	veli_isim varchar(50),
	yazili_notu int
);
insert into talebeler values(123, 'Ali Can',  'Hasan',75);
insert into talebeler values(124, 'Veli Can',  'Mahmut',65);
insert into talebeler values(125, 'Can',  'Kemal',55);
insert into talebeler values(126, 'Ali',  'Niyazi',70);
insert into talebeler values(127, 'Husnu Can',  'Ibrahim',45);
insert into talebeler values(128, 'Ali Haydar',  'Kerim',35);

-- ON DELETE CASCADE
-- Her defasinda child tablodaki verileri silmek yerine ON DELETE CASCADE silme ozelligini aktif hale getirebiliriz.
-- Bunun icin FK olan satirin en sonuna ON DELETE CASCADE komutunu yazmak yeterli

create table notlar
(
	talebe_id char(3),
	ders_adi varchar(30),
	yazili_not int,
	constraint notlar_fk foreign key(talebe_id)
	references talebeler(id) on delete cascade);
	-- on delete cascade sayesinde  
	-- parenttaki silinen bir kayit ile iliskili olan tum child kayitlarini siler
insert into notlar values(123, 'Ali Can',  75);
insert into notlar values(124, 'Veli Can',65);
insert into notlar values(125, 'Can',55);

drop table talebeler;

delete from notlar where talebe_id='123'; -- child
delete from notlar where talebe_id='124'; -- parent

select * from talebeler;
select * from notlar;
