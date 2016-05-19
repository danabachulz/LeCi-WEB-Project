--------------------------------------------------------
--  File created - Friday-May-20-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DOSEN
--------------------------------------------------------

  CREATE TABLE "HR"."DOSEN" 
   (	"NIP" NUMBER(10,0), 
	"NAMA" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.DOSEN
Insert into HR.DOSEN (NIP,NAMA) values (123451,'Bu Tatik');
Insert into HR.DOSEN (NIP,NAMA) values (123452,'Pak Albert');
Insert into HR.DOSEN (NIP,NAMA) values (123453,'Pak Adi');
Insert into HR.DOSEN (NIP,NAMA) values (123454,'Pak Eko');
Insert into HR.DOSEN (NIP,NAMA) values (123455,'Pak Agung');
Insert into HR.DOSEN (NIP,NAMA) values (123456,'Pak Iwan');
Insert into HR.DOSEN (NIP,NAMA) values (1234513,'Pak Harris');
Insert into HR.DOSEN (NIP,NAMA) values (123458,'Pak Wawan');
Insert into HR.DOSEN (NIP,NAMA) values (123459,'Pak Puspa');
Insert into HR.DOSEN (NIP,NAMA) values (1234510,'Pak Eka');
Insert into HR.DOSEN (NIP,NAMA) values (1234511,'Bu Ayu');
Insert into HR.DOSEN (NIP,NAMA) values (1234512,'Bu Polina');
--------------------------------------------------------
--  DDL for Index DOSEN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."DOSEN_PK" ON "HR"."DOSEN" ("NIP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table DOSEN
--------------------------------------------------------

  ALTER TABLE "HR"."DOSEN" ADD CONSTRAINT "DOSEN_PK" PRIMARY KEY ("NIP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."DOSEN" MODIFY ("NIP" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."DOSEN" MODIFY ("NAMA" NOT NULL ENABLE);
