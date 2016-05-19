--------------------------------------------------------
--  File created - Friday-May-20-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MAHASISWA
--------------------------------------------------------

  CREATE TABLE "HR"."MAHASISWA" 
   (	"NAMA" VARCHAR2(20 BYTE), 
	"NIM" NUMBER, 
	"PRODI" VARCHAR2(20 BYTE), 
	"IPK" VARCHAR2(20 BYTE), 
	"NIP" NUMBER(10,0), 
	"PASSWORD" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.MAHASISWA
Insert into HR.MAHASISWA (NAMA,NIM,PRODI,IPK,NIP,PASSWORD) values ('Joni Rourensius',145314016,'Teknik Informatika','3,10',123451,'joniikeh');
Insert into HR.MAHASISWA (NAMA,NIM,PRODI,IPK,NIP,PASSWORD) values ('Putu Dana',145314065,'Teknik Informatika','3,20',123451,'danaikeh');
Insert into HR.MAHASISWA (NAMA,NIM,PRODI,IPK,NIP,PASSWORD) values ('Wayan Okta',145314103,'Teknik Informatika','3,30',123451,'wayanikeh');
--------------------------------------------------------
--  DDL for Index MAHASISWAA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."MAHASISWAA_PK" ON "HR"."MAHASISWA" ("NIM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MAHASISWA
--------------------------------------------------------

  ALTER TABLE "HR"."MAHASISWA" ADD CONSTRAINT "MAHASISWAA_PK" PRIMARY KEY ("NIM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."MAHASISWA" MODIFY ("NAMA" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MAHASISWA" MODIFY ("NIM" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MAHASISWA" MODIFY ("PRODI" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MAHASISWA" MODIFY ("IPK" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MAHASISWA" MODIFY ("NIP" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MAHASISWA" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table MAHASISWA
--------------------------------------------------------

  ALTER TABLE "HR"."MAHASISWA" ADD CONSTRAINT "MAHASISWAA_DOSEN_FK1" FOREIGN KEY ("NIP")
	  REFERENCES "HR"."DOSEN" ("NIP") ENABLE;
