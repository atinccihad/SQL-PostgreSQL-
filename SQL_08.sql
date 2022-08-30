CREATE TABLE workers
(
  id CHAR(9),
  name VARCHAR(50),
  state VARCHAR(50),
  salary SMALLINT,
  company VARCHAR(20)
);
INSERT INTO workers VALUES(123456789, 'John Walker', 'Florida', 2500, 'IBM');
INSERT INTO workers VALUES(234567890, 'Brad Pitt', 'Florida', 1500, 'APPLE');
INSERT INTO workers VALUES(345678901, 'Eddie Murphy', 'Texas', 3000, 'IBM');
INSERT INTO workers VALUES(456789012, 'Eddie Murphy', 'Virginia', 1000, 'GOOGLE');
INSERT INTO workers VALUES(567890123, 'Eddie Murphy', 'Texas', 7000, 'MICROSOFT');
INSERT INTO workers VALUES(456789012, 'Brad Pitt', 'Texas', 1500, 'GOOGLE');
INSERT INTO workers VALUES(123456710, 'Mark Stone', 'Pennsylvania', 2500, 'IBM');
SELECT * FROM workers;

select * from workers;

-- toplam salary degeri 2500 olan herbir calisan icin salary toplamini bulun.

Select name, sum(salary)
AS "Total Salary" 
From workers group by name 
having sum(salary) > 250; 
-- "Group by" ardindan "where" kullanilmaz.

--Birden fazla çalışanı olan, her bir state için çalışan toplamlarını bulun.
select state, count(state) AS number_of_employes
from workers
group by state 
having count(state) > 1;-- HAVING, Group By ardindan filtreleme icin kullanilir

select * from workers;

--Her bir state için değeri 3000'den az olan maximum salary değerlerini bulun.
select state, max(salary)
from workers
group by state
having max(salary) < 3000;

--Her bir company için değeri 2000'den fazla olan minimum salary değerlerini bulun.
select company, min(salary) AS min_salary
from workers
group by company
having min(salary) > 2000;

--Tekrarsiz isimleri cagirin
select distinct name 
from workers;    -- DISTINCT clause cagirilen terimlerden tekrarli olanlarin sadece 1.sini alir

--Name değerlerini company kelime uzunluklarına göre sıralayın.
select name, company
from workers
order by length(company);

select * from workers;

--Tüm name ve state değerlerini aynı sütunda çağırarak her bir sütun değerinin uzunluğuna göre sıralayın.
-- Concat() fonksiyonu birden fazla sutun veya String degerini birlestirmek icin kullanilir
-- 1. yol
select concat(name,' ', state) AS name_and_state
from workers
ORDER BY LENGTH(name) + LENGTH(state);

-- 2. yol 
select name || ' '|| ' '||LENGTH(name) + LENGTH(state) AS "name and states"
from workers
order by 
LENGTH(name) + LENGTH(state);

select * from workers;
/*
 UNION Operator: 1) Iki sorgu(query) sonucunu birlestirmek icin kullanilir.
                 2) Tekrarsiz(unique) recordlari verir.
				 3) Tek bir sutun'a cok sutun koyabiliriz
				 4) Tek bir sutun'a cok sutun koyarken mevcut data durumuna dikkat etmek gerekir.
*/

--salary değeri 3000'den yüksek olan state değerlerini ve salary değeri 2000'den küçük olan name değerlerini tekrarsız olarak bulun.
select state AS "name and state", salary
from workers
where salary > 3000

UNION

select state, salary
from workers
where salary < 2000;

--salary değeri 3000'den yüksek olan state değerlerini ve salary değeri 2000'den küçük olan name değerlerini tekrarsız olarak bulun.
SELECT state AS "Name and State", salary
FROM workers
WHERE salary > 3000

UNION ALL --> UNION ile ayni isi yapar.Ancak tekrarli degerleri de verir

SELECT name, salary
FROM workers
WHERE salary < 2000;

--salary değeri 1000'den yüksek, 2000'den az olan "ortak" name değerlerini bulun.
select name 
from workers
where salary > 1000

