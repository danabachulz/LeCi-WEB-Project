--------------------------------------------------------
--  File created - Wednesday-June-08-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MATAKULIAH
--------------------------------------------------------

  CREATE TABLE "HR"."MATAKULIAH" 
   (	"KODE" VARCHAR2(50 BYTE), 
	"NAMA" VARCHAR2(50 BYTE), 
	"SKS" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.MATAKULIAH
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF100','Pengantar Teknologi Informasi','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF110','Kalkulus','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF111','Logika Informatika','2');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF160','Sistem Digital','2');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('FST111','Pemrograman Komputer','2');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('FST111P','Praktikum Pemrograman Komputer','2');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF141','Statistika','2');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF112','Metode Numerik','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF113','Matematika Diskret','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF115','Pengolahan Data Statistik','2');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF161','Organisasi Komputer','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF150','Komunikasi Data','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF121','Pemrograman Berorientasi Obyek','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF121P','Praktikum Pemrograman Berorientasi Obyek','1');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF220','Struktur Data I','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF220P','Praktikum Struktur Data I','1');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF270P','Praktikum Sistem Open Source','1');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF221','Pemrograman Berorientasi Obyek II','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF221P','Praktikum Pemrograman Berorientasi Obyek II','1');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF251','Jaringan Komputer','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF232','Basis Data','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF232P','Praktikum Basis Data','1');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF240','Analisis Kebutuhan PErangkat Lunak','2');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF321','Pemrograman Basis WEB','2');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF321P','Praktikum Pemrograman Basis WEB','2');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF222','Struktur Data II','2');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF222P','Praktikum Struktur Data II','1');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF251P','Praktikum Jaringan Komputer','1');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('INF270','Sistem Operasi','3');
Insert into HR.MATAKULIAH (KODE,NAMA,SKS) values ('FST234','Bahasa Indonesia','3');
