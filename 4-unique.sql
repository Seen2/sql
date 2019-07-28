CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20)  CONSTRAINT flights_org_nn NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL,
    dateofFight DATE DEFAULT SYSDATE ,
    timeOfTakeup TIMESTAMP DEFAULT SYSTIMESTAMP,
    num NUMBER(2) UNIQUE
);
/*
unique keys allows more null values but else can't be same
uniqueness still but with multiple null values
*/
INSERT INTO flights VALUES(1,'IN','US',12,'30-Jul-2018', SYSTIMESTAMP,3);
INSERT INTO flights VALUES(2,'IN','NZ',12,'30-Jul-2018', SYSTIMESTAMP,'');
INSERT INTO flights(id,origin,destination,duration) VALUES(3,'US','NZ',12);
INSERT INTO flights(id,origin,destination,duration,timeOfTakeup,num) VALUES(4,'US','NZ',12,SYSTIMESTAMP,NULL);

DESC flights;
SELECT * FROM flights;

