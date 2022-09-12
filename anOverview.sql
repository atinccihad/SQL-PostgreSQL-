
create table calisanlar
(
	id char(4) ,
	isim varchar(50),
	maas int,
	constraint id_pk  primary key(id)
);
insert into calisanlar values('1001', 'Ahmet Aslan', 7000);
insert into calisanlar values('1002', 'Mehmet Yilmaz', 12000);
insert into calisanlar values('1003', 'Meryem', 7215);
insert into calisanlar values('1004', 'Veli Han', 5000);
select * from calisanlar;


create table aileler
(
	id char(4) ,
	cocuk_sayisi varchar(50),
	ek_gelir int,
	constraint id_fk foreign key(id) references calisanlar(id)
);

insert into aileler values('1001', 4 , 2000);
insert into aileler values('1002', 2 , 1500);
insert into aileler values('1003', 1 , 2200);
insert into aileler values('1004', 3 , 2400);

-- Veli Han'in maas'ina %20 zam yapiniz.
update calisanlar
set maas = maas * 1.2
where isim = 'veli han';

select * from calisanlar;

-- maasi ortalamanin altinda olanlara %20 zam yapiniz.
update calisanlar
set maas = maas * 1.2
where maas < (select avg(maas) from (select maas from calisanlar)as liste);  

select * from calisanlar;

-- calisanlarin isim ve cocuk_siyisi'ni listeleyen sorguyu yaziniz.
-- 1.yol
select isim, (select cocuk_sayisi from aileler where calisanlar.id = aileler.id)cocuk_sayisi 
from calisanlar ;
-- 2.yol
select isim, cocuk_sayisi from calisanlar, aileler
where calisanlar.id = aileler.id;

-- calisanlar'in isim ve toplam_gelir 'lerini gosteren bir sorgu yaziniz.
   -- toplam_gelir = calisanlar.maas + aileler.ek_gelir
-- 1.yol
select isim, (select maas+ek_gelir from aileler
			 where calisanlar.id = aileler.id) 
from calisanlar;
-- 2.yol
select isim, (maas+ek_gelir) 
from calisanlar, aileler
where calisanlar.id = aileler.id;

-- eger bir ailenin kisi basi geliri 2000 TL'den az ise calisanin maasina ek %10 aile yardim zammi yapiniz.
  -- kisi_basi_gelir = toplam_gelir / cocuk_sayisi + 2(anne ve baba)
update calisanlar
set maas = maas * 1.1
where (select (maas+ek_gelir) / (cocuk_sayisi+2) from aileler where calisanlar.id = aileler.id) < 2000; 
