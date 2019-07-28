CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20) NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL,
    dateofFight DATE DEFAULT SYSDATE ,
    timeOfTakeup TIMESTAMP DEFAULT SYSTIMESTAMP
);
INSERT INTO flights VALUES(1,'IN','US',12,'30-Jul-2018', SYSTIMESTAMP);
INSERT INTO flights VALUES(2,'IN','NZ',12,'30-Jul-2018', SYSTIMESTAMP);
INSERT INTO flights(id,origin,destination,duration) VALUES(3,'US','NZ',12);
INSERT INTO flights(id,origin,destination,duration,timeOfTakeup) VALUES(4,'US','NZ',12,SYSTIMESTAMP);
