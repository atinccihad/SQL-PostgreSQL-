_______________________________________
Veritabanı genellikle elektronik olarak bir bilgisayar sisteminde depolanan yapılandırılmış(Structured) bilgi veya veriden oluşan düzenli bir koleksiyondur. 
Veritabanı genellikle bir Veritabanı Yönetim Sistemi DBMS (DataBaseManagementSystem ) ile kontrol edilir. 
Çoğu veritabanında veri yazma ve sorgulama için yapılandırılmış sorgu dili SQL(Structured Query Language)kullanılır.
==========================================================================================
DATABASE’IN FAYDALARI NELERDIR? 
1)Yuksek miktarda bilgi depolanabilir 
2)Olusturma, Okuma,Degistirme ve Silme kolayligi 
    Create , Read , Update     , Delete(CRUD)
3)Girisin kolay ve kontrollu olmasi 
4)Dataya ulasim kolayligi 
5)Guvenlik
API Application Programming Interface, bir uygulamaya ait yeteneklerin, başka bir uygulamada da kullanılabilmesi için, 
yeteneklerini paylaşan uygulamanın sağladığı arayüzdür.

END To END (E2E)Testing 
1) Eger datayi User Interface (UI) kullanarak yolladiysaniz 
  A)Datayi UI dan arama fonksiyonunu kullanarak dogrula(Selenium) 
  B)Datayi SQL kodlarini kullanarak dogrula (SQL +Selenium) 
  C)Datayi API kodlarini kullanarak dogrula (API +Selenium)
2) Eger datayi SQL kodlarini kullanarak yolladiysaniz 
  A)Datayi UI dan arama fonksiyonunu kullanarak dogrula(Selenium) 
  B)Datayi SQL kodlarini kullanarak dogrula (SQL +Selenium) 
  C)Datayi API kodlarini kullanarak dogrula (API +Selenium) 
3) Eger datayi API kodlarini kullanarak yolladiysaniz 
  A)Datayi UI dan arama fonksiyonunu kullanarak dogrula(Selenium) 
  B)Datayi SQL kodlarini kullanarak dogrula (SQL +Selenium) 
  C)Datayi API kodlarini kullanarak dogrula (API +Selenium)
====================================================================================
RELATIONAL DATABASES (ILISKILI TABLOLAR) 
-SQL tablolar, datalari iliskili tablolarda depolar. 
-Tablolar arasi iliskiler net olmalidir. 
-Tablolar arasi gecis kolay olmalidir 
-Tablolarin ve iliskilerin butunune SCHEMA denir 
-Relational Databases, SQL Databases (Structured Query Language)olarak da adlandirilir.

============================================================================================
Non Relational Databases(non-SQL Database) 
SQL veritabanı verilerle ilgilenirken Yapısal Sorgu Dili kullanır. 
Veri yapısını belirlemek için önceden tanımlanmış şemalar gerektirir. 
NoSQL veritabanı verilerle çalışırken Yapılandırılmamış Sorgu Dili kullanır.
  
  ************************************************* SQLKomutlari *****************************************************************
  SQL komutları 4 ana gruba ayrılır:=> 
  1.Veri Sorgulama Dili (Data Query Language -DQL) => 
   DQL içindeki SELECT komutu ile veritabanında yer alan mevcut kayıtların bir kısmını veya tamamını tanımlanan koşullara bağlı olarak alır. 
   SELECT : Veritabanındaki verileri alır. 
  2.Veri Kullanma Dili (Data Manipulation Language -DML) => 
   DML komutları ile veritabanlarında bulunan verilere işlem yapılır. 
   DML ile veritabanına yeni kayıt ekleme, mevcut kayıtları güncelleme ve silme işlemleri yapılır. 
   INSERT : Veritabanına yeni veri ekler. 
   UPDATE : Veritabanındaki verileri günceller. 
   DELETE : Veritabanındaki verileri siler. 
  3.Veri Tanimlama Dili (Data Definition Language -DDL) => 
   DDL komutları ile veritabanı ve tabloları oluşturma, değiştirme ve silme işlemleri yapılır: 
    CREATE : Bir veritabanı veya veritabanı içinde tablo oluşturur. 
    ALTER : Bir veritabanı veya veritabanı içindeki tabloyu günceller. 
    DROP : Bir veritabanını veya veritabanı içindeki tabloyu siler. 
  4.Veri Kontrol Dili (Data Control Language -DCL) =>  
   DCL komutları ile kullanıcılara veritabanı ve tablolar için yetki verilir veya geri alınır: 
    GRANT : Bir kullanıcıya yetki vermek için kullanılır. 
    REVOKE : Bir kullanıcıya verilen yetkiyi geri almak için kullanılır.
