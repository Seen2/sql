/*
multiline comments
*/
create table students(
name varchar2(20),
marks number
);


begin
--loop for one hundred times
    for i in 1..100 loop
        insert into students(name,marks) values('Jhon',10+i);
    end loop;
end;

begin
    for i in 1..100 loop
        insert into students(name,marks) values('Jhon',10+i);
    end loop;
    commit;
exception
    when others then
    rollback;
end;


declare 
    sName students.name%type not null :='Shintu';
    sMarks students.marks%type not null default 81;
begin
    
    select name into sname from students where marks=13;
    dbms_output.put_line(sname);
exception
    when others then
        rollback;
end;

