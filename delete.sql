create table ogrenciler(
id char(3),
	isim varchar(50),
	veli_isim varchar(50),
	yazili_notu int
);

insert into ogrenciler values(123, 'Ali Can', 'Hasan', 75);
insert into ogrenciler values(124, 'Merve Gul', 'Ayse', 85);
insert into ogrenciler values(125, 'Kemal Yasa', 'Hasan', 85);
insert into ogrenciler values(126, 'Nesibe Yilmaz', 'Ayse', 95);
insert into ogrenciler values(127, 'Mustafa Bak', 'Can', 99);


-- id'si 124 olan ogrenciyi siliniz
delete from ogrenciler
where id='124';

select * from ogrenciler;

-- ismi 'Kemal Yasa' olan satiri siliniz
delete from ogrenciler
where isim='Kemal Yasa';

-- ismi 'Nesibe Yilmaz' veya 'Mustafa Bak' olan kayitlari siliniz
delete from ogrenciler
where isim='Nesibe Yilmaz' or isim='Mustafa Bak';

-- Ismi 'Ali Can' ve id'si 123 olan kaydi siliniz
delete from ogrenciler
where isim='Ali Can' and  id='123';

-- id'si 126'dan buyuk olanlari silelim.
delete from ogrenciler 
where id > '126';

select * from ogrenciler;

-- id'si 123, 125 ve 126 olanlari silelim.
delete from ogrenciler where id ='123' or id ='125' or id ='126';
-- delete from ogrenciler where id in(123,125,126);

-- tablodaki tum kayitlari silelim
delete from ogrenciler;

insert into ogrenciler values(123, 'Ali Can', 'Hasan', 75);
insert into ogrenciler values(124, 'Merve Gul', 'Ayse', 85);
insert into ogrenciler values(125, 'Kemal Yasa', 'Hasan', 85);
insert into ogrenciler values(126, 'Nesibe Yilmaz', 'Ayse', 95);
insert into ogrenciler values(127, 'Mustafa Bak', 'Can', 99);
savepoint abc;

select * from ogrenciler;

rollback to abc;























