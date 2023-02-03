<h3><img src="https://dataera.com.tr/wp-content/uploads/2018/07/postgresql-logo-1-820x450.jpg"/></h3>
_______________________________________
<h3>VERITABANI NEDİR ?</h3>
<p>Veritabanı genellikle elektronik olarak bir bilgisayar sisteminde depolanan yapılandırılmış(Structured) bilgi veya veriden oluşan düzenli bir koleksiyondur.</p> 
<p>Veritabanı genellikle bir Veritabanı Yönetim Sistemi DBMS (DataBaseManagementSystem ) ile kontrol edilir.</p> 
<p>Çoğu veritabanında veri yazma ve sorgulama için yapılandırılmış sorgu dili SQL(Structured Query Language)kullanılır.</p>

<h3>DATABASE’IN FAYDALARI NELERDIR ?</h3> 
1) Yuksek miktarda bilgi depolanabilir<br> 
2) Olusturma, Okuma,Degistirme ve Silme kolayligi<br> 
    Create , Read , Update     , Delete(CRUD)<br>
3) Girisin kolay ve kontrollu olmasi <br>
4) Dataya ulasim kolayligi <br>
5) Guvenlik<br>
<h3>API(Application Programming Interface)</h3> 
Bir uygulamaya ait yeteneklerin, başka bir uygulamada da kullanılabilmesi için, yeteneklerini paylaşan uygulamanın sağladığı arayüzdür.<br>
<h3>END To END(E2E) Testing</h3> 
1) Eger datayi User Interface (UI) kullanarak yolladiysaniz<br> 
  A) Datayi UI dan arama fonksiyonunu kullanarak dogrula(Selenium)<br>
  B) Datayi SQL kodlarini kullanarak dogrula (SQL +Selenium)<br>
  C) Datayi API kodlarini kullanarak dogrula (API +Selenium)<br>
2) Eger datayi SQL kodlarini kullanarak yolladiysaniz<br> 
  A) Datayi UI dan arama fonksiyonunu kullanarak dogrula(Selenium)<br> 
  B) Datayi SQL kodlarini kullanarak dogrula (SQL +Selenium)<br> 
  C) Datayi API kodlarini kullanarak dogrula (API +Selenium)<br> 
3) Eger datayi API kodlarini kullanarak yolladiysaniz<br>
  A) Datayi UI dan arama fonksiyonunu kullanarak dogrula(Selenium)<br> 
  B) Datayi SQL kodlarini kullanarak dogrula (SQL +Selenium)<br> 
  C) Datayi API kodlarini kullanarak dogrula (API +Selenium)<br>
<h3>RELATIONAL DATABASES (ILISKILI TABLOLAR)</h3> 
- SQL tablolar, datalari iliskili tablolarda depolar.<br> 
- Tablolar arasi iliskiler net olmalidir.<br> 
- Tablolar arasi gecis kolay olmalidir<br> 
- Tablolarin ve iliskilerin butunune SCHEMA denir<br> 
- Relational Databases, SQL Databases (Structured Query Language)olarak da adlandirilir.<br>
<h4>Non Relational Databases(non-SQL Database)</h4>
SQL veritabanı verilerle ilgilenirken Yapısal Sorgu Dili kullanır.<br> 
Veri yapısını belirlemek için önceden tanımlanmış şemalar gerektirir.<br> 
NoSQL veritabanı verilerle çalışırken Yapılandırılmamış Sorgu Dili kullanır.<br>
  
