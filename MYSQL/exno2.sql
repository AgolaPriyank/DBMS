create database priyank2 ;
use priyank2;
create table Job (job_id varchar(15), job_title varchar(30), min_sal float, max_sal float);
insert into Job values ("IT_PROG","PROGRAMMER",4000,10000),
("MK_MGR","MARKETING MANAGER",9000,15000),
("FI_MGR","FINANCE MANAGER",8200,12000),
("FI_ACC","ACCOUNT",4200,9000),
("LEC","LECTURER",6000,17000),
("COMP_OP","COMPUTER OPERATOR",1500,3000);
create table Employee(emp_no int, emp_name varchar(30), emp_sal float,emp_comm float,dept_no int);
insert into Employee values (101,"Smith",800,NULL,20),
(102,"Snehal",1600,300,25),
(103,"Adama",1100,0,20),
(104,"Aman",3000,NULL,15),
(105,"Anita",5000,50000,10),
(106,"Sneha",2450,24500,10),
(107,"Anamika",2975,NULL,30);
create table Deposit(a_no varchar(5), cname varchar(15), bname varchar(10), amount float, a_date date);
insert into Deposit values ("101","Anil","Andheri",7000,"2006-01-01"),
("102","Sunil","Virar",5000,"2006-07-15"),
("103","Jay","Villeparle",6500,"2006-03-12"),
("104","Vijay","Andheri",8000,"2006-09-17"),
("105","Keyur","Dadar",7500,"2006-11-19"),
("106","Mayor","Borivali",5500,"2006-12-21");
create table Borrow(loanno varchar(5),cname varchar(15), bname varchar(10), amount float);
use priyank2;
select * from employee ;
show tables;
select * from job;
select * from deposit;
select a_no , amount from deposit where a_date between '2006-01-01' and '2006-07-25';
select * from job where min_sal > 4000;
use priyank2;
select emp_name  AS name , emp_sal from employee where dept_no = 20;
select emp_no , emp_name , dept_no from employee where dept_no between 10 and 20;
select * from employee where emp_name like 'A_a%';
select emp_name , emp_no , emp_sal from employee where emp_name like 'Ani__';
select * from employee where emp_name like '_n___' and emp_comm IS NOT  NULL;
select * from employee where emp_comm IS  NULL and emp_name like '__a%';
select emp_name  FROM employee where emp_name like '%\_%'escape'\';