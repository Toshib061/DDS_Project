clear screen;
set linesize 250;

drop table employee;
drop table personal_info;
drop table working_info;

create table employee(id number, name varchar2(70), age number, department varchar2(20));


insert into employee values(1,'Zobaidul Islam Jabed',25,'IT');
insert into employee values(2,'Amit Hasan',26,'accounting');
insert into employee values(3,'Robin Bin Salam',26,'finance');
insert into employee values(4,'Iqbal Hassan',26,'r_d');
insert into employee values(5,'Istiaque Hashem',25,'marketing');
insert into employee values(6,'Abu Ubaida Akash',24,'research');
insert into employee values(7,'Amin Ahmed Toshib',23,'IT');
insert into employee values(8,'Minhajul Islam',24,'accounting');
insert into employee values(9,'Ishrak Ahmed Resham',25,'finance');
insert into employee values(10,'Sabrina Binte Zahir',26,'r_d');
insert into employee values(11,'Mahmudul Hasan',27,'marketing');
insert into employee values(12,'Tunazzin Rahman Topu',28,'research');
insert into employee values(13,'Hasnath Jami Chowdhury',28,'IT');
insert into employee values(14,'Ishrakul Munzerin',27,'accounting');
insert into employee values(15,'Shazid Morshedul Haque',25,'finance');
insert into employee values(16,'Junayed Hassan',26,'r_d');
insert into employee values(17,'Dewan Tanjil Hossain',25,'marketing');
insert into employee values(18,'Almas Shahriar',24,'accounting');
insert into employee values(19,'Abtahi Mursalin',25,'IT');
insert into employee values(20,'Shah Faisal Raju',26,'finance');
insert into employee values(21,'Anas Mohammad Anwar',28,'marketing');
insert into employee values(22,'Samsul Islam',29,'finance');
insert into employee values(23,'Afsana Hossain Anima',24,'research');
insert into employee values(24,'Sajid Ahmed',25,'IT');
insert into employee values(25,'Saif Chowdhury',25,'r_d');


create table personal_info(id number, address varchar2(20), phone number);


insert into personal_info values(1,'Mirpur',011);
insert into personal_info values(2,'Mohammadpur',012);
insert into personal_info values(3,'Uttora',013);
insert into personal_info values(4,'Bonani',014);
insert into personal_info values(5,'Gulshan',015);
insert into personal_info values(6,'Badda',016);
insert into personal_info values(7,'Shamoly',017);
insert into personal_info values(8,'Dhanmondi',018);
insert into personal_info values(9,'Jigatola',019);
insert into personal_info values(10,'Shantinogor',021);
insert into personal_info values(11,'Motizil',022);
insert into personal_info values(12,'Mirpur',023);
insert into personal_info values(13,'Mohammadpur',024);
insert into personal_info values(14,'Uttora',025);
insert into personal_info values(15,'Bonani',026);
insert into personal_info values(16,'Badda',027);
insert into personal_info values(17,'Shamoly',028);
insert into personal_info values(18,'Dhanmondi',029);
insert into personal_info values(19,'Jigatola',030);
insert into personal_info values(20,'Mohammadpur',031);
insert into personal_info values(21,'Uttora',032);
insert into personal_info values(22,'Dhanmondi',033);
insert into personal_info values(23,'Mirpur',034);
insert into personal_info values(24,'Bonani',035);
insert into personal_info values(25,'Badda',036);


create table working_info(id number, position varchar2(20), remarks varchar2(20), vacation_spend number );


insert into working_info values(1,'junior executive','good',3);
insert into working_info values(2,'developer','good',2);
insert into working_info values(3,'developer','average',3);
insert into working_info values(4,'developer','satisfactory',5);
insert into working_info values(5,'junior executive','satisfactory',4);
insert into working_info values(6,'senior executive','satisfactory',2);
insert into working_info values(7,'junior executive','satisfactory',3);
insert into working_info values(8,'manager','satisfactory',4);
insert into working_info values(9,'junior executive','good',7);
insert into working_info values(10,'junior executive','average',4);
insert into working_info values(11,'manager','satisfactory',2);
insert into working_info values(12,'manager','better',3);
insert into working_info values(13,'developer','good',6);
insert into working_info values(14,'senior executive','good',3);
insert into working_info values(15,'senior executive','better',2);
insert into working_info values(16,'manager','satisfactory',4);
insert into working_info values(17,'junior executive','satisfactory',5);
insert into working_info values(18,'developer','average',1);
insert into working_info values(19,'developer','better',8);
insert into working_info values(20,'manager','better',2);
insert into working_info values(21,'developer','good',3);
insert into working_info values(22,'developer','average',4);
insert into working_info values(23,'junior executive','good',4);
insert into working_info values(24,'manager','satisfactory',3);
insert into working_info values(25,'junior executive','better',4);





commit;


select * from employee;
select * from personal_info;
select * from working_info;
