--------------------------------------------------------
--  파일이 생성됨 - 수요일-4월-01-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BOARD_REPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KNLS"."BOARD_REPLY_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 520 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KNLS"."BOARD_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4380 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KNLS"."EST_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1560 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KNLS"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_REPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KNLS"."QNA_REPLY_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KNLS"."QNA_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_REPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KNLS"."REVIEW_REPLY_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KNLS"."REVIEW_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TIP_REPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KNLS"."TIP_REPLY_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TIP_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KNLS"."TIP_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TBL_BOARD
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_BOARD" 
   (	"B_NO" NUMBER(10,0), 
	"B_TITLE" VARCHAR2(20 BYTE), 
	"B_CONTENT" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(10 BYTE), 
	"B_REGTIME" DATE DEFAULT sysdate, 
	"B_UPDATETIME" DATE DEFAULT sysdate, 
	"REPLYCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_BOARD_REPLY
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_BOARD_REPLY" 
   (	"BR_NO" NUMBER(10,0), 
	"BR_CONTENT" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(10 BYTE), 
	"B_NO" NUMBER(10,0), 
	"BR_REGTIME" DATE DEFAULT sysdate, 
	"BR_UPDATETIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_ESTIMATE
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_ESTIMATE" 
   (	"E_NO" NUMBER(10,0), 
	"E_AREA" NUMBER(20,0), 
	"E_CONTENT" VARCHAR2(500 BYTE), 
	"E_ADDRESS" VARCHAR2(100 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"E_PRICE" NUMBER(20,0), 
	"E_CONSTRUCTION" VARCHAR2(50 BYTE), 
	"E_REGTIME" DATE DEFAULT sysdate, 
	"E_UPDATETIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_NOTICE
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_NOTICE" 
   (	"N_NO" NUMBER(10,0), 
	"N_TITLE" VARCHAR2(20 BYTE), 
	"N_CONTENT" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"N_REGTIME" DATE DEFAULT sysdate, 
	"N_UPDATETIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_QNA
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_QNA" 
   (	"Q_NO" NUMBER(10,0), 
	"Q_TITLE" VARCHAR2(20 BYTE), 
	"Q_CONTENT" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"Q_REGTIME" DATE DEFAULT sysdate, 
	"Q_UPDATETIME" DATE DEFAULT sysdate, 
	"REPLYCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_QNA_REPLY
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_QNA_REPLY" 
   (	"QR_NO" NUMBER(10,0), 
	"QR_CONTENT" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"Q_NO" NUMBER(10,0), 
	"QR_REGTIME" DATE DEFAULT sysdate, 
	"QR_UPDATETIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_REVIEW
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_REVIEW" 
   (	"R_NO" NUMBER(10,0), 
	"R_TITLE" VARCHAR2(20 BYTE), 
	"R_CONTENT" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"R_REGTIME" DATE DEFAULT sysdate, 
	"R_UPDATETIME" DATE DEFAULT sysdate, 
	"REPLYCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_REVIEW_REPLY
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_REVIEW_REPLY" 
   (	"RR_NO" NUMBER(10,0), 
	"R_NO" NUMBER(10,0), 
	"RR_CONTENT" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"RR_REGTIME" DATE DEFAULT sysdate, 
	"RR_UPDATETIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_TIP
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_TIP" 
   (	"T_NO" NUMBER(10,0), 
	"T_TITLE" VARCHAR2(20 BYTE), 
	"T_CONTENT" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"T_REGTIME" DATE DEFAULT sysdate, 
	"T_UPDATETIME" DATE DEFAULT sysdate, 
	"REPLYCNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_TIP_REPLY
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_TIP_REPLY" 
   (	"TR_NO" NUMBER(10,0), 
	"TR_CONTENT" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"T_NO" NUMBER(10,0), 
	"TR_REGTIME" DATE DEFAULT sysdate, 
	"TR_UPDATETIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_USER
--------------------------------------------------------

  CREATE TABLE "KNLS"."TBL_USER" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PW" VARCHAR2(20 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"MANAGER" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into KNLS.TBL_BOARD
SET DEFINE OFF;
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1065,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1066,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1069,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1072,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1073,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1074,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1075,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1078,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1081,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1082,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1085,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1088,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1089,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1090,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1093,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1096,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1097,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1100,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1103,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1104,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1105,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1106,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1107,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1110,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1113,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1114,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1117,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1120,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1121,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1122,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1125,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1128,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1129,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1132,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1135,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1136,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1137,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1138,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1141,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1144,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1145,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1148,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1151,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1152,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1153,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1156,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1159,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1160,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1163,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1166,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1167,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1168,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1169,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1170,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1171,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1174,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1177,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1178,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1181,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1183,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1185,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1186,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1187,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1190,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1193,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1194,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1197,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1200,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1201,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1202,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1203,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1206,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1209,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1210,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1213,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1216,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1217,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1218,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1221,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1224,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1225,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1228,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1231,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1232,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1233,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1234,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1235,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1238,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1241,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1242,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1245,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1248,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1249,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1250,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1253,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1256,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1257,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (281,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (284,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (285,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (288,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (291,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (292,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (293,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (296,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (299,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (300,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (303,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (306,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (307,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (308,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (309,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (312,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (315,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (316,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (319,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (322,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (323,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (324,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (327,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (330,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (331,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (334,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (337,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (338,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (339,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (340,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (341,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (344,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (347,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (348,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (351,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (354,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (355,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (356,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (359,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (362,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (363,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (366,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (369,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (370,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (371,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (372,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (375,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (378,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (379,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (382,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (385,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (386,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (387,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (390,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (393,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (394,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (397,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (400,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (401,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (402,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (403,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (404,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (405,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (408,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (411,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (412,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (415,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (418,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (419,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (420,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (423,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (426,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (427,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (430,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (433,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (434,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (435,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (436,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (439,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (442,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (443,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (446,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (449,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (450,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (451,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (454,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (457,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (458,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (461,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (464,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (465,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (466,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (467,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (468,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (471,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (474,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (475,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (478,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (481,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (482,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (483,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (486,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (489,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (490,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (493,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (496,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (497,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (498,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (499,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (502,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (505,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (506,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (509,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (512,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (513,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (514,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (517,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (520,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (521,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (524,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (527,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (528,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (529,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (530,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (531,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (532,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (533,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (536,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (539,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (540,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (543,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (546,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (547,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (548,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (551,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (554,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (555,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (558,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (561,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (562,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (563,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (564,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (567,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (570,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (571,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (574,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (577,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (578,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (579,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (582,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (585,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (586,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (589,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (592,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (593,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (594,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (595,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (596,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (599,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (602,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (603,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (606,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (609,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (610,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (611,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (614,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (617,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (618,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (621,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (624,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (625,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (626,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (627,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (630,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (633,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (634,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (637,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (640,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (641,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (642,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (645,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (648,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (649,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (652,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (655,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (656,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (657,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (658,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (659,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (660,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (663,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (666,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (667,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (670,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (260,'aas','11','ksy',to_date('20/02/27','RR/MM/DD'),to_date('20/02/27','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (673,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (674,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (675,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (678,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (681,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (682,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (685,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (688,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (689,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (690,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (691,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (694,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (697,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (698,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (701,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (704,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (705,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (706,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (709,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (712,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (713,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (716,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (719,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (720,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (721,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (722,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (723,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (726,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (729,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (730,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (733,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (736,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (737,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (738,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (741,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (744,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (745,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (748,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (751,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (752,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (753,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (754,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (757,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (760,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (761,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (764,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (767,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (768,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (769,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (772,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (775,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (776,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (779,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (782,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (783,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (784,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (785,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (786,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (787,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (788,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (789,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (792,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (795,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (796,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (799,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (802,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (803,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (804,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (807,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (810,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (811,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (814,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (817,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (818,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (819,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (820,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (823,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (826,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (827,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (830,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (833,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (834,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (835,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (838,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (841,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (842,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (845,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (848,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (849,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (850,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (851,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (852,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (855,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (858,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (859,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (862,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (865,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (866,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (867,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (870,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (873,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (874,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (877,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (880,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (881,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (882,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (883,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (886,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (889,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (890,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (893,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (896,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (897,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (898,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (901,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (904,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (905,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (908,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (911,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (912,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (913,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (914,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (915,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (916,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (919,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (922,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (923,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (926,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (929,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (930,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (931,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (934,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (937,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (938,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (941,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (944,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (945,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (946,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (947,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (950,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (953,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (954,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (957,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (960,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (961,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (962,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (965,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (968,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (969,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (972,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (975,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (976,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (977,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (978,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (979,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (982,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (985,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (986,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (989,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (992,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (993,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (994,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (997,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1000,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1001,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1004,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1007,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1008,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1009,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1010,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1013,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1016,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1017,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1020,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1023,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1024,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1025,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1028,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1031,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1032,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1035,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1038,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1039,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1040,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1041,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1042,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1043,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1044,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1047,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1050,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1051,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1054,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1057,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1058,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1059,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1062,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1651,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1652,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1653,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1654,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1657,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1660,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1661,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1664,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1667,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1668,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1669,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1672,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1675,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1676,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1679,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1682,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1683,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1684,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1685,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1686,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1689,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1692,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1693,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1696,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1699,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1700,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1701,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1704,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1707,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1708,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1711,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1714,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1715,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1716,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1717,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1720,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1723,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1724,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1727,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1730,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1731,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1732,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1735,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1738,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1739,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1742,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1745,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1746,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1747,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1748,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1749,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1750,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1751,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1754,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1757,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1758,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1761,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1764,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1765,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1766,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1769,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1772,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1773,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1776,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1779,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1780,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1781,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1782,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1785,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1788,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1789,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1792,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1795,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1796,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1797,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1800,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1803,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1804,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1807,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1810,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1811,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1812,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1813,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1814,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1817,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1820,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1821,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1824,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1827,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1828,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1829,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1832,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1835,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1836,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1839,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1842,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1843,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1844,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1845,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1848,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1851,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1852,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1855,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1858,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1859,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1860,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1863,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1866,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1867,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1870,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1873,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1874,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1875,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1876,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1877,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1878,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1881,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1884,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1885,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1888,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1890,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1892,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1893,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1894,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1897,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1900,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1901,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1904,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1907,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1908,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1909,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1910,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1913,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1916,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1917,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1920,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1923,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1924,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1925,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1928,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1931,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1932,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1935,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1938,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1939,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1940,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1941,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1942,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1945,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1948,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1949,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1952,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1955,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1956,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1957,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1960,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1963,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1964,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1967,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1970,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1971,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1972,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1973,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1976,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1979,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1980,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1983,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1986,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1987,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1988,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1991,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1994,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1995,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1998,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2001,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2002,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2003,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2004,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2005,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2006,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2007,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2008,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2011,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2014,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2015,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2018,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2021,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2022,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2023,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2026,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2029,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2030,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2033,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2036,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2037,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2038,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2039,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2239,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2242,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2243,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2244,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2247,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2250,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2251,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2254,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2257,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2258,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2259,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2260,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2261,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2262,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2263,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2266,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2269,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2270,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2273,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2276,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2277,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2278,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2281,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2284,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2287,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2288,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2289,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2290,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2293,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2296,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2297,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2300,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2303,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2304,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2305,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2308,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2311,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2312,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2315,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2318,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2319,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2320,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2321,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2322,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2323,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2324,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2325,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2329,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2330,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2333,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2336,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2337,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2338,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2339,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2342,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2345,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2346,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2349,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2352,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2353,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2354,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2357,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2360,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2361,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2364,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2367,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2368,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2369,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2370,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2371,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2374,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2377,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2378,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2381,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2384,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2385,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2386,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2389,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2392,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2393,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2396,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2399,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2400,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2401,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2402,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2405,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2408,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2409,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2412,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2415,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2416,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2417,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2420,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2423,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2424,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2427,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2430,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2431,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2432,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2433,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2434,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2435,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2438,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2441,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2442,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2445,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2447,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2449,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2450,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2451,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2454,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2457,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2458,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2461,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2464,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2465,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2466,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2467,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2470,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2473,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2474,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2477,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2480,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2481,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2482,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2485,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2488,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2489,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2492,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2495,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2496,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2497,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2498,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2499,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2502,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2505,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2506,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2509,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2512,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2513,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2514,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2517,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2520,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2521,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2523,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2526,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2527,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2530,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2533,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2534,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2535,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2538,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2541,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2542,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2545,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2548,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2549,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2550,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2551,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2554,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2557,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2558,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2561,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2564,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2565,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2566,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2569,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2572,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2573,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2576,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2579,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2580,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2581,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2582,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2583,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2586,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2589,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2590,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2593,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2596,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2597,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2598,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2601,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2604,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2605,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2608,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2611,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2612,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2613,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2614,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2617,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2620,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2621,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2624,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2627,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2628,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2629,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2632,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2635,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2636,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2639,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2642,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2643,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2644,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2645,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2646,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2647,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2650,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2653,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2654,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2657,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2660,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2661,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2662,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2665,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2668,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2669,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2672,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2675,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2676,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2677,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2678,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2681,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2684,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2685,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2688,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2691,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2692,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2693,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2696,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2699,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2700,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2703,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2706,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2707,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2708,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2709,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2710,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2713,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2716,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2717,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2720,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2723,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2724,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2725,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2728,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2731,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2732,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2735,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2738,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2739,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2740,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2741,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2744,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2747,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2748,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2751,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2754,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2755,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2756,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2759,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2762,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2763,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2766,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2769,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2770,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2771,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2772,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2773,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2774,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2775,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2778,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2781,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2782,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2785,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2788,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2789,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2790,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2793,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2796,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2797,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2800,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2803,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2804,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2805,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2806,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2809,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2812,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2813,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2816,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2819,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2820,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2821,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2824,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2042,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2045,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2046,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2049,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2052,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2053,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2054,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2057,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2060,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2061,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2064,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2067,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2068,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2069,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2070,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2071,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2074,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2077,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2078,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2081,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2084,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2085,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2086,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2089,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2092,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2093,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2096,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2099,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2100,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2101,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2102,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2105,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2108,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2109,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2112,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2115,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2116,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2117,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2120,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2123,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2124,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2127,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2130,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2131,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2132,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2133,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2134,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2135,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2138,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2141,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2142,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2145,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2148,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2149,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2150,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2153,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2156,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2157,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2160,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2163,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2164,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2165,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2166,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2169,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2172,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2173,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2176,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2179,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2180,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2181,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2184,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2187,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2188,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2191,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2194,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2195,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2196,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2197,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2198,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2201,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2204,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2205,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2208,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2211,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2212,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2213,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2216,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2219,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2220,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2223,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2226,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2227,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2228,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2229,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2232,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2235,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2236,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1260,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1263,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1264,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1265,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1266,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1269,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1272,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1273,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1276,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1279,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1280,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1281,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1284,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1287,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1288,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1291,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1294,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1295,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1296,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1297,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1298,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1299,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1300,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1301,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1305,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1306,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1309,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1312,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1313,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1314,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1315,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1318,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1321,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1322,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1325,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1328,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1329,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1330,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1333,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1336,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1337,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1340,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1343,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1344,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1345,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1346,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1347,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1350,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1353,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1354,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1357,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1360,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1361,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1362,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1365,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1368,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1369,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1372,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1375,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1376,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1377,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1378,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1381,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1384,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1385,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1388,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1391,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1392,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1393,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1396,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1399,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1400,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1403,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1406,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1407,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1408,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1409,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1410,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1411,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1414,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1417,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1418,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1421,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1423,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1425,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1426,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1427,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1430,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1433,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1434,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1437,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1440,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1441,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1442,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1443,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1446,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1449,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1450,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1453,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1456,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1457,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1458,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1461,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1464,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1465,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1468,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1471,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1472,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1473,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1474,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1475,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1478,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1481,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1482,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1485,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1488,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1489,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1490,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1493,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1496,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1497,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1499,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1502,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1503,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1506,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1509,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1510,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1511,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1514,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1517,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1518,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1521,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1524,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1525,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1526,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1527,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1530,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1533,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1534,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1537,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1540,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1541,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1542,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1545,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1548,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1549,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1552,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1555,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1556,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1557,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1558,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1559,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1562,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1565,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1566,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1569,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1572,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1573,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1574,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1577,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1580,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1581,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1584,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1587,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1588,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1589,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1590,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1593,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1596,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1597,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1600,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1603,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1604,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1605,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1608,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1611,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1612,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1615,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1618,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1619,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1620,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1621,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1622,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1623,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1626,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1629,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1630,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1633,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1636,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1637,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1638,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1641,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1644,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1645,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (1648,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3414,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3417,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3420,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3421,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3422,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3425,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3428,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3429,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3432,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3435,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3436,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3437,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3438,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3441,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3444,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3445,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3448,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3451,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3452,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3453,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3456,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3459,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3460,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3463,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3466,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3467,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3468,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3469,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3470,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3473,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3476,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3477,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3480,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3483,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3484,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3485,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3488,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3491,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3492,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3495,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3498,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3499,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3500,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3501,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3504,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3507,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3508,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3511,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3514,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3515,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3516,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3519,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3522,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3523,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3526,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3529,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3530,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3531,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3532,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3533,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3534,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3537,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3540,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3541,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3544,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3546,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3548,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3549,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3550,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3553,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3556,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3557,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3560,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3563,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3564,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3565,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3566,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3569,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3572,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3573,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3576,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3579,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3580,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3581,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3584,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3587,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3588,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3591,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3594,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3595,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3596,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3597,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3598,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3601,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3604,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3605,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3608,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3611,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3612,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3613,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3616,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3619,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3620,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3623,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3626,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3627,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3628,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3629,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3632,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3635,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3636,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3639,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3642,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3643,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3644,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3647,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3650,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3651,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3654,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3657,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3658,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3659,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3660,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3661,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3662,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3663,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3664,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3667,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3670,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3671,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3674,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3677,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3678,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3679,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3682,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3685,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3686,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3689,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3692,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3693,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3694,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3695,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3699,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3702,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3703,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3704,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3707,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3710,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3711,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3714,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3717,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3718,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3719,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3720,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3721,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3722,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3723,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3726,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3729,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3730,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3733,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3736,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3737,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3738,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3741,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3744,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3747,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3748,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3749,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3750,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3753,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3756,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3757,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3760,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3763,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3764,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3765,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3768,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3771,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3772,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3775,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3778,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3779,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3780,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3781,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3782,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3783,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3784,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3785,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3786,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3789,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3790,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3793,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3796,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3797,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3798,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3801,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3804,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3805,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3808,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3811,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3812,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3813,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3814,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3815,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3818,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3821,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3822,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3825,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3828,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3829,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3830,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3833,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3836,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3837,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3840,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3843,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3844,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3845,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3846,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3849,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3852,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3853,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3856,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3859,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3860,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3861,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3864,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3867,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3868,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3871,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3874,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3875,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3876,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3877,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3878,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3879,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3882,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3885,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3886,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3889,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3892,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3893,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3894,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3897,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3900,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3901,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3904,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3907,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3908,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3909,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3910,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3913,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3916,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3917,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3920,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3923,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3924,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3925,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3928,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3931,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3932,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3935,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3938,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3939,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3940,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3941,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3942,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3945,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3948,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3949,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3952,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3955,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3956,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3957,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3960,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3963,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3964,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3967,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3970,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3971,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3972,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3973,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3976,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3979,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3980,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3984,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3987,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3988,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3989,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3990,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3993,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3996,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3997,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4000,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4003,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4004,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4005,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4008,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4011,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4012,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4015,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4018,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4019,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4020,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4021,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4022,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4023,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4024,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4025,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4029,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4030,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4033,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4036,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4037,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4038,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4039,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4042,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4045,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4046,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4049,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4052,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4053,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4054,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4057,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4060,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4061,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4064,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4067,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4068,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4069,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4070,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4071,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4074,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4077,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4078,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4081,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4084,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4085,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4086,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4089,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4092,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4093,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4096,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4099,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4100,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4101,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4102,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4105,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4108,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4109,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4112,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4115,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4116,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4117,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4120,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4123,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4124,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4127,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4130,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4131,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4132,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4133,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4134,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4135,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4138,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4141,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4142,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4145,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4147,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4149,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4150,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4151,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4154,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4157,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4158,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4161,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4164,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4165,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4166,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4167,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4170,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4173,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4174,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4177,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4180,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4181,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4182,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4185,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4188,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4189,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4192,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4195,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4196,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4197,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2827,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2828,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2831,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2834,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2835,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2836,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2837,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2838,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2841,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2844,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2845,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2848,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2851,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2852,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2853,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2856,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2859,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2860,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2863,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2866,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2867,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2868,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2869,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2872,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2875,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2876,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2879,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2882,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2883,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2884,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2887,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2890,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2891,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2894,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2897,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2898,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2899,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2900,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2901,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2902,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2905,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2908,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2909,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2912,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2914,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2916,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2917,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2918,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2921,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2924,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2925,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2928,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2931,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2932,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2933,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2934,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2937,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2940,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2941,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2944,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2947,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2948,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2949,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2952,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2955,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2956,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2959,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2962,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2963,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2964,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2965,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2966,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2969,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2972,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2973,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2976,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2979,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2980,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2981,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2984,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2987,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2988,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2991,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2994,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2995,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2996,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (2997,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3000,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3003,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3004,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3007,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3010,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3011,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3012,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3015,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3018,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3019,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3022,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3025,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3026,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3027,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3028,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3029,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3030,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3031,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3032,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3035,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3038,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3039,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3042,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3045,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3046,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3047,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3050,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3053,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3054,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3057,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3060,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3061,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3062,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3063,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3066,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3069,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3070,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3073,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3076,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3077,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3078,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3081,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3084,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3085,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3088,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3091,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3092,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3093,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3094,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3095,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3098,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3101,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3102,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3105,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3108,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3109,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3110,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3113,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3116,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3117,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3120,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3123,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3124,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3125,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3126,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3129,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3132,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3133,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3136,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3139,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3140,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3141,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3144,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3147,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3148,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3151,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3154,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3155,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3156,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3157,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3158,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3159,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3162,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3165,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3166,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3169,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3172,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3173,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3174,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3177,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3180,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3181,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3184,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3187,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3188,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3189,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3190,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3193,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3196,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3197,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3200,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3203,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3204,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3205,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3208,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3211,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3212,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3215,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3218,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3219,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3220,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3221,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3222,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3225,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3228,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3229,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3232,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3235,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3236,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3237,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3240,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3243,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3244,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3247,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3250,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3251,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3252,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3253,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3256,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3259,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3260,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3263,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3266,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3267,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3268,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3271,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3274,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3275,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3278,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3281,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3282,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3283,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3284,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3285,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3286,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3287,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3290,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3293,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3294,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3297,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3300,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3301,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3302,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3305,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3307,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3308,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3309,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3310,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3313,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3316,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3317,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3320,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3323,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3324,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3325,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3328,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3331,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3332,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3335,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3338,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3339,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3340,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3341,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3342,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3345,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3348,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3349,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3352,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3355,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3356,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3357,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3360,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3363,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3364,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3367,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3370,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3371,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3372,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3373,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3376,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3379,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3380,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3383,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3386,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3387,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3388,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3391,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3394,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3395,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3398,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3401,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3402,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3403,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3404,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3405,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3406,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3407,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3410,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (3413,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4374,'asd','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4198,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4199,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4202,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4205,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4206,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4209,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4212,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4213,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4214,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4217,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4220,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4221,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4223,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4226,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4227,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4230,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4233,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4234,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4235,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4238,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4241,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4242,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4245,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4248,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4249,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4250,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4251,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4254,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4257,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4258,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4261,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4264,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4265,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4266,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4269,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4272,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4273,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4276,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4279,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4280,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4281,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4282,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4283,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4286,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4289,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4290,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4293,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4296,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4297,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4298,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4301,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4304,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4305,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4308,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4311,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4312,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4313,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4314,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4317,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4320,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4321,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4324,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4327,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4328,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4329,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4332,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4335,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4336,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4339,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4342,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4343,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4344,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4345,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4346,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4347,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4350,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4353,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4354,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4357,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4360,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4361,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4362,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4365,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4368,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4369,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
Insert into KNLS.TBL_BOARD (B_NO,B_TITLE,B_CONTENT,ID,B_REGTIME,B_UPDATETIME,REPLYCNT) values (4372,'aas','11','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
REM INSERTING into KNLS.TBL_BOARD_REPLY
SET DEFINE OFF;
REM INSERTING into KNLS.TBL_ESTIMATE
SET DEFINE OFF;
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (165,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (166,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (167,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (168,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (169,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (170,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (171,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (172,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (173,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (174,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (175,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (176,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (177,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (178,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (179,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (180,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (181,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (182,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (183,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (184,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (185,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (186,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (187,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (188,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (189,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (190,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (191,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (192,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (193,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (194,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (195,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (196,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (197,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (198,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (199,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (200,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (201,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (202,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (203,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (204,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (205,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (206,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (207,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (208,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (209,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (210,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (211,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (212,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (213,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (214,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (215,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (216,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (217,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (218,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (219,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (220,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (221,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (222,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (223,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (224,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (225,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (226,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (227,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (228,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (229,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (230,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (231,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (232,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (233,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (234,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (235,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (236,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (237,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (238,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (239,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (240,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (241,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (242,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (243,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (244,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (245,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (246,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (247,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (248,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (249,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (250,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (251,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (252,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (253,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (254,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (255,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (256,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (257,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (258,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (259,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (260,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (261,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (262,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (263,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (264,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (265,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (266,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (267,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (268,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (269,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (270,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (271,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (272,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (273,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (274,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (275,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (276,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (277,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (278,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (279,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (280,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (281,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (283,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (284,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (285,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (286,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (287,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (288,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (289,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (290,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (291,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (292,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (293,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (294,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (295,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (296,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (297,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (298,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (299,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (300,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (301,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (302,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (303,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (304,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (305,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (306,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (307,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (308,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (309,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (310,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (311,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (312,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (313,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (314,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (315,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (316,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (317,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (318,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (319,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (320,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (321,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (322,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (323,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (324,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (325,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (326,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (327,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (328,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (329,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (330,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (331,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (332,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (333,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (334,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (335,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (336,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (337,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (338,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (339,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (340,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (341,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (342,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (343,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (344,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (345,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (346,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (347,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (348,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (349,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (350,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (351,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (352,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (353,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (354,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (355,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (356,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (357,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (358,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (359,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (360,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (361,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (362,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (363,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (364,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (365,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (366,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (367,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (368,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (369,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (370,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (371,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (372,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (373,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (374,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (375,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (376,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (377,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (378,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (379,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (380,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (381,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (382,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (383,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (384,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (385,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (386,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (387,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (388,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (389,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (390,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (391,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (392,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (393,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (394,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (395,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (396,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (397,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (398,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (399,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (400,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (401,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (665,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (666,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (667,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (668,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (669,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (670,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (671,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (672,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (673,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (674,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (675,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (676,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (677,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (678,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (20,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (402,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (403,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (404,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (405,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (406,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (407,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (408,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (409,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (410,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (411,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (412,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (413,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (414,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (415,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (416,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (417,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (418,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (419,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (420,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (421,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (422,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (423,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (424,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (425,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (426,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (427,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (428,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (429,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (430,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (431,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (432,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (433,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (434,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (435,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (436,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (437,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (438,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (439,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (440,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (441,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (442,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (443,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (444,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (445,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (446,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (447,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (448,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (449,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (450,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (451,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (452,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (453,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (454,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (455,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (456,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (457,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (458,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (459,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (460,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (461,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (462,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (463,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (464,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (465,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (466,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (467,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (468,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (469,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (470,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (471,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (472,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (473,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (474,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (475,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (476,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (477,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (478,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (479,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (480,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (481,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (482,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (483,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (484,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (485,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (486,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (487,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (488,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (489,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (490,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (491,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (492,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (493,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (494,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (495,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (496,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (497,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (498,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (499,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (500,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (501,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (502,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (503,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (504,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (505,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (506,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (507,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (508,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (509,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (510,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (511,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (512,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (513,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (514,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (515,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (516,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (517,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (518,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (519,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (520,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (521,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (522,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (523,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (524,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (525,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (526,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (527,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (528,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (529,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (530,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (531,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (532,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (533,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (534,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (535,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (536,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (537,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (538,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (539,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (540,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (541,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (542,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (543,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (544,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (545,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (546,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (547,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (548,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (549,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (550,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (551,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (552,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (553,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (554,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (555,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (556,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (557,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (558,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (559,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (560,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (561,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (562,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (563,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (564,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (565,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (566,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (567,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (568,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (569,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (570,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (571,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (572,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (573,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (574,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (575,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (576,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (577,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (578,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (579,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (580,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (581,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (582,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (583,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (584,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (585,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (586,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (587,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (588,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (589,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (590,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (591,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (592,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (593,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (594,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (595,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (596,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (597,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (598,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (599,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (600,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (601,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (602,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (603,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (604,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (605,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (606,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (607,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (608,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (609,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (610,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (611,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (612,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (613,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (614,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (615,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (616,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (617,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (618,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (619,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (620,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (621,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (622,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (623,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (624,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (625,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (626,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (627,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (628,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (629,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (630,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (631,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (632,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (633,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (634,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (635,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (636,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (637,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (638,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (639,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (640,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (641,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (642,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (643,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (644,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (645,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (646,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (647,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (648,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (649,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (650,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (651,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (652,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (653,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (654,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (655,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (656,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (657,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (658,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (659,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (660,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (661,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (662,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (663,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (664,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (20,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (20,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (21,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (22,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (23,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (24,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (25,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (26,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (27,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (28,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (29,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (30,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (31,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (32,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (33,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (34,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (35,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (36,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (37,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (38,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (39,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (40,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (41,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (42,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (43,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (44,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (45,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (46,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (47,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (48,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (49,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (50,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (51,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (52,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (53,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (54,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (55,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (56,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (57,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (58,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (59,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (60,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (61,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (62,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (63,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (64,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (65,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (66,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (67,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (68,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (69,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (70,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (71,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (72,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (73,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (74,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (75,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (76,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (77,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (78,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (79,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (80,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (81,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (82,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (83,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (84,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (85,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (86,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (87,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (88,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (89,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (90,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (91,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (92,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (93,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (94,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (95,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (96,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (97,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (98,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (99,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (100,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (101,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (102,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (103,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (104,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (105,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (106,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (107,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (108,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (109,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (110,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (111,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (112,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (113,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (114,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (115,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (116,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (117,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (118,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (119,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (120,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (121,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (122,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (123,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (124,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (125,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (126,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (127,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (128,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (129,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (130,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (131,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (132,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (133,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (134,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (135,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (136,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (137,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (138,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (139,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (140,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (141,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (142,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (143,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (144,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (145,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (146,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (147,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (148,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (149,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (150,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (151,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (679,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (680,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (681,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (682,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (683,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (684,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (685,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (686,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (687,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (688,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (689,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (690,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (691,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (692,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (693,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (694,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (695,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (696,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (697,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (698,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (699,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (700,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (701,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (702,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (703,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (704,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (705,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (706,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (707,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (708,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (709,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (710,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (711,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (712,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (713,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (714,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (715,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (716,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (717,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (718,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (719,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (720,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (721,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (722,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (723,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (724,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (725,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (726,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (727,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (728,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (729,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (730,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (731,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (732,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (733,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (734,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (735,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (736,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (737,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (738,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (739,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (740,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (741,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (742,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (743,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (744,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (745,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (746,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (747,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (748,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (749,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (750,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (751,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (752,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (753,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (754,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (755,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (756,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (757,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (758,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (759,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (760,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (761,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (762,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (763,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (764,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (765,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (766,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (767,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (768,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (769,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (770,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (771,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (772,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (773,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (774,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (775,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (776,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (777,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (778,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (779,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (780,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (781,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (782,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (783,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (784,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (785,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (786,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (787,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (788,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (789,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (790,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (791,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (792,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (793,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (794,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (795,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (796,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (797,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (798,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (799,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (800,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (801,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (802,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (803,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (804,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (805,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (806,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (807,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (808,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (809,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (810,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (811,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (812,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (813,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (814,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (815,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (816,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (817,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (818,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (819,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (820,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (821,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (822,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (823,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (824,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (825,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (826,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (827,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (828,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (829,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (830,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (831,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (832,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (833,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (834,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (835,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (836,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (837,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (838,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (839,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (840,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (841,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (842,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (843,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (844,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (845,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (846,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (847,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (848,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (849,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (850,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (851,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (852,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (853,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (854,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (855,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (856,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (857,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (858,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (859,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (860,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (861,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (862,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (863,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (864,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (865,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (866,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (867,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (868,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (869,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (870,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (871,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (872,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (873,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (874,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (875,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (876,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (877,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (878,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (879,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (880,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (881,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (882,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (883,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (884,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (885,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (886,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (887,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (888,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (889,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (890,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (891,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (892,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (893,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (894,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (895,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (896,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (897,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (898,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (899,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (900,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (901,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (902,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (903,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (904,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (905,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (906,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (907,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (908,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (909,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (910,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (911,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (912,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (913,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (914,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (915,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (916,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (917,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (918,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (919,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (920,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (921,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (922,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (923,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (924,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (925,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (926,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (927,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (928,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (929,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (930,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (931,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (932,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (933,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (934,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (935,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (936,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (937,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (938,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (939,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (940,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (941,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (942,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (943,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (944,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (945,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (946,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (947,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (948,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (949,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (950,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (951,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (952,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (953,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (954,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (955,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (956,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (957,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (958,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (959,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (960,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (961,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (962,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (963,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (964,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (965,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (966,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (967,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (968,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (969,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (970,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (971,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (972,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (973,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (974,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (975,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (976,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (977,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (978,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (979,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (980,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (981,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (982,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (983,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (984,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (985,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (986,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (987,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (988,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (989,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (990,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (991,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (992,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (993,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (994,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (995,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (996,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (997,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (998,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (999,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1000,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1001,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1002,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1003,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1004,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1005,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1006,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1007,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1008,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1009,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1010,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1011,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1012,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1013,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1014,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1015,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1016,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1017,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1018,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1019,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1020,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1021,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1022,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1023,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1024,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1025,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1026,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1027,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1028,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1029,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1030,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1031,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1032,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1033,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1034,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1035,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1036,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1037,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1038,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1039,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1040,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1041,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1042,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1043,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1044,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1045,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1046,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1047,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1048,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1049,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1050,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1051,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1052,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1053,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1054,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1055,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1056,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1057,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1058,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1059,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1060,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1061,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1062,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1063,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1064,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1065,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1066,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1067,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1068,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1069,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1070,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1071,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1072,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1073,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1074,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1075,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1076,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1077,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1078,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1079,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1080,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1081,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1082,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1083,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1084,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1085,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1086,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1087,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1088,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1089,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1090,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1091,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1092,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1093,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1094,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1095,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1096,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1097,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1098,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1099,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1100,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1101,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1102,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1103,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1104,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1105,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1106,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1107,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1108,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1109,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1110,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1111,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1112,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1113,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1114,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1115,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1116,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1117,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1118,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1119,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1120,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1121,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1122,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1123,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1124,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1125,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1126,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1127,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1128,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1129,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1130,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1131,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1132,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1133,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1134,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1135,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1136,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1137,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1138,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1139,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1140,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1141,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1142,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1143,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1144,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1145,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1146,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1147,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1148,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1149,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1150,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1151,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1152,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1153,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1154,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1155,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1156,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1157,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1158,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1159,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1160,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1161,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1162,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1163,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1164,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1165,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1166,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1167,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1168,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1169,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1170,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1171,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1172,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1173,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1174,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1175,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1176,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1177,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1178,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1179,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1180,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1181,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1182,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1183,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1184,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1185,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1186,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1187,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1188,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1189,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1190,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1191,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1192,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1193,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1194,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1195,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1196,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1197,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1198,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1199,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1200,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1201,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1202,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1203,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1204,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1205,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1206,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1207,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1208,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1209,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1210,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1211,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1212,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1213,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1214,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1215,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1216,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1217,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1218,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1219,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1220,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1221,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1222,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1223,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1224,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1225,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1226,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1227,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1228,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1229,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1230,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1231,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1232,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1233,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1234,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1235,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1236,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1237,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1238,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1239,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1240,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1241,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1242,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1243,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1244,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1245,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1246,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1247,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1248,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1249,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1250,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1251,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1252,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1253,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1254,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1255,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1256,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1257,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1258,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1259,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1260,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1261,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1262,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1263,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1264,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1265,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1266,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1267,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1268,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1269,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1270,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1271,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1272,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1273,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1274,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1275,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1276,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1277,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1278,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1279,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1280,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1281,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1282,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1283,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1284,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1285,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1286,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1287,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1288,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1289,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1290,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1291,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1292,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1293,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1294,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1295,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1296,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1297,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1298,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1299,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1300,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1301,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1302,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1303,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1304,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1305,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1306,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1307,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1308,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1309,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1310,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1311,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1312,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1313,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1314,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1315,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1316,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1317,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1318,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1319,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1320,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1321,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1322,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1323,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1324,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1325,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1326,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1327,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1328,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1329,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1330,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1331,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1332,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1333,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1334,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1335,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1336,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1337,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1338,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1339,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1340,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1341,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1342,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1343,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1344,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1345,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1346,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1347,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1348,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1349,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1350,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1351,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1352,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1353,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1354,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1355,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1356,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1357,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1358,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1359,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1360,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1361,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1362,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1363,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1364,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1365,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1366,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1367,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1368,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1369,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1370,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1371,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1372,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1373,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1374,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1375,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1376,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1377,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1378,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1379,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1380,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1381,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1382,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1383,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1384,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1385,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1386,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1387,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1388,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1389,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1390,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1391,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1392,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1393,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1394,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1395,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1396,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1397,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1398,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1399,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1400,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1401,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1402,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1403,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1404,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1405,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1406,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1407,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1408,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1409,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1410,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1411,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1412,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1413,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1414,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1415,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1416,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1417,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1418,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1419,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1420,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1421,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1422,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1423,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1424,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1425,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1426,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1427,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1428,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1429,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1430,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1431,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1432,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1433,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1434,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1435,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1436,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1437,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1438,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1439,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1440,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1441,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1442,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1443,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1444,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1445,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1446,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1447,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1448,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1449,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1450,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1451,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1452,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1453,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1454,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1455,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1456,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1457,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1458,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1459,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1460,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1461,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1462,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1463,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1464,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1465,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1466,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1467,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1468,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1469,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1470,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1471,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1472,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1473,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1474,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1475,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1476,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1477,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1478,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1479,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1480,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1481,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1482,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1483,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1484,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1485,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1486,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1487,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1488,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1489,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1490,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1491,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1492,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1493,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1494,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1495,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1496,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1497,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1498,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1499,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1500,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1501,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1502,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1503,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1504,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1505,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1506,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1507,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1508,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1509,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1510,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1511,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1512,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1513,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1514,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1515,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1516,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1517,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1518,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1519,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1520,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1521,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1522,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1523,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1524,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1525,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1526,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1527,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1528,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1529,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1530,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1531,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1532,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1533,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1534,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1535,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1536,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1537,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1538,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1539,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1540,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1541,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1542,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1543,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1544,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1545,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1546,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1547,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1548,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1549,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1550,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1551,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1552,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
Insert into KNLS.TBL_ESTIMATE (E_NO,E_AREA,E_CONTENT,E_ADDRESS,ID,E_PRICE,E_CONSTRUCTION,E_REGTIME,E_UPDATETIME) values (1553,11,'111','11','ksy',11,'tile, window',to_date('20/03/09','RR/MM/DD'),to_date('20/03/09','RR/MM/DD'));
REM INSERTING into KNLS.TBL_NOTICE
SET DEFINE OFF;
REM INSERTING into KNLS.TBL_QNA
SET DEFINE OFF;
Insert into KNLS.TBL_QNA (Q_NO,Q_TITLE,Q_CONTENT,ID,Q_REGTIME,Q_UPDATETIME,REPLYCNT) values (0,'ㅁㄴㅁ','ㅁㄴㅁㅁ','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
REM INSERTING into KNLS.TBL_QNA_REPLY
SET DEFINE OFF;
REM INSERTING into KNLS.TBL_REVIEW
SET DEFINE OFF;
Insert into KNLS.TBL_REVIEW (R_NO,R_TITLE,R_CONTENT,ID,R_REGTIME,R_UPDATETIME,REPLYCNT) values (0,'ㅁㄴㅇ','ㅁㄴㅇ','ksy',to_date('20/02/28','RR/MM/DD'),to_date('20/02/28','RR/MM/DD'),0);
REM INSERTING into KNLS.TBL_REVIEW_REPLY
SET DEFINE OFF;
REM INSERTING into KNLS.TBL_TIP
SET DEFINE OFF;
REM INSERTING into KNLS.TBL_TIP_REPLY
SET DEFINE OFF;
REM INSERTING into KNLS.TBL_USER
SET DEFINE OFF;
Insert into KNLS.TBL_USER (ID,PW,PHONE,NAME,ADDRESS,MANAGER) values ('11','11','11','11','11',1);
Insert into KNLS.TBL_USER (ID,PW,PHONE,NAME,ADDRESS,MANAGER) values ('ksy','123','11111111','김성연','11',0);
Insert into KNLS.TBL_USER (ID,PW,PHONE,NAME,ADDRESS,MANAGER) values ('2','2','2','2','2',1);
Insert into KNLS.TBL_USER (ID,PW,PHONE,NAME,ADDRESS,MANAGER) values ('3','3','3','3','3',1);
Insert into KNLS.TBL_USER (ID,PW,PHONE,NAME,ADDRESS,MANAGER) values ('4','4','4','4','4',1);
Insert into KNLS.TBL_USER (ID,PW,PHONE,NAME,ADDRESS,MANAGER) values ('5','5','5','5','5',1);
Insert into KNLS.TBL_USER (ID,PW,PHONE,NAME,ADDRESS,MANAGER) values ('6','6','6','6','6',1);
Insert into KNLS.TBL_USER (ID,PW,PHONE,NAME,ADDRESS,MANAGER) values ('8','8','8','8','8',1);
Insert into KNLS.TBL_USER (ID,PW,PHONE,NAME,ADDRESS,MANAGER) values ('9','9','9','9','9',1);
Insert into KNLS.TBL_USER (ID,PW,PHONE,NAME,ADDRESS,MANAGER) values ('test id','test pw','phone','name','address',1);
--------------------------------------------------------
--  DDL for Index PK_TR_N
--------------------------------------------------------

  CREATE UNIQUE INDEX "KNLS"."PK_TR_N" ON "KNLS"."TBL_TIP_REPLY" ("TR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_BR_N
--------------------------------------------------------

  CREATE UNIQUE INDEX "KNLS"."PK_BR_N" ON "KNLS"."TBL_BOARD_REPLY" ("BR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_RR_N
--------------------------------------------------------

  CREATE UNIQUE INDEX "KNLS"."PK_RR_N" ON "KNLS"."TBL_REVIEW_REPLY" ("RR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_R_N
--------------------------------------------------------

  CREATE UNIQUE INDEX "KNLS"."PK_R_N" ON "KNLS"."TBL_REVIEW" ("R_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Q_N
--------------------------------------------------------

  CREATE UNIQUE INDEX "KNLS"."PK_Q_N" ON "KNLS"."TBL_QNA" ("Q_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_T_N
--------------------------------------------------------

  CREATE UNIQUE INDEX "KNLS"."PK_T_N" ON "KNLS"."TBL_TIP" ("T_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_QR
--------------------------------------------------------

  CREATE INDEX "KNLS"."IDX_QR" ON "KNLS"."TBL_QNA_REPLY" ("Q_NO" DESC, "QR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_U_I
--------------------------------------------------------

  CREATE UNIQUE INDEX "KNLS"."PK_U_I" ON "KNLS"."TBL_USER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QR_N
--------------------------------------------------------

  CREATE UNIQUE INDEX "KNLS"."PK_QR_N" ON "KNLS"."TBL_QNA_REPLY" ("QR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_TR
--------------------------------------------------------

  CREATE INDEX "KNLS"."IDX_TR" ON "KNLS"."TBL_TIP_REPLY" ("T_NO" DESC, "TR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_N_N
--------------------------------------------------------

  CREATE UNIQUE INDEX "KNLS"."PK_N_N" ON "KNLS"."TBL_NOTICE" ("N_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_RR
--------------------------------------------------------

  CREATE INDEX "KNLS"."IDX_RR" ON "KNLS"."TBL_REVIEW_REPLY" ("R_NO" DESC, "RR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TBL_ESTIMATE
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_ESTIMATE" MODIFY ("E_NO" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_ESTIMATE" MODIFY ("E_AREA" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_ESTIMATE" MODIFY ("E_ADDRESS" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_ESTIMATE" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_ESTIMATE" MODIFY ("E_PRICE" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_ESTIMATE" MODIFY ("E_CONSTRUCTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_NOTICE
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_NOTICE" ADD CONSTRAINT "PK_N_N" PRIMARY KEY ("N_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KNLS"."TBL_NOTICE" MODIFY ("N_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_NOTICE" MODIFY ("N_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_NOTICE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_QNA
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_QNA" ADD CONSTRAINT "PK_Q_N" PRIMARY KEY ("Q_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KNLS"."TBL_QNA" MODIFY ("Q_NO" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_QNA" MODIFY ("Q_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_QNA" MODIFY ("Q_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_QNA" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_TIP_REPLY
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_TIP_REPLY" ADD CONSTRAINT "PK_TR_N" PRIMARY KEY ("TR_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KNLS"."TBL_TIP_REPLY" MODIFY ("TR_NO" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_TIP_REPLY" MODIFY ("TR_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_TIP_REPLY" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_TIP_REPLY" MODIFY ("T_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_USER
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_USER" ADD CONSTRAINT "PK_U_I" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KNLS"."TBL_USER" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_USER" MODIFY ("PW" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_USER" MODIFY ("PHONE" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_USER" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_USER" MODIFY ("ADDRESS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_BOARD_REPLY
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_BOARD_REPLY" ADD CONSTRAINT "PK_BR_N" PRIMARY KEY ("BR_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KNLS"."TBL_BOARD_REPLY" MODIFY ("BR_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_BOARD_REPLY" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_BOARD_REPLY" MODIFY ("B_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_BOARD
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_BOARD" MODIFY ("B_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_BOARD" MODIFY ("B_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_BOARD" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_BOARD" ADD PRIMARY KEY ("B_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_QNA_REPLY
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_QNA_REPLY" ADD CONSTRAINT "PK_QR_N" PRIMARY KEY ("QR_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KNLS"."TBL_QNA_REPLY" MODIFY ("QR_NO" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_QNA_REPLY" MODIFY ("QR_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_QNA_REPLY" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_QNA_REPLY" MODIFY ("Q_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_REVIEW
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_REVIEW" ADD CONSTRAINT "PK_R_N" PRIMARY KEY ("R_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KNLS"."TBL_REVIEW" MODIFY ("R_NO" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_REVIEW" MODIFY ("R_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_REVIEW" MODIFY ("R_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_REVIEW" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_REVIEW_REPLY
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_REVIEW_REPLY" ADD CONSTRAINT "PK_RR_N" PRIMARY KEY ("RR_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KNLS"."TBL_REVIEW_REPLY" MODIFY ("RR_NO" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_REVIEW_REPLY" MODIFY ("R_NO" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_REVIEW_REPLY" MODIFY ("RR_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_REVIEW_REPLY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_TIP
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_TIP" ADD CONSTRAINT "PK_T_N" PRIMARY KEY ("T_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KNLS"."TBL_TIP" MODIFY ("T_NO" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_TIP" MODIFY ("T_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_TIP" MODIFY ("T_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "KNLS"."TBL_TIP" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TBL_BOARD
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_BOARD" ADD CONSTRAINT "FK_B_I" FOREIGN KEY ("ID")
	  REFERENCES "KNLS"."TBL_USER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_BOARD_REPLY
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_BOARD_REPLY" ADD CONSTRAINT "FK_BR_I" FOREIGN KEY ("ID")
	  REFERENCES "KNLS"."TBL_USER" ("ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "KNLS"."TBL_BOARD_REPLY" ADD CONSTRAINT "FK_B_N" FOREIGN KEY ("B_NO")
	  REFERENCES "KNLS"."TBL_BOARD" ("B_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_NOTICE
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_NOTICE" ADD CONSTRAINT "FK_N_I" FOREIGN KEY ("ID")
	  REFERENCES "KNLS"."TBL_USER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_QNA
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_QNA" ADD CONSTRAINT "FK_Q_I" FOREIGN KEY ("ID")
	  REFERENCES "KNLS"."TBL_USER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_QNA_REPLY
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_QNA_REPLY" ADD CONSTRAINT "FK_QR_I" FOREIGN KEY ("ID")
	  REFERENCES "KNLS"."TBL_USER" ("ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "KNLS"."TBL_QNA_REPLY" ADD CONSTRAINT "FK_Q_N" FOREIGN KEY ("Q_NO")
	  REFERENCES "KNLS"."TBL_QNA" ("Q_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_REVIEW
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_REVIEW" ADD CONSTRAINT "FK_R_I" FOREIGN KEY ("ID")
	  REFERENCES "KNLS"."TBL_USER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_REVIEW_REPLY
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_REVIEW_REPLY" ADD CONSTRAINT "FK_RR_I" FOREIGN KEY ("ID")
	  REFERENCES "KNLS"."TBL_USER" ("ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "KNLS"."TBL_REVIEW_REPLY" ADD CONSTRAINT "FK_R_N" FOREIGN KEY ("R_NO")
	  REFERENCES "KNLS"."TBL_REVIEW" ("R_NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_TIP
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_TIP" ADD CONSTRAINT "FK_T_I" FOREIGN KEY ("ID")
	  REFERENCES "KNLS"."TBL_USER" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_TIP_REPLY
--------------------------------------------------------

  ALTER TABLE "KNLS"."TBL_TIP_REPLY" ADD CONSTRAINT "FK_TR_I" FOREIGN KEY ("ID")
	  REFERENCES "KNLS"."TBL_USER" ("ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "KNLS"."TBL_TIP_REPLY" ADD CONSTRAINT "FK_T_N" FOREIGN KEY ("T_NO")
	  REFERENCES "KNLS"."TBL_TIP" ("T_NO") ON DELETE CASCADE ENABLE;
