CREATE TABLE students(
stId INTEGER PRIMARY KEY,
name VARCHAR(20),
mentID INTEGER REFERENCES students(stId) /* self referenced but take care that referenced var exist or not*/
);
INSERT INTO students(stId,name) VALUES(1,'Alex');
INSERT INTO students VALUES(2,'MacGyver',1);
INSERT INTO students VALUES(3,'Bozer',2);
INSERT INTO students VALUES(4,'Jack' ,2);

/*self join*/
SELECT s.name agent,st.name mentor  FROM students s inner join students st on s.stid=st.mentid ;
