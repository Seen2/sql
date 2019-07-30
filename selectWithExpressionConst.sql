CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20) NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL
);
INSERT INTO flights VALUES(1,'IN','US',12);
INSERT INTO flights VALUES(2,'IN','NZ',12);
INSERT INTO flights VALUES(3,'US','NZ',12);
select id,origin from flights;
/*
without changing database var we can change presentation names and as is optional
as is use to make more readable and also the as help to represent the spaces within name
*/
select id,origin as depart from flights;
select id,origin  depart from flights;
select id,origin as "Depart Place" from flights;

/*
expression and constants
*/
select id,origin as "Depart Place",(duration*60) as "Duration in Minutes"  from flights;
select id,origin as "Depart Place" ,9 as common from flights;

delete from flights;
