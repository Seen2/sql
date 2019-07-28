CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20) NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL
);
/* INSERT INTO flights VALUES(1,'IN','US',12);
INSERT INTO flights VALUES(2,'IN','NZ',12);
INSERT INTO flights VALUES(3,'US','NZ',12);
varchar for large datasize and char for small
integer for whole number
number allows to restrict the length or size of integer data
for deciamal number NUMBER(percision=5,scale=2)--->  _ _ _ . _ _  
    default goes to max limit
*/

SELECT * FROM flights;
SELECT Length(origin),Length(destination) FROM flights;
DESC flights;

