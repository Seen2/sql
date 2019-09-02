create table std_42(
roll number(2),
name varchar2(19),
dept number(2)
);

insert into std_42 values(1,'AB',2);
insert into std_42 values(5,'BD',1);
insert into std_42 values(6,'BN',1);
insert into std_42 values(7,'ANB',3);
insert into std_42 values(6,'XY',2);

--select name, dept having dept count is grater than 1

select name ,dept from std_42 where dept in (select dept from std_42 group by dept having count(dept)>1);
