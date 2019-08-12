--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: src/main/resources/changelog/master.xml
--  Ran at: 7/25/19, 12:11 PM
--  Against: MNJ1sfN9e1@110.44.120.190@jdbc:mysql://remotemysql.com:3306/MNJ1sfN9e1
--  Liquibase version: 3.5.3
--  *********************************************************************

--  Lock Database
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '10.13.199.65 (10.13.199.65)', LOCKGRANTED = '2019-07-25 12:11:47.370' WHERE ID = 1 AND LOCKED = 0;

--  Release Database Lock
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

