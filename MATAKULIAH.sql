--------------------------------------------------------
--  File created - Friday-May-20-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MATAKULIAH
--------------------------------------------------------

  CREATE TABLE "HR"."MATAKULIAH" 
   (	"NAMA_MATAKULIAH" VARCHAR2(38 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"NIP" NUMBER(10,0), 
	"KODE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.MATAKULIAH
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('Praktikum Pemrograman Basis Web','M001',123451,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('Pemrograman Basis Web','M002',123451,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('Praktikum Struktur Data 2','M003',123451,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('Struktur Data 2','M004',123451,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('PBO 1','M005',1234510,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('PBO 2','M006',123453,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('Analisis Kebutuhan Perangkat Lunak','M007',123459,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('Rekayasa Prangkat Lunak','M008',123459,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('Praktikum Basis Data','M009',123458,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('Basis Data','M010',1234512,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('Keamanan Basis Data','M011',123458,'A');
Insert into HR.MATAKULIAH (NAMA_MATAKULIAH,ID,NIP,KODE) values ('Analisis Algoritma','M0012',123451,'A');
--------------------------------------------------------
--  DDL for Index MATAKULIAHH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MATAKULIAHH_PK" ON "HR"."MATAKULIAH" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MATAKULIAH
--------------------------------------------------------

  ALTER TABLE "HR"."MATAKULIAH" ADD CONSTRAINT "MATAKULIAHH_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."MATAKULIAH" MODIFY ("NAMA_MATAKULIAH" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MATAKULIAH" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MATAKULIAH" MODIFY ("NIP" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MATAKULIAH" MODIFY ("KODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table MATAKULIAH
--------------------------------------------------------

  ALTER TABLE "HR"."MATAKULIAH" ADD CONSTRAINT "MATAKULIAH_DOSEN_FK1" FOREIGN KEY ("NIP")
	  REFERENCES "HR"."DOSEN" ("NIP") ENABLE;
 
  ALTER TABLE "HR"."MATAKULIAH" ADD CONSTRAINT "MATAKULIAH_KELAS_FK1" FOREIGN KEY ("KODE")
	  REFERENCES "HR"."KELAS" ("KODE") ENABLE;
