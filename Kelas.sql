--------------------------------------------------------
--  File created - Wednesday-June-08-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table KELAS
--------------------------------------------------------

  CREATE TABLE "HR"."KELAS" 
   (	"KODE" VARCHAR2(20 BYTE), 
	"DOSEN" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.KELAS
Insert into HR.KELAS (KODE,DOSEN) values ('A','Michael Bay');
Insert into HR.KELAS (KODE,DOSEN) values ('B','James Cameron');
Insert into HR.KELAS (KODE,DOSEN) values ('C','Peter Jackson');
