select ename,salary,'Project Manager' as Designation from employee where designation='PM';

select ename,salary,'Software Engineer' as Designation from employee where designation='SE';
select ename,salary,'Senior Software Engineer' as Designation from employee where designation='SSE';

select * from employee;


/*simple case
works on single column and for single condition and only equality operator is allowed*/
select ename,salary,
case designation
    when 'SE' then 'Software Engineer'
    when 'SSE' then 'Senior Software Engineer'
    when 'PM' then 'Project Manager'
    else 'Invalid'
end Designation
from employee;

/*searched case
each condition is independent of others*/
select ename,salary,
case 
    when designation='SE' then 'Software Engineer'
    when designation='SSE' then 'Senior Software Engineer'
    when designation='PM' then 'Project Manager'
    else 'Invalid'
end Designation
from employee;


select ename,salary,bonus,
case
    when salary+bonus<25000 then 'Low'
    when salary+bonus>25000 and salary+bonus<50000 then 'Medium'
    when salary+bonus>50000 then 'High'
    else 'Crept'
end Income
from employee;
/*
update
*/
update employee set salary=
case
    when salary<25000 then salary*2
    when salary>25000 and salary<50000 then salary+10000
    when salary>50000 then salary+1000
    else salary/10
end
