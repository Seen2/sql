set serveroutput on;

declare
    n number:=&n;

begin
  for i in 1..5 loop
    for j in 1..i loop
      dbms_output.put(j||' ');
    end loop;
    dbms_output.put_line('');
  end loop;
  
  for i in 1..n loop
    for j in 1..i loop
      dbms_output.put(j||' ');
    end loop;
    dbms_output.put_line('');
  end loop;
end;

/*
OUTPUT:

old 2: n number:=&n;
new 2: n number:=8;
1
1 2
1 2 3
1 2 3 4
1 2 3 4 5
1
1 2
1 2 3
1 2 3 4
1 2 3 4 5
1 2 3 4 5 6
1 2 3 4 5 6 7
1 2 3 4 5 6 7 8

*/
--for multiple execution

set serveroutput on;

declare

begin
  for i in 1..5 loop
    for j in 1..i loop
      dbms_output.put(j||' ');
    end loop;
    dbms_output.put_line('');
  end loop;
end;
/
set serveroutput on;

declare
  n number:=&n;

begin
  
  for i in 1..n loop
    for j in 1..i loop
      dbms_output.put(j||' ');
    end loop;
    dbms_output.put_line('');
  end loop;
end;
