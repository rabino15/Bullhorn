--------------------------------------------------------
--  File created - Tuesday-July-05-2016   
--------------------------------------------------------
DROP TABLE "ORA1"."BHPOST";
DROP TABLE "ORA1"."BHUSER";
--------------------------------------------------------
--  DDL for Table BHPOST
--------------------------------------------------------

  CREATE TABLE "ORA1"."BHPOST" 
   (    "POSTID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
    "POSTDATE" DATE DEFAULT NULL, 
    "POSTTEXT" VARCHAR2(141 BYTE) DEFAULT NULL, 
    "BHUSERID" NUMBER DEFAULT NULL
   ) ;
--------------------------------------------------------
--  DDL for Table BHUSER
--------------------------------------------------------

  CREATE TABLE "ORA1"."BHUSER" 
   (    "BHUSERID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
    "USERNAME" VARCHAR2(50 BYTE), 
    "USERPASSWORD" VARCHAR2(50 BYTE), 
    "MOTTO" VARCHAR2(100 BYTE) DEFAULT NULL, 
    "USEREMAIL" VARCHAR2(100 BYTE), 
    "JOINDATE" DATE DEFAULT NULL
   ) ;
REM INSERTING into ORA1.BHPOST
SET DEFINE OFF;
Insert into ORA1.BHPOST (POSTID,POSTDATE,POSTTEXT,BHUSERID) values (21,to_date('16-JUN-16','DD-MON-RR'),'This is a sample post 8',2);
Insert into ORA1.BHPOST (POSTID,POSTDATE,POSTTEXT,BHUSERID) values (8,to_date('16-JUN-16','DD-MON-RR'),'This is a sample post 1',1);
Insert into ORA1.BHPOST (POSTID,POSTDATE,POSTTEXT,BHUSERID) values (9,to_date('16-JUN-16','DD-MON-RR'),'This is a sample post 2',2);
Insert into ORA1.BHPOST (POSTID,POSTDATE,POSTTEXT,BHUSERID) values (10,to_date('16-JUN-16','DD-MON-RR'),'This is a sample post 3',3);
Insert into ORA1.BHPOST (POSTID,POSTDATE,POSTTEXT,BHUSERID) values (11,to_date('16-JUN-16','DD-MON-RR'),'This is a sample post 4',4);
Insert into ORA1.BHPOST (POSTID,POSTDATE,POSTTEXT,BHUSERID) values (12,to_date('16-JUN-16','DD-MON-RR'),'This is a sample post 5',4);
Insert into ORA1.BHPOST (POSTID,POSTDATE,POSTTEXT,BHUSERID) values (13,to_date('16-JUN-16','DD-MON-RR'),'This is a sample post 6',3);
Insert into ORA1.BHPOST (POSTID,POSTDATE,POSTTEXT,BHUSERID) values (14,to_date('16-JUN-16','DD-MON-RR'),'This is a sample post 7',1);
REM INSERTING into ORA1.BHUSER
SET DEFINE OFF;
Insert into ORA1.BHUSER (BHUSERID,USERNAME,USERPASSWORD,MOTTO,USEREMAIL,JOINDATE) values (1,'user 1','password','motto for user 1','user1@domain.com',to_date('16-JUN-16','DD-MON-RR'));
Insert into ORA1.BHUSER (BHUSERID,USERNAME,USERPASSWORD,MOTTO,USEREMAIL,JOINDATE) values (2,'user 2','password','motto for user 2','user2@domain.com',to_date('16-JUN-16','DD-MON-RR'));
Insert into ORA1.BHUSER (BHUSERID,USERNAME,USERPASSWORD,MOTTO,USEREMAIL,JOINDATE) values (3,'user 3','password','motto for user 3','user3@domain.com',to_date('16-JUN-16','DD-MON-RR'));
Insert into ORA1.BHUSER (BHUSERID,USERNAME,USERPASSWORD,MOTTO,USEREMAIL,JOINDATE) values (4,'user 4','password','motto for user 4','user4@domain.com',to_date('16-JUN-16','DD-MON-RR'));
--------------------------------------------------------
--  DDL for Index BHPOST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORA1"."BHPOST_PK" ON "ORA1"."BHPOST" ("POSTID") 
  ;
--------------------------------------------------------
--  DDL for Index BHUSER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORA1"."BHUSER_PK" ON "ORA1"."BHUSER" ("BHUSERID") 
  ;
--------------------------------------------------------
--  Constraints for Table BHPOST
--------------------------------------------------------

  ALTER TABLE "ORA1"."BHPOST" ADD CONSTRAINT "BHPOST_PK" PRIMARY KEY ("POSTID")
  USING INDEX  ENABLE;
  ALTER TABLE "ORA1"."BHPOST" MODIFY ("POSTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BHUSER
--------------------------------------------------------

  ALTER TABLE "ORA1"."BHUSER" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "ORA1"."BHUSER" MODIFY ("USERPASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ORA1"."BHUSER" MODIFY ("USEREMAIL" NOT NULL ENABLE);
  ALTER TABLE "ORA1"."BHUSER" ADD CONSTRAINT "BHUSER_PK" PRIMARY KEY ("BHUSERID")
  USING INDEX  ENABLE;
  ALTER TABLE "ORA1"."BHUSER" MODIFY ("BHUSERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BHPOST
--------------------------------------------------------

  ALTER TABLE "ORA1"."BHPOST" ADD CONSTRAINT "FK_BHUSERID" FOREIGN KEY ("BHUSERID")
      REFERENCES "ORA1"."BHUSER" ("BHUSERID") DEFERRABLE INITIALLY DEFERRED ENABLE;