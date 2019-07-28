/*
using date data type allows us to handle invalid date and perform operation over dates.
time stamp has billionth percision
CLOB and BLOB data types
CLOB for char >4000 bytes
BLOB for binary images musics and etc.

*/
CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20) NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL,
    dateofFight DATE,
    timeOfTakeup TIMESTAMP
);
INSERT INTO flights VALUES(1,'IN','US',12,'30-Jul-2018', SYSTIMESTAMP);
INSERT INTO flights VALUES(2,'IN','NZ',12,'30-Jul-2018', SYSTIMESTAMP);
INSERT INTO flights VALUES(3,'US','NZ',12,'30-Jul-2018', SYSTIMESTAMP);
drop  table flights;
