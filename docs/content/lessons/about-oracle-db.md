---
title: "About Oracle DB"
---


<a href="https://livesql.oracle.com" target="_blank">
<img alt="oracle database logo" src="oracle-database-logo.png" width="80%" style="display:block;margin:auto;"/>
</a>

#### Our Apps RDBS Schema
This schema might look slightly different than the one in
[About GraphLQ](about-graphql) but don't be alarmed! This is just how the database sees the data 
*but* this defines the *same schema*. The only difference here is the language behind the definitions. 
Oracle Database uses `SQL` which is the gold-standard of data definition and manipulation languages. 

`SQL` has an interesting history. It was originally designed by IBM to facilitate interaction with relational data,
and named *SEQUEL* (*Structured English Query Language*). It wasn't until Relational Software, Inc (now Oracle) developed their 
database (Oracle Database) that the language took off! [[4](https://en.wikipedia.org/wiki/SQL#History)]


> from [02-demo-data-oracle.sql](https://github.com/unofficialoraclecloudhub/oracledb-graphql-demo/blob/master/Docker/db/oracle-sql/02-demo-data-oracle.sql)
```sql
  CREATE TABLE "GRAPHQL"."ACCOUNTS" 
   (	
    "ID" NUMBER(3,0), 
	"EMAIL_ADDRESS" VARCHAR2(26 BYTE), 
	"FIRST_NAME" VARCHAR2(26 BYTE), 
	"LAST_NAME" VARCHAR2(26 BYTE), 
	"NUM_LEGS" NUMBER(3,0), 
	"CREATED_AT" NUMBER(15,0) DEFAULT 0
   );
  
  CREATE TABLE "GRAPHQL"."COMMENTS" 
   (	
    "ID" NUMBER(4,0), 
	"BODY" VARCHAR2(128 BYTE), 
	"POST_ID" NUMBER(4,0), 
	"AUTHOR_ID" NUMBER(3,0), 
	"ARCHIVED" NUMBER(3,0), 
	"CREATED_AT" NUMBER(15,0) DEFAULT 0
   );

  CREATE TABLE "GRAPHQL"."LIKES" 
   (	
    "ACCOUNT_ID" NUMBER(3,0), 
	"COMMENT_ID" NUMBER(4,0), 
	"CREATED_AT" NUMBER(15,0)
   );

  CREATE TABLE "GRAPHQL"."POSTS" 
   (	
    "ID" NUMBER(4,0), 
	"BODY" VARCHAR2(1024 BYTE), 
	"AUTHOR_ID" NUMBER(3,0), 
	"ARCHIVED" NUMBER(3,0), 
	"CREATED_AT" NUMBER(15,0) DEFAULT 0
   );

  CREATE TABLE "GRAPHQL"."RELATIONSHIPS" 
   (	
    "FOLLOWER_ID" NUMBER(3,0), 
	"FOLLOWEE_ID" NUMBER(3,0), 
	"CLOSENESS" VARCHAR2(26 BYTE), 
	"CREATED_AT" NUMBER(15,0) DEFAULT 0
   );

  CREATE TABLE "GRAPHQL"."SPONSORS" 
   (	
    "GENERATION" NUMBER(3,0), 
	"FIRST_NAME" VARCHAR2(26 BYTE), 
	"LAST_NAME" VARCHAR2(26 BYTE), 
	"NUM_LEGS" NUMBER(3,0), 
	"CREATED_AT" VARCHAR2(19 BYTE)
   );

```

#### Investigating our data with SQL Developer 

If you don't have it already, head to [http://www.oracle.com/technetwork/developer-tools/sql-developer/overview/index.html](http://www.oracle.com/technetwork/developer-tools/sql-developer/overview/index.html) and download your copy of Oracle SQL Developer. 

<a href="http://www.oracle.com/technetwork/developer-tools/sql-developer/overview/index.html" target="_blank">
<img alt="oracle SQL Developer" src="oracle-sql-developer.png" width="90%" style="display:block;margin:auto;"/>
</a>

I'm not going to cover SQL here, but if you're dealing with data it's quite a beautiful language! 

#### APIs with OracleDB

OracleDB puts no limitations on the type of API you can put on top of it! Actually, Oracle is 
one step ahead of you and built [Oracle REST Data Services (ORDS)](http://www.oracle.com/technetwork/developer-tools/rest-data-services/overview/index.html) 
to generate modern APIs for your database. 


### Is that it? (no!!)
I couldn't possibly do Oracle Database or SQL justice here. If you want to learn more I suggest you head to the 
[learn more](learn-more) page. 

To get a better understanding of how GraphQL can enhance your OracleDB let's 
do some comparing & contasting with [GraphQL, REST, & SQL](graph-ql-rest-sql)