<h2>SQL Comments</h2>
   SQL komutları 4 ana gruba ayrılır:=><br> 
  <h5>1.Veri Sorgulama Dili (Data Query Language -DQL)</h5>
   DQL içindeki SELECT komutu ile veritabanında yer alan mevcut kayıtların bir kısmını veya tamamını tanımlanan koşullara bağlı olarak alır. <br>
   SELECT : Veritabanındaki verileri alır.<br> 
  <h5>2.Veri Kullanma Dili (Data Manipulation Language -DML)</h5> 
   DML komutları ile veritabanlarında bulunan verilere işlem yapılır.<br> 
   DML ile veritabanına yeni kayıt ekleme, mevcut kayıtları güncelleme ve silme işlemleri yapılır.<br> 
   INSERT : Veritabanına yeni veri ekler.<br> 
   UPDATE : Veritabanındaki verileri günceller.<br> 
   DELETE : Veritabanındaki verileri siler.<br> 
  <h5>3.Veri Tanimlama Dili (Data Definition Language -DDL)</h5> 
   DDL komutları ile veritabanı ve tabloları oluşturma, değiştirme ve silme işlemleri yapılır:<br>  
    CREATE : Bir veritabanı veya veritabanı içinde tablo oluşturur.<br>  
    ALTER : Bir veritabanı veya veritabanı içindeki tabloyu günceller.<br>  
    DROP : Bir veritabanını veya veritabanı içindeki tabloyu siler.<br>  
  <h5>4.Veri Kontrol Dili (Data Control Language -DCL)</h5>  
   DCL komutları ile kullanıcılara veritabanı ve tablolar için yetki verilir veya geri alınır:<br>  
    GRANT : Bir kullanıcıya yetki vermek için kullanılır.<br>  
    REVOKE : Bir kullanıcıya verilen yetkiyi geri almak için kullanılır.<br> 
<h5>PrimaryKey Primary Key (birincil anahtar)</h5> 
 Bir veri tablosunda yer alan her satır için bir vekil / tanımlayıcı (identify) görevi görür, kısıtlamadır (constraint) ve eşsizdir(Unique).<br>  
 Satırlara ait değerlerin karışmaması adına bu alana ait bilginin tekrarlanmaması gerekir.<br>  
 Çoğunlukla tek bir alan (id, user_id, e_mail, username, national_identification_number vb.)<br>  
 olarak kullanılsa da birden fazla alanın birleşimiyle de oluşturulabilir.<br>  
 Primary Key değeri boş geçilemez ve NULL değer alamaz.<br>  
 Relational veritabanlarında(relational database management system) mutlaka birincil anahtar olmalıdır.<br>  
  =>  Not : Bir Tabloda 1 tane primary Key olabilir.<br>  
  =>  Not : Primary Key benzersiz (Unique) olmalidir ama her unique data Primary Key degildir<br>  
  =>  Not : Primary key her turlu datayi icerebilir. Sayi, String..<br>  
  =>  Not : Her tabloda Primary Key olmasi zorunlu degildir Primary Key, dış dünyadaki gerçek verileri temsil ediyorsa,<br>  
  =>  Orneğin; TC kimlik numarası, bir kitabın ISBN numarası, bir ürünün ismi, email hesabi gibi buna, "Natural key" denir.<br>  
  Genel olarak kayıt eklenmeden önce üretilen sira numarasi gibi sayisal degerlere  "Surrogate Key" denir.<br> 
 => Foreign Key Foreign Key iki tablo arasinda relation olusturmak icin kullanilir<br>  
 => Foreign Key baska bir tablodaki Primary Key ile iliskilendirilmis olmalidir<br>  
 => Bir Tabloda birden fazla Foreign Key olabilir<br>  
 => Foreign Key NULL degeri Kabul eder<br>  
 => Foreign Key olarak tanimlanan field’da tekrarlar olabilir<br>  
 => ForeignKey PrimaryKey Foreign Key, değerleri farklı bir tablodaki Primary Key ile eşleşen bir sütun veya sütunların birleşimidir.<br> 
 => SQL Composite Key Composite Key birden fazla field(kolon)’in kombinasyonu ile olusturulur.<br>  
 => Tek basina bir kolon Primary Key olma ozelliklerini tasimiyorsa, bu ozellikleri elde etmek icin birden fazla kolon birlestirilerek Primary olusturulur<br> 
