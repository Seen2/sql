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

/*
OUTPUT:

1
1 2
1 2 3
1 2 3 4
1 2 3 4 5

*/
