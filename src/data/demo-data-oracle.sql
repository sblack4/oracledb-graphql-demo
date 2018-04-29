--------------------------------------------------------
--  File created - Saturday-April-28-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACCOUNTS
--------------------------------------------------------

  CREATE TABLE "GRAPHQL"."ACCOUNTS" 
   (	"ID" NUMBER(3,0), 
	"EMAIL_ADDRESS" VARCHAR2(26 BYTE), 
	"FIRST_NAME" VARCHAR2(26 BYTE), 
	"LAST_NAME" VARCHAR2(26 BYTE), 
	"NUM_LEGS" NUMBER(3,0), 
	"CREATED_AT" NUMBER(15,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "GRAPHQL"."COMMENTS" 
   (	"ID" NUMBER(4,0), 
	"BODY" VARCHAR2(128 BYTE), 
	"POST_ID" NUMBER(4,0), 
	"AUTHOR_ID" NUMBER(3,0), 
	"ARCHIVED" NUMBER(3,0), 
	"CREATED_AT" NUMBER(15,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LIKES
--------------------------------------------------------

  CREATE TABLE "GRAPHQL"."LIKES" 
   (	"ACCOUNT_ID" NUMBER(3,0), 
	"COMMENT_ID" NUMBER(4,0), 
	"CREATED_AT" NUMBER(15,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POSTS
--------------------------------------------------------

  CREATE TABLE "GRAPHQL"."POSTS" 
   (	"ID" NUMBER(4,0), 
	"BODY" VARCHAR2(1024 BYTE), 
	"AUTHOR_ID" NUMBER(3,0), 
	"ARCHIVED" NUMBER(3,0), 
	"CREATED_AT" NUMBER(15,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RELATIONSHIPS
--------------------------------------------------------

  CREATE TABLE "GRAPHQL"."RELATIONSHIPS" 
   (	"FOLLOWER_ID" NUMBER(3,0), 
	"FOLLOWEE_ID" NUMBER(3,0), 
	"CLOSENESS" VARCHAR2(26 BYTE), 
	"CREATED_AT" NUMBER(15,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SPONSORS
--------------------------------------------------------

  CREATE TABLE "GRAPHQL"."SPONSORS" 
   (	"GENERATION" NUMBER(3,0), 
	"FIRST_NAME" VARCHAR2(26 BYTE), 
	"LAST_NAME" VARCHAR2(26 BYTE), 
	"NUM_LEGS" NUMBER(3,0), 
	"CREATED_AT" VARCHAR2(19 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into GRAPHQL.ACCOUNTS
SET DEFINE OFF;
Insert into GRAPHQL.ACCOUNTS (ID,EMAIL_ADDRESS,FIRST_NAME,LAST_NAME,NUM_LEGS,CREATED_AT) values (1,'Liam.Kihn42@gmail.com','Myrtie','Hickle',2,1470009610795);
Insert into GRAPHQL.ACCOUNTS (ID,EMAIL_ADDRESS,FIRST_NAME,LAST_NAME,NUM_LEGS,CREATED_AT) values (2,'Earl.Koss41@yahoo.com','Yasmine','Rolfson',2,1471501277505);
Insert into GRAPHQL.ACCOUNTS (ID,EMAIL_ADDRESS,FIRST_NAME,LAST_NAME,NUM_LEGS,CREATED_AT) values (3,'Elliot.Heaney55@gmail.com','Ole','Barrows',2,1458349197557);
Insert into GRAPHQL.ACCOUNTS (ID,EMAIL_ADDRESS,FIRST_NAME,LAST_NAME,NUM_LEGS,CREATED_AT) values (4,'Dangelo.Quitzon@gmail.com','August','Crist',2,1486839721937);
Insert into GRAPHQL.ACCOUNTS (ID,EMAIL_ADDRESS,FIRST_NAME,LAST_NAME,NUM_LEGS,CREATED_AT) values (5,'Lamar_Olson72@hotmail.com','Weston','Shields',2,1478422228475);
REM INSERTING into GRAPHQL.COMMENTS
SET DEFINE OFF;
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (1,'The HDD alarm is down, index the cross-platform card so we can compress the RAM card!',4,2,1,1471733051741);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (2,'If we navigate the bus, we can get to the USB transmitter through the bluetooth XSS alarm!',8,2,0,1467204492767);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (3,'The PNG system is down, copy the cross-platform interface so we can synthesize the THX feed!',1,4,0,1467699270602);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (4,'Try to input the SSL monitor, maybe it will hack the optical monitor!',6,2,0,1466339850152);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (5,'If we override the pixel, we can get to the TCP port through the solid state USB bandwidth!',14,5,0,1457540354151);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (6,'The AI driver is down, program the multi-byte sensor so we can parse the SAS bandwidth!',2,2,0,1470503370167);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (7,'The AI protocol is down, quantify the digital hard drive so we can parse the XML card!',13,3,0,1462096561154);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (8,'Try to program the SMS transmitter, maybe it will synthesize the optical firewall!',2,3,0,1461338705832);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (9,'You can''t back up the alarm without indexing the redundant HTTP program!',10,4,0,1469480856185);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (10,'The SMS firewall is down, quantify the primary panel so we can generate the SAS system!',4,3,0,1479948623333);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (11,'Try to parse the CSS application, maybe it will index the cross-platform array!',15,4,1,1487215860947);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (12,'The COM panel is down, compress the bluetooth firewall so we can back up the SMS port!',3,4,0,1469697780074);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (13,'Use the haptic HDD card, then you can copy the virtual firewall!',1,4,0,1477150599182);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (14,'If we back up the array, we can get to the ADP interface through the solid state FTP driver!',15,1,0,1461719253257);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (15,'Try to back up the EXE alarm, maybe it will synthesize the auxiliary protocol!',13,2,0,1477938057899);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (16,'I''ll generate the mobile TCP capacitor, that should bus the XML panel!',14,3,0,1483887495725);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (17,'We need to compress the bluetooth CSS matrix!',3,1,0,1477766623944);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (18,'I''ll transmit the back-end SAS hard drive, that should feed the SSL capacitor!',1,4,0,1486287955087);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (19,'I''ll generate the multi-byte AI panel, that should pixel the JBOD bandwidth!',4,3,0,1480415890752);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (20,'You can''t reboot the protocol without parsing the virtual SMTP application!',10,4,0,1466272226030);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (21,'Use the neural AGP sensor, then you can reboot the open-source panel!',10,5,1,1477447897403);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (22,'Use the primary TCP capacitor, then you can index the solid state card!',5,4,0,1466742023066);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (23,'The ADP hard drive is down, reboot the haptic interface so we can input the HTTP interface!',7,1,0,1483769949126);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (24,'If we compress the system, we can get to the GB transmitter through the optical XSS sensor!',11,1,0,1481966084170);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (25,'hacking the array won''t do anything, we need to transmit the open-source THX application!',13,4,0,1487435387418);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (26,'Try to override the PCI program, maybe it will generate the neural matrix!',4,2,0,1470827275731);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (27,'The USB microchip is down, back up the cross-platform feed so we can program the RSS card!',11,4,0,1459606050939);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (28,'Try to hack the RAM panel, maybe it will hack the auxiliary feed!',1,4,0,1456538756478);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (29,'Try to override the RSS microchip, maybe it will back up the 1080p circuit!',15,3,0,1474565512703);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (30,'Try to copy the SSL firewall, maybe it will input the mobile hard drive!',14,5,0,1487515821466);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (31,'We need to navigate the haptic HTTP program!',2,5,1,1467418425715);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (32,'I''ll connect the online SSL feed, that should protocol the THX matrix!',2,1,0,1470977551483);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (33,'Use the 1080p AGP driver, then you can back up the wireless alarm!',13,5,0,1481168478575);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (34,'You can''t program the monitor without overriding the multi-byte ADP bandwidth!',6,4,0,1458998369720);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (35,'You can''t index the array without bypassing the wireless THX bandwidth!',6,4,0,1482261273662);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (36,'I''ll generate the wireless CSS circuit, that should system the PNG interface!',12,3,0,1482531701018);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (37,'Use the back-end IB alarm, then you can reboot the haptic driver!',6,1,0,1473244886586);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (38,'We need to copy the optical ADP application!',6,1,0,1484256321338);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (39,'Use the wireless JBOD interface, then you can back up the virtual system!',5,2,0,1465797756308);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (40,'We need to compress the online SMTP bandwidth!',10,5,0,1479897652242);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (41,'synthesizing the driver won''t do anything, we need to quantify the digital COM capacitor!',9,1,1,1467157372966);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (42,'transmitting the application won''t do anything, we need to parse the neural PNG transmitter!',1,5,0,1475827525311);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (43,'We need to reboot the optical SAS application!',3,2,0,1472049272479);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (44,'I''ll navigate the back-end THX sensor, that should hard drive the SAS transmitter!',3,3,0,1459184501282);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (45,'I''ll navigate the neural SSL driver, that should port the THX driver!',12,2,0,1471290945743);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (46,'Try to index the CSS pixel, maybe it will quantify the solid state feed!',14,4,0,1477319156036);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (47,'I''ll connect the primary SQL card, that should driver the CSS pixel!',2,1,0,1485121004500);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (48,'We need to bypass the back-end SMTP hard drive!',4,4,0,1485951505997);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (49,'If we generate the bus, we can get to the FTP circuit through the auxiliary AGP sensor!',14,2,0,1480951792094);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (50,'You can''t hack the port without indexing the optical USB alarm!',6,2,0,1461335421852);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (51,'We need to reboot the neural SMTP circuit!',7,1,1,1467433903013);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (52,'I''ll copy the online EXE transmitter, that should card the SQL pixel!',2,2,0,1463465278813);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (53,'I''ll reboot the redundant JSON card, that should card the SQL capacitor!',12,2,0,1458471033103);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (54,'Try to copy the JSON matrix, maybe it will navigate the wireless array!',14,1,0,1482342362073);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (55,'I''ll back up the open-source JSON microchip, that should pixel the SMS port!',9,1,0,1456884186367);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (56,'indexing the circuit won''t do anything, we need to calculate the mobile TCP interface!',8,4,0,1480205374133);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (57,'We need to reboot the optical USB capacitor!',4,4,0,1486508616042);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (58,'Use the online SCSI firewall, then you can generate the optical firewall!',14,1,0,1470890780503);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (59,'If we transmit the transmitter, we can get to the HTTP driver through the mobile JBOD port!',10,2,0,1478070609229);
Insert into GRAPHQL.COMMENTS (ID,BODY,POST_ID,AUTHOR_ID,ARCHIVED,CREATED_AT) values (60,'The FTP pixel is down, calculate the neural microchip so we can generate the CSS hard drive!',2,5,0,1486282841497);
REM INSERTING into GRAPHQL.LIKES
SET DEFINE OFF;
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,13,1470313770276);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,51,1484861989084);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,2,1478231078374);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,29,1467256689474);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,52,1471423539489);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,9,1465336290860);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,15,1468433156247);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,46,1473556555463);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,17,1486735128283);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,22,1470494403451);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,40,1477638694830);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,29,1475320658207);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,56,1482536149508);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,20,1467158918740);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,30,1462420870639);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,51,1463766698904);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,26,1467692319290);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,31,1473013852488);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,45,1464465762519);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,13,1475261596310);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,18,1473202540775);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,5,1458575596383);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,44,1486237702969);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,19,1469315926591);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,12,1458258922172);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,50,1459120318654);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,39,1476358186907);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,29,1459454855101);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,47,1467056116703);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,11,1461948726941);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,58,1476980359560);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,35,1457544518662);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,31,1464447454936);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,35,1476236972008);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,12,1474646375807);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,59,1477527673957);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,27,1458747690491);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,14,1461766713183);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,51,1469034772509);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,55,1485006009098);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,53,1486271794400);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,58,1473045296711);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,34,1484422141366);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,32,1462007665477);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,2,1473295972211);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,2,1485004574085);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,60,1457732436466);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,51,1478597012287);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,11,1467601936377);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,48,1467749393972);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,30,1480052082965);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,4,1473411645726);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,41,1475695816980);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,29,1467301614606);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,4,1456275706637);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,59,1471702462362);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,16,1487511960147);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,32,1476409471946);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,19,1463897096466);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,54,1466294117615);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,57,1482130553273);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,9,1483886749672);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,9,1462798941995);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,36,1465714738279);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,1,1467662081125);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,18,1481138732157);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,40,1481574791805);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,8,1463085779245);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,6,1458285647222);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,4,1458066599765);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,3,1462646213479);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,31,1484647886966);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,53,1466434112172);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,37,1461071213039);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,57,1461745922505);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,12,1458719640163);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,45,1481928070484);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,48,1477783488645);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,25,1475453716004);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,9,1477067699920);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,56,1487269471366);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,44,1477389018380);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,50,1472473037311);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,27,1463255918114);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,19,1477255421223);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (1,14,1467049859686);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,19,1483040655028);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,42,1460978334630);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,37,1485074818903);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,15,1463604488488);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (2,43,1485016585185);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,13,1458389185218);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,30,1463333902556);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,22,1474957148255);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,17,1456509534032);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,43,1468693665511);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,16,1483551334022);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (4,21,1480786360502);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (5,28,1481696906922);
Insert into GRAPHQL.LIKES (ACCOUNT_ID,COMMENT_ID,CREATED_AT) values (3,7,1475823255679);
REM INSERTING into GRAPHQL.POSTS
SET DEFINE OFF;
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (1,'Ad laudantium dicta quo nihil sunt aspernatur quia. Omnis vero ut occaecati. Iure enim labore.',5,1,1487577963850);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (2,'Harum unde maiores est quasi totam consequuntur. Necessitatibus doloribus ut totam dolore omnis quos error eos. Rem nostrum assumenda eius veniam fugit dicta in consequuntur. Ut porro dolorem aliquid qui magnam a.',2,0,1468236023128);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (3,'Dolores ea corrupti est qui repellat. Iste non quaerat autem earum consequatur ea id voluptatum.',1,0,1479587806041);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (4,'Ut sapiente et eveniet fuga molestiae veniam qui voluptate. Et fugiat velit. Ut dolorem magnam.',1,0,1464601917938);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (5,'Qui nesciunt totam ea quibusdam aut. Velit doloribus enim nulla cumque ab sed.',5,0,1467788205039);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (6,'Sapiente aliquid repellat exercitationem harum corrupti architecto neque magni. Dolor rem voluptate et earum voluptate aut ratione. Non alias deserunt quia porro sunt.',4,1,1473780783397);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (7,'Reprehenderit error sint. Incidunt et inventore facere. Modi voluptatem et placeat amet aut.',1,0,1486279526044);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (8,'Nostrum repellendus odio. Officia eaque sunt laboriosam qui molestias quod quia eius non. Aut veritatis vero aliquid suscipit deserunt id architecto saepe. Dolorem fugit corrupti vel ipsa qui qui qui delectus facere.',2,0,1479420252175);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (9,'Est esse ipsa facilis. Est eligendi omnis magni nostrum sit ratione. Eos accusamus voluptate et sunt culpa quis velit. Voluptate quam sed reprehenderit et reprehenderit.',4,0,1470222971402);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (10,'Deserunt quibusdam nemo ducimus saepe iusto amet repellendus voluptas placeat. Sed velit autem dolores veniam excepturi ducimus quisquam. Molestias sit voluptas rerum neque.',4,0,1484396131040);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (11,'Modi quis velit. Est commodi accusantium. Magnam sit ratione quasi aut dignissimos possimus excepturi.',2,1,1478378016750);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (12,'Ut ipsum minima sint rerum quo cupiditate consequatur omnis asperiores. At est aut et. Id quas ducimus et. Id et natus deserunt odio consequatur.',2,0,1478821124545);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (13,'Ea rem placeat sit ratione cupiditate. Cum fugit occaecati repudiandae. Molestiae recusandae voluptatum non modi sint modi aspernatur facilis rem. Sit aut incidunt qui et eum cumque sint.',1,0,1478762349235);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (14,'Itaque quis nam molestias recusandae. Dolore sit alias nam ipsam quia. Ab dicta enim iusto.',5,0,1483804749732);
Insert into GRAPHQL.POSTS (ID,BODY,AUTHOR_ID,ARCHIVED,CREATED_AT) values (15,'Fuga omnis est recusandae et veritatis aliquid saepe architecto repellat. Velit provident minus facere velit. Sit et eligendi omnis. Perferendis deserunt beatae aut ducimus.',1,0,1466351669014);
REM INSERTING into GRAPHQL.RELATIONSHIPS
SET DEFINE OFF;
Insert into GRAPHQL.RELATIONSHIPS (FOLLOWER_ID,FOLLOWEE_ID,CLOSENESS,CREATED_AT) values (5,3,'best',1478319452321);
Insert into GRAPHQL.RELATIONSHIPS (FOLLOWER_ID,FOLLOWEE_ID,CLOSENESS,CREATED_AT) values (3,1,'best',1473427104076);
Insert into GRAPHQL.RELATIONSHIPS (FOLLOWER_ID,FOLLOWEE_ID,CLOSENESS,CREATED_AT) values (5,4,'best',1480160196357);
Insert into GRAPHQL.RELATIONSHIPS (FOLLOWER_ID,FOLLOWEE_ID,CLOSENESS,CREATED_AT) values (2,5,'best',1483619833712);
Insert into GRAPHQL.RELATIONSHIPS (FOLLOWER_ID,FOLLOWEE_ID,CLOSENESS,CREATED_AT) values (3,5,'best',1478524121323);
Insert into GRAPHQL.RELATIONSHIPS (FOLLOWER_ID,FOLLOWEE_ID,CLOSENESS,CREATED_AT) values (1,4,'acquaintance',1458177410273);
Insert into GRAPHQL.RELATIONSHIPS (FOLLOWER_ID,FOLLOWEE_ID,CLOSENESS,CREATED_AT) values (3,4,'best',1464018437199);
Insert into GRAPHQL.RELATIONSHIPS (FOLLOWER_ID,FOLLOWEE_ID,CLOSENESS,CREATED_AT) values (5,2,'acquaintance',1481915096995);
Insert into GRAPHQL.RELATIONSHIPS (FOLLOWER_ID,FOLLOWEE_ID,CLOSENESS,CREATED_AT) values (5,1,'best',1472683031324);
REM INSERTING into GRAPHQL.SPONSORS
SET DEFINE OFF;
Insert into GRAPHQL.SPONSORS (GENERATION,FIRST_NAME,LAST_NAME,NUM_LEGS,CREATED_AT) values (1,'erlich','bachman',2,'2017-02-22 08:35:39');
Insert into GRAPHQL.SPONSORS (GENERATION,FIRST_NAME,LAST_NAME,NUM_LEGS,CREATED_AT) values (1,'andrew','bachman',2,'2017-02-22 08:35:39');
Insert into GRAPHQL.SPONSORS (GENERATION,FIRST_NAME,LAST_NAME,NUM_LEGS,CREATED_AT) values (2,'erlich','bachman',2,'2017-02-22 08:35:39');
Insert into GRAPHQL.SPONSORS (GENERATION,FIRST_NAME,LAST_NAME,NUM_LEGS,CREATED_AT) values (2,'matt','bachman',2,'2017-02-22 08:35:39');
Insert into GRAPHQL.SPONSORS (GENERATION,FIRST_NAME,LAST_NAME,NUM_LEGS,CREATED_AT) values (1,'matt','daemon',2,'2017-02-22 08:35:39');
--------------------------------------------------------
--  Constraints for Table ACCOUNTS
--------------------------------------------------------

  ALTER TABLE "GRAPHQL"."ACCOUNTS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "GRAPHQL"."COMMENTS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POSTS
--------------------------------------------------------

  ALTER TABLE "GRAPHQL"."POSTS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RELATIONSHIPS
--------------------------------------------------------

  ALTER TABLE "GRAPHQL"."RELATIONSHIPS" MODIFY ("CREATED_AT" NOT NULL ENABLE);