<h4>UNIQUE KEY & PRIMARYKEY “UNIQUE KEY” ve “PRIMARY KEY” arasindaki farklar</h4> 
PrimaryKey Bir Tabloda 1 tane olur NULL deger Kabul etmez<br>  
UniqueKey Bir tabloda birden fazla olabilir NULL degeri Kabul eder “UNIQUE KEY” ve “PRIMARY KEY” ortak ozellikleri Dublication(Cift Kullanim)’a izin vermez<br> 
SQL DataTypes NumericDataTypes<br>  
• TINYINT(boyut): Alabileceği değerler–128 ile 127 arasındadır.<br>  
 Unsigned (Sadece pozitif değerler girilecek) olarak tanımlı ise 0 ile 255 arasındadır.<br>  
 “Boyut” ile alabileceği sınırı belirtebiliriz.<br> 
 Hafızada kapladığı alan ise 1byte<br>  
• SMALLINT(boyut) : -32.768 ile 32.767 arasında değer alır.<br>  
 Unsigned tanımlı aralık 0 ile 65535 arasındadeğer alır.<br>  
 “Boyut” ile alabileceği sınırı belirtebiliriz.<br>  
 Hafızada kapladığı alan: 2byte<br>  
• MEDIUMINT(boyut) : -8.388.608 ile 8.388.607 arasında değer alır.<br>  
 Unsigned tanımlı aralık 0 ile 16777215arasındadır.<br>  
 “Boyut” ile alabileceği sınırı belirtebiliriz.<br>  
 Hafızada kapladığı alan: 3byte.<br>  
• INT :Alabileceğideğerler–2147483648ile2147483647 arasındadır.<br>  
 Unsigned tanımlı aralık 0 ile 4294967295 arasındadır.<br>  
 “Boyut”ile alabileceği sınırı belirtebiliriz.<br>  
 Hafızada kapladığı alan: 4byte.<br>  
• BIGINT(boyut) : -9.223.372.036.854.775.808 ile 9.223.372.036.854.775.807 arasında değer alır.<br>  
 “Boyut” ile alabileceği sınırı belirtebiliriz.<br>  
 Hafızada kapladığı alan: 8byte.<br> 
<h3>SQLKomutlari</h3> 
<h5>1.Veri Sorgulama Dili (Data Query Language -DQL)</h5> 
Mevcut kayıtların bir kısmını veya tamamınını tanımlanan koşullara bağlı olarak alır.<br>  
 SELECT : Veritabanındaki verileri alır.<br>  
<h5>2.Veri Degistirme Dili (Data ManipulationLanguage -DML)</h5> 
 Veritabanına yeni kayıt ekleme(INSERT),mevcut kayıtları güncelleme(UPDATE) ve silme(DELETE) işlemleri yapılır.<br>  
  INSERT : Veritabanına yeni veri ekler.<br>  
  UPDATE : Veritabanındaki verileri günceller.<br>  
  DELETE : Veritabanındaki verileri siler.<br> 
<h5>3.Veri TanimlamaDili (Data Definition Language -DDL)</h5>
 Veritabanı ve tabloları oluşturma(CREATE),değiştirme(ALTER) ve silme(DROP) işlemleri yapılır<br>  
  CREATE : Bir veritabanı veya tablo oluşturur.<br>  
  ALTER : Bir veritabanı veya tabloyu günceller.<br>  
  DROP : Bir veritabanını veya tabloyu siler.<br>  
<h5>4.Veri Kontrol Dili (Data Control Language -DCL)</h5>
 Veritabanı ve tablolar için yetki verilir(GRANT) veya geri alınır(REVOKE)<br>  
  GRANT : Bir kullanıcıya yetki vermek için kullanılır.<br>  
  REVOKE : Bir kullanıcıya verilen yetkiyi geri almak için kullanılır.<br> 