PrimaryKey Primary Key (birincil anahtar), 
 bir veri tablosunda yer alan her satır için bir vekil / tanımlayıcı (identify) görevi görür, kısıtlamadır (constraint) ve eşsizdir(Unique). 
 Satırlara ait değerlerin karışmaması adına bu alana ait bilginin tekrarlanmaması gerekir. 
 Çoğunlukla tek bir alan (id, user_id, e_mail, username, national_identification_number vb.) 
 olarak kullanılsa da birden fazla alanın birleşimiyle deoluşturulabilir 
 Primary Key değeri boş geçilemez ve NULL değer alamaz. 
 Relational veritabanlarında(relational database management system) mutlaka birincil anahtar olmalıdır. 
  =>  Not : Bir Tabloda 1 tane primary Key olabilir. 
  =>  Not : Primary Key benzersiz (Unique) olmalidir ama her unique data Primary Key degildir 
  =>  Not : Primary key her turlu datayi icerebilir. Sayi, String.. 
  =>  Not : Her tabloda Primary Key olmasi zorunlu degildir Primary Key, dış dünyadaki gerçek verileri temsil ediyorsa, 
  =>  orneğin; TC kimlik numarası, bir kitabın ISBN numarası, bir ürünün ismi, email hesabi gibi buna 
  Natural key denir 
  Genel olarak kayıt eklenmeden önce üretilen sira numarasi gibi sayisal degerlere 
  Surrogate Key denir
 =>  Foreign Key Foreign Key iki tablo arasinda relation olusturmak icin kullanilir 
 => Foreign Key baska bir tablodaki Primary Key ile iliskilendirilmis olmalidir 
 => Bir Tabloda birden fazla Foreign Key olabilir 
 => Foreign Key NULL degeri Kabul eder 
 => Foreign Key olarak tanimlanan field’da tekrarlar olabilir 
 => ForeignKey PrimaryKey Foreign Key, değerleri farklı bir tablodaki Primary Key ile eşleşen bir sütun veya sütunların birleşimidir.
 => SQL Composite Key Composite Key birden fazla field(kolon)’in kombinasyonu ile olusturulur. 
 => Tek basina bir kolon Primary Key olma ozelliklerini tasimiyorsa, bu ozellikleri elde etmek icin birden fazla kolon birlestirilerek Primary olusturulur
 
==========================================================================================
UNIQUE KEY & PRIMARYKEY “UNIQUE KEY” ve “PRIMARY KEY” arasindaki farklar 
PrimaryKey Bir Tabloda 1 tane olur NULL deger Kabul etmez 
UniqueKey Bir tabloda birden fazla olabilir NULL degeri Kabul eder “UNIQUE KEY” ve “PRIMARY KEY” ortak ozellikleri Dublication(Cift Kullanim)’a izin vermez
SQL DataTypes NumericDataTypes 
•TINYINT(boyut): Alabileceği değerler–128 ile 127 arasındadır. 
 Unsigned (Sadece pozitif değerler girilecek) olarak tanımlı ise 0 ile 255 arasındadır. 
 “Boyut” ile alabileceği sınırı belirtebiliriz.
 Hafızada kapladığı alan ise 1byte 
•SMALLINT(boyut) : -32.768 ile 32.767 arasında değer alır. 
 Unsigned tanımlı aralık 0 ile 65535 arasındadeğer alır. 
 “Boyut” ile alabileceği sınırı belirtebiliriz. 
 Hafızada kapladığı alan: 2byte 
•MEDIUMINT(boyut) : -8.388.608 ile 8.388.607 arasında değer alır. 
 Unsigned tanımlı aralık 0 ile 16777215arasındadır. 
 “Boyut” ile alabileceği sınırı belirtebiliriz. 
 Hafızada kapladığı alan: 3byte. 
•INT :Alabileceğideğerler–2147483648ile2147483647 arasındadır. 
 Unsigned tanımlı aralık 0 ile 4294967295 arasındadır. 
 “Boyut”ile alabileceği sınırı belirtebiliriz. 
 Hafızada kapladığı alan: 4byte. 
•BIGINT(boyut) : -9.223.372.036.854.775.808 ile 9.223.372.036.854.775.807 arasında değer alır. 
 “Boyut” ile alabileceği sınırı belirtebiliriz. 
 Hafızada kapladığı alan: 8byte.
 
==========================================================================================
SQLKomutlari 
1.Veri Sorgulama Dili (Data Query Language -DQL) 
mevcut kayıtların bir kısmını veya tamamınını tanımlanan koşullara bağlı olarak alır. 
 SELECT : Veritabanındaki verileri alır. 
2.Veri Degistirme Dili (Data ManipulationLanguage -DML) 
 veritabanına yeni kayıt ekleme,mevcut kayıtları güncelleme ve silme işlemleri yapılır. 
  INSERT : Veritabanına yeni veri ekler. 
  UPDATE : Veritabanındaki verileri günceller. 
  DELETE : Veritabanındaki verileri siler.
3.Veri TanimlamaDili (Data Definition Language -DDL)
 veritabanı ve tabloları oluşturma,değiştirme ve silme işlemleri yapılır 
  CREATE : Bir veritabanı veya tablo oluşturur. 
  ALTER : Bir veritabanı veya tabloyu günceller. 
  DROP : Bir veritabanını veya tabloyu siler. 
4.Veri Kontrol Dili (Data Control Language -DCL) 
 veritabanı ve tablolar için yetki verilir veya geri alınır 
  GRANT : Bir kullanıcıya yetki vermek için kullanılır. 
  REVOKE : Bir kullanıcıya verilen yetkiyi geri almak için kullanılır.


