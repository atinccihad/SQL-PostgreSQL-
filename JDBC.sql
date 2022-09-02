--Function olusturma
--1. Örnek: İki parametre ile çalışıp bu parametreleri toplayarak return yapan bir fonksiyon oluşturun.

create or replace function toplamaF(x NUMERIC, y NUMERIC)
returns NUMERIC
LANGUAGE plpgsql
AS 
$$
BEGIN

RETURN x+y;

END
$$

select * from toplamaF(15,25) AS toplam;
