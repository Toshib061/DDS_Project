clear screen;


drop table department_info;
drop table salary_info;


create table department_info(department varchar2(20),dept_budget number, manager_name varchar2(20));


insert into department_info values('IT',90000,'Sajid Ahmed');
insert into department_info values('finance',80000,'Shah Faisal Raju');
insert into department_info values('research',90000,'Tunazzin Rahman Topu');
insert into department_info values('accounting',70000,'Minhajul Islam');
insert into department_info values('marketing',60000,'Mahmudul Hasan');
insert into department_info values('rd',80000,'Junayed Hassan');



create table salary_info(id number, salary number);

insert into salary_info values(1,20000);
insert into salary_info values(2,25000);
insert into salary_info values(3,30000);
insert into salary_info values(4,35000);
insert into salary_info values(5,40000);
insert into salary_info values(6,30000);
insert into salary_info values(7,25000);
insert into salary_info values(8,22000);
insert into salary_info values(9,24000);
insert into salary_info values(10,25000);
insert into salary_info values(11,26000);
insert into salary_info values(12,27000);
insert into salary_info values(13,28000);
insert into salary_info values(14,29000);
insert into salary_info values(15,30000);
insert into salary_info values(16,32000);
insert into salary_info values(17,30000);
insert into salary_info values(18,22000);
insert into salary_info values(19,21000);
insert into salary_info values(20,35000);
insert into salary_info values(21,22000);
insert into salary_info values(22,28000);
insert into salary_info values(23,29000);
insert into salary_info values(24,37000);
insert into salary_info values(25,22000);

commit;


select * from department_info;
select * from salary_info;