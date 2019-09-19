create table employee_42(
  empno varchar(6) primary key,
  name varchar(10),
  mgr_no varchar(6)
);
insert into employee_42 values('E001','Basu','E002');
insert into employee_42 values('E002','Rukmani','E005');
insert into employee_42 values('E003','Carol','E004');
insert into employee_42 values('E004','Cyntheia',null);
insert into employee_42 values('E005','Ivan',null);

--minus
--employee who ain't manager
select empno from employee_42 minus select mgr_no from employee_42;
select name,empno, from employee_42 minus select name,mgr_no from employee_42;


--intersection
--employee who are manager
select empno from employee_42 intersect select mgr_no from employee_42;


--alter table employee_42 modify mgr_no varchar2(6) references employee_42(empno);
