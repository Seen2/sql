CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20) NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL
);
INSERT INTO flights VALUES(1,'IN','US',12);
INSERT INTO flights VALUES(2,'IN','NZ',12);
INSERT INTO flights VALUES(3,'US','NZ',12);

select * from flights;

/*
data are case sensative but commands.
trailing space get removed while comparison but leading dont.
*/
select * from flights where id=3;
select id,origin Departure,destination as "Destination" from flights where id=3;
select id,origin Departure,destination as "Destination" ,duration  from flights where origin='IN' and duration=12;

select id,origin Departure,destination as "Destination" ,duration  from flights where id between 1 and 3;


