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

--reverseloop
declare
    
begin

    
    for i in reverse 1..10 loop
        dbms_output.put_line(i);
    end loop;
   
    
end;


declare 
    sName students.name%type not null :='Shintu';
    sMarks students.marks%type not null default 81;
    school constant varchar2(19)  :='JIS';
begin
    
    select name into sname from students where marks=13;
    dbms_output.put_line(sname);
exception
    when others then
        rollback;
end;

--continue==> normal, continue when => conditional
--exit=> normal, exit when =>conditional


declare
    i number:=0;
begin
    loop
    exit when i=10;
    dbms_output.put_line(i);
    i:=i+1;
    end loop;
   
    
end;
        
