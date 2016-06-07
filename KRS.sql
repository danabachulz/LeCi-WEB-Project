--------------------------------------------------------
--  File created - Wednesday-June-08-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table KRS
--------------------------------------------------------

  CREATE TABLE "HR"."KRS" 
   (	"NIM" VARCHAR2(50 BYTE), 
	"NAMA" VARCHAR2(50 BYTE), 
	"SKS" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.KRS
Insert into HR.KRS (NIM,NAMA,SKS) values ('null','null','null');
Insert into HR.KRS (NIM,NAMA,SKS) values ('145314065','Dana','30');
Insert into HR.KRS (NIM,NAMA,SKS) values ('145314065','I PUTU DESYANNDANA','6');