INTERSECT --INTERSECT Operator: İki sorgu (query) sonucunun ortak(common) değerlerini verir. Unique(tekrarsız) recordları verir.

select name 
from workers
where salary < 2000;

--salary değeri 2000'den az olan ve company değeri  IBM, APPLE yada MICROSOFT olan ortak "name" değerlerini bulun.
select name 
from workers
where salary < 2000

INTERSECT

select name 
FROM workers 
where company IN('IBM', 'APPLE' , 'MICROSOFT'); 

--EXCEPT Operator : Bir sorgu sonucundan başka bir sorgu sonucunu çıkarmak için kullanılır. Unique(tekrarsız) recordları verir.

--salary değeri 3000'den az ve GOOGLE'da çalışmayan  name değerlerini bulun.
SELECT name 
from workers
where salary < 3000

EXCEPT

SELECT name 
from workers
where company='GOOGLE';

/*
 JOINS: 1) INNER JOIN: Ortak(Common) datayi verir
        2) LEFT JOIN:  Birinci table'in tum datasiniverir
		3) RIGHT JOIN: Ikinci table'in tum datasiniverir
		4) FULL JOIN:  Iki table'in da  tum datasiniverir
		5) SELF JOIN:  Tek table uzerinde iki table varmis gibi calisilir
*/		

CREATE TABLE my_companies
(
  company_id CHAR(3),
  company_name VARCHAR(20)
);
INSERT INTO my_companies VALUES(100, 'IBM');
INSERT INTO my_companies VALUES(101, 'GOOGLE');
INSERT INTO my_companies VALUES(102, 'MICROSOFT');
INSERT INTO my_companies VALUES(103, 'APPLE');
SELECT * FROM my_companies;
CREATE TABLE orders
(
  company_id CHAR(3),
  order_id CHAR(3),
  order_date DATE
);
INSERT INTO orders VALUES(101, 11, '17-Apr-2020');
INSERT INTO orders VALUES(102, 22, '18-Apr-2020');
INSERT INTO orders VALUES(103, 33, '19-Apr-2020');
INSERT INTO orders VALUES(104, 44, '20-Apr-2020');
INSERT INTO orders VALUES(105, 55, '21-Apr-2020');
SELECT * FROM orders;

--1) INNER JOIN
--Ortak companyler için company_name, order_id ve order_date değerlerini çağırın.
select mc.company_name, o.order_id, o.order_date
from my_companies mc INNER JOIN orders o
ON mc.company_id = o.company_id;

-- 2) LEFT JOIN
--my_companies table'ındaki companyler için order_id ve order_date değerlerini çağırın.
select mc.company_name, o.order_id, o.order_date
from my_companies mc LEFT JOIN orders o
ON mc.company_id = o.company_id;

--3) RIGHT JOIN
--Orders table'ındaki company'ler için company_name, company_id ve order_date değerlerini çağırın.
--1. Yol
select mc.company_name, o.company_id, o.order_date
from my_companies mc RIGHT JOIN orders o
ON mc.company_id = o.company_id;

--FULL JOIN
--İki table'dan da company_name, order_id ve order_date değerlerini çağırın.
select mc.company_name, o.order_id, o.order_date
from orders o FULL JOIN my_companies mc
ON mc.company_id = o.company_id;

--SELF JOIN
CREATE TABLE workers
(
  id CHAR(2),
  name VARCHAR(20),
  title VARCHAR(60),
  manager_id CHAR(2)
);

INSERT INTO workers VALUES(1, 'Ali Can', 'SDET', 2);
INSERT INTO workers VALUES(2, 'John Walker', 'QA', 3);
INSERT INTO workers VALUES(3, 'Angie Star', 'QA Lead', 4);
INSERT INTO workers VALUES(4, 'Amy Sky', 'CEO', 5);

SELECT * FROM workers;

--workers tablosunu kullanarak çalışanların yöneticilerini gösteren bir tablo hazırlayın.
select employee.name as Employee, manager.name as Manager
from workers employee JOIN workers manager
ON employee.manager_id=manager.id;































































