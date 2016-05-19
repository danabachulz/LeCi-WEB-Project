--------------------------------------------------------
--  File created - Friday-May-20-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table KELAS
--------------------------------------------------------

  CREATE TABLE "HR"."KELAS" 
   (	"KODE" VARCHAR2(20 BYTE), 
	"KAPASITAS" VARCHAR2(10 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.KELAS
Insert into HR.KELAS (KODE,KAPASITAS) values ('A','50');
Insert into HR.KELAS (KODE,KAPASITAS) values ('B','50');
Insert into HR.KELAS (KODE,KAPASITAS) values ('C','50');
--------------------------------------------------------
--  DDL for Index KELAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."KELAS_PK" ON "HR"."KELAS" ("KODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table KELAS
--------------------------------------------------------

  ALTER TABLE "HR"."KELAS" ADD CONSTRAINT "KELAS_PK" PRIMARY KEY ("KODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."KELAS" MODIFY ("KODE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."KELAS" MODIFY ("KAPASITAS" NOT NULL ENABLE);
