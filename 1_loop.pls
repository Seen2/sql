
create table students(
name varchar2(20),
marks number
);


begin
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
