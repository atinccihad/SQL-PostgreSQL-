-- SELECT - WHERE

create table ogrenciler(
id int,
isim varchar(45),
adres varchar(100),
sinav_notu int	
);

insert into ogrenciler values(123, 'Ali Yilmaz', 'Istanbul', 75);
insert into ogrenciler values(124, 'Veli Sahin', 'Istanbul', 85);
insert into ogrenciler values(125, 'Mehmet Ozturk', 'Ankara', 85);

select * from ogrenciler;

-- sinav notu 80'den buyuk olan ogrencilerin tum bilgilerini listele
select * from ogrenciler 
where sinav_notu > 80;

-- adresi Ankara olan ogrencilerin isim ve adres bilgilerini listele
select isim, adres from ogrenciler
where adres='Ankara';

-- id'si 124 olan ogrencinin tum bilgilerini listele
select * from ogrenciler 
where id = 124;

-- SELECT - BETWEEN
create table personel
(
id char(5),
isim varchar(50),
maas int	
);

insert into personel values('1001', 'Ahmet Aslan', 7000);
insert into personel values('1002', 'Mehmet Yilmaz', 12000);
insert into personel values('1003', 'Meryem',  1215);
insert into personel values('1004', 'Veli Han', 5000);
insert into personel values('1005', 'Mustafa Ali', 5500);
insert into personel values('1005', 'Ayse Can', 4000);

-- not: between iki mantiksal ifade ile tanimlayabilecegimiz durumlari tek komutla yazabilme imkani verir
-- yazdigimiz 2 sinir da araliga dahildir

-- AND(VE) Operatoru kullanimi --> belirlenen sartlarin tumunun gerceklesmesi ile listelenir,
-- OR(VEYA) Operatoru kullanimi --> belirlenen sartlarin en az biri gerceklesiyorsa o kayit listelenir.


-- id'si 1002 ile 1005 arasinda olan personelin bilgilerini listeleyiniz.
-- 1.yol
select * from personel
where id between '1002' and '1005';
-- 2.yol
select * from personel
where id>='1002' and id<='1005';

-- ismi Mehmet Yilmaz ile Veli Han arasinda olan personel bilgilerini listeleyiniz
select * from personel
where isim between 'Mehmet Yilmaz' and 'Veli Han';

-- id'si 1001, 1002 ve 1004 olan personelin bilgilerini listele
-- 1.yol
select * from personel
where id='1001' or id='1002'or id='1004';
-- 2.yol
select * from personel
where id in('1001','1002','1004');

-- Maasi sadece 7000 veya 12000 olan personelin bilgilerini listele
-- 1.yol
select * from personel
where maas = 7000 or maas = 12000; 
-- 2.yol
select * from personel
where maas in(7000,12000);

-- SELECT - LIKE

-- ismi A harfi ile baslayanlari listeleyiniz
select * from personel
where isim like 'A%';

-- ismi n harfi ile bitenleri listeleyiniz
select * from personel
where isim like '%n';

-- isminin 2.harfi e olanlari listeleyiniz
select * from personel
where isim like '_e%';

-- isminin 2.harfi e olup diger harflerinde y olanlari listeleyiniz
select * from personel
where isim like '_e%y%';

-- isminde a harfi olmayanlari listeleyiniz
select * from personel
where isim not like '%a%';

-- maasi 5 haneli olanlari listeleyiniz
-- 1.yol
select * from personel
where maas > 9999;
-- 2.yol
select * from personel
where maas like '_____';

-- 1.harfi A ve 7.harfi A olan personeli listeleyiniz
select * from personel
where isim like 'A_____A%';

-- SELECT - REGEXP_LIKE
/*
Daha karmasik pattern ile sorgulama islemi icin REGEXP_LIKE kullanilabilir.
-- 'c' => case-sensitive demektir
-- 'i' => incase-sensitive demektir ve default incase-sensitive aktiftir.
Syntax:
REGEXP_LIKE(sutun_adi,'pattern[]', 'c')
*/
create table kelimeler
(
	id int UNIQUE,
	kelime VARCHAR(50) not NULL,
	harf_sayisi int
);

insert into kelimeler values(1001, 'hot', 3);
insert into kelimeler values(1002, 'hat', 3);
insert into kelimeler values(1003, 'hit', 3);
insert into kelimeler values(1004, 'hbt', 3);
insert into kelimeler values(1005, 'hct', 3);
insert into kelimeler values(1006, 'adem', 4);
insert into kelimeler values(1007, 'selim', 5);
insert into kelimeler values(1008, 'yusuf', 5);
insert into kelimeler values(1009, 'hip', 3);
insert into kelimeler values(1010, 'HOT', 3);
insert into kelimeler values(1011, 'hOt', 3);
insert into kelimeler values(1012, 'h9t', 3);
insert into kelimeler values(1013, 'hoot', 4);
insert into kelimeler values(1014, 'haat', 5);
insert into kelimeler values(1015, 'haaoooooooot', 5);

drop table kelimeler;

-- icerisinde 'ot' veya 'at' bulunan kelimeleri buyuk kucuk harfe dikkat ederek listeleyiniz
select * from kelimeler
where regexp_like(kelime,'at|ot','c');

-- icerisinde 'ot' veya 'at' bulunan  kelimeleri buyuk kucuk harfe dikkat etmeksizin listeleyiniz
select * from kelimeler
where regexp_like(kelime,'at|ot');

-- Baslangici gostermek icin ^ karakteri kullanilir

-- 'ho' veya 'hi' ile baslayan kelimeleri buyuk kucuk harfe dikkat etmeksizin listeleyiniz.
select * from kelimeler
where regexp_like(kelime,'^ho|^hi');

-- sonu 't' veya 'm' ile bitenleri buyuk kucuk harfe dikkat etmeksizin listeleyiniz
-- bitisi gostermek icin $ kullanilir
select * from kelimeler 
where regexp_like(kelime,'t$|m$');

-- h ile baslayip t ile biten 3 harfli kelimeleri(h ile t kucuk harfli olan) listeleyiniz
select * from kelimeler 
where kelime like 'h_t';

select * from kelimeler 
where regexp_like(kelime,'h[a-zA-Z0-9]t','c');

-- ilk harfi h, son harfi t olup 2.harfi a veya i olan 3 harfli kelimelerin tum bilgilerini sorgulayalim
select * from kelimeler 
where kelime like 'h[ai]t';

select * from kelimeler 
where regexp_like(kelime,'h[ai]t','c');

-- icinde m veya i veya e olan kelimelerin tum bilgilerini listeleyiniz
select * from kelimeler 
where REGEXP_LIKE(kelime,'h[mie]t','c');

-- a veya s ile baslayan kelimelerin tum bilgilerini listeleyiniz
select * from kelimeler 
where regexp_like(kelime,'^[as]');

-- icerisinde en az 2 adet  oo barindiran kelimelerin tum bilgilerini listeleyiniz
select * from kelimeler
where regexp_like(kelime,'[o]{2}');
