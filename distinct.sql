CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20) NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL
);
INSERT INTO flights VALUES(1,'IN','US',12);
INSERT INTO flights VALUES(2,'IN','NZ',12);
INSERT INTO flights VALUES(3,'US','NZ',12);
;
select * from flights;
/*
distinct makes different combinations.
and should before any column in commands.
*/
select distinct origin as "Depart Place",destination ,9 as common from flights;
delete from flights;
