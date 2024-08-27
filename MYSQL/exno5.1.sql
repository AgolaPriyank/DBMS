create database priyank5;
use priyank5;
show tables;
select current_date as DATE;
use priyank2;
show tables;
select * from employee;
select emp_no,emp_sal,round(emp_sal * 1.15) as "New salary" from employee;
select emp_no,emp_sal,round(emp_sal * 1.15) as "New salary" , round(emp_sal * 0.15) as "Increase" from employee;
