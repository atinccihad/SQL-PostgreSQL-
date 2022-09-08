create table ogrenciler
(okul_no int primary key,
 ogrenci_ismi varchar(50),
 sinif varchar(10),
 cinsiyet char
);

insert into ogrenciler values(100, 'Mustafa Bal', 9, 'E');
insert into ogrenciler values(101, 'Derya Soylu', 9, 'E');
insert into ogrenciler values(102, 'Enes Boz', 9, 'E');
insert into ogrenciler values(103, 'Nil Naz', 9, 'E');
insert into ogrenciler values(104, 'Ali Can', 9, 'E');
insert into ogrenciler values(105, 'Yusuf Cengiz', 9, 'E');
insert into ogrenciler values(106, 'Ahmet Aslan', 9, 'E');
insert into ogrenciler values(107, 'Mehmet Aslan', 9, 'E');

select * from ogrenciler;
select * from ogrenciler where cinsiyet='E';