-- UPDATE SET

-- primary-foreign baglantisi son 2 soruda ise yarayacak
create table tedarikciler -- parent
(
	vergi_no int primary KEY,
	firma_ismi varchar(50),
	irtibat_ismi varchar(50)
);

insert into tedarikciler values(101, 'IBM', 'Kim Yon');
insert into tedarikciler values(102, 'Huawei', 'Cin Li');
insert into tedarikciler values(103, 'Ericson', 'Maki Tamamen');
insert into tedarikciler values(104, 'Apple', 'Adam Eve');

create table urunler --child
(
	ted_vergino int,
	urun_id int,
	urun_isim varchar(50),
	musteri_isim varchar(50),
	constraint fk_urunler foreign key(ted_vergino) references tedarikciler(vergi_no) 
	on delete cascade
);

insert into urunler values(101, 1001 ,'Laptop', 'Ayse Can');
insert into urunler values(102, 1002 ,'Phone', 'Fatma Aka');
insert into urunler values(102, 1003 ,'TV', 'Ramazan Oz');
insert into urunler values(102, 1004 ,'Laptop', 'Veli Han');
insert into urunler values(103, 1005 ,'Phone', 'Canan Ak');
insert into urunler values(104, 1006 ,'TV', 'Ali Bak');
insert into urunler values(104, 1007 ,'Phone', 'Aslan Yilmaz');

select * from tedarikciler;
select * from urunler;

select * from tedarikciler, urunler where tedarikciler.vergi_no = urunler.ted_vergino;

-- vergi_no'su 102 olan tedarikcinin firma ismini 'VESTEL' olarak guncelleyiniz.
update  tedarikciler
set firma_ismi = 'VESTEL'
where vergi_no = 102;

-- Tedarikciler tablosundaki tum firma isimlerini 'CASPER' olarak guncelleyiniz.
update  tedarikciler
set firma_ismi = 'CASPER';

-- vergi_no'su 101 olan tedarikcinin firma ismini 'Casper' ve irtibat_ismi'ni 'Ali Veli' olarak guncelleyiniz.
update tedarikciler
set firma_ismi ='Casper', irtibat_ismi='Ali Veli'
where vergi_no=101;

-- firma_ismi casper olan tedarikcinin irtibat_ismini 'Ipek Bilgin' olarak guncelleyiniz.
update tedarikciler
set irtibat_ismi='Ipek Bilgin'
where firma_ismi ='CASPER';

select * from tedarikciler;

-- urunler tablosundaki 'Phone' degerlerini 'Telefon' olarak guncelleyiniz.
update urunler
set urun_isim='Telefon'
where urun_isim='Phone';

select * from urunler;

-- urunler tablosundaki urun_id degeri 1004'ten buyuk olanlarin urun_id degerlerini bir artiriniz.
update urunler
set urun_id = urun_id +1
where urun_id > 1004;

--urunler tablosundaki tum urunlerin urun_id degerlerini ted_vergino sutun degerleri ile toplayarak guncelleyiniz
update urunler
set urun_id = urun_id + ted_vergino;

-- urunler tablosundan 'Ali Bak' in aldigi urunun ismini, 
-- tedarikci tablosunda irtibat_ismi 'Adam Eve' olan firmanin ismi(firma_ismi) ile degistiriniz.
select * from urunler;
select * from tedarikciler;
delete  from tedarikciler;

 -- tedarikcilerin insertlerini tekrar yapiyoruz
update urunler 
set urun_isim=(select firma_ismi 
			   from tedarikciler 
			   where irtibat_ismi='Adam Eve')
where musteri_isim='Ali Bak';

-- Laptop satin alan musterilerin ismini,firma_ismi Apple'in irtibat_isim i ile degistirin.
update urunler
set musteri_isim = (select irtibat_ismi from tedarikciler where firma_ismi='Apple')
where urun_isim='Laptop';
