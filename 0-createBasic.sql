CREATE TABLE flights(
    id INTEGER  PRIMARY KEY,
    origin VARCHAR2(20) NOT NULL,
    destination VARCHAR2(20) NOT NULL,
    duration INTEGER NOT NULL
);
/* INSERT INTO flights VALUES(1,'IN','US',12);
INSERT INTO flights VALUES(2,'IN','NZ',12);
INSERT INTO flights VALUES(3,'US','NZ',12);
*/

SELECT * FROM flights;
SELECT Length(origin),Length(destination) FROM flights;

