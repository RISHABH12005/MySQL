/*
 Using the MySQL Create Database UNIVESRITY
 +----------------------+
| Tables_in_university |
+----------------------+
| departemant          |
| emp                  |
| student              |
+----------------------+
+-----+--------+-------+
| ENO | Snamre | Bname |
+-----+--------+-------+
| 123 | Nilesh | ECE   |
| 124 | Ajay   | MEC   |
| 125 | Dines  | HSS   |
| 126 | Ajay   | CSE   |
| 128 | ABC    | XYZ   |
+-----+--------+-------+
+-------+-------+------+
| Dname | HName | DLoc |
+-------+-------+------+
| CSE   | A     | AB1  |
| MEC   | B     | AB2  |
+-------+-------+------+
+------+-------+-------+------+
| ssn  | fname | lname | dno  |
+------+-------+-------+------+
|    0 | A     | a     |    9 |
|    1 | B     | b     |    8 |
|    2 | C     | c     |    7 |
|    3 | D     | d     |    6 |
|    4 | E     | e     |    5 |
|    5 | F     | f     |    4 |
+------+-------+-------+------+
*/
create database UNIVERSITY;
use UNIVERSITY;
create table STUDENT(ENO int,PRIMARY KEY(ENO),Snamre char(10),Bname char(5));
insert into STUDENT values(123,'Nilesh','ECE'),
                          (124,'Ajay','MEC'),
                          (126,'Ajay','CSE'),
                          (125,'Dines','HSS'),
                          (128,'ABC','XYZ');
create table DEPARTEMANT(Dname char(5),PRIMARY KEY(Dname),HName char(1),DLoc varchar(5));
insert into DEPARTEMANT values('CSE','A','AB1'),
                              ('MEC','B','AB2');
create table EMP(ssn int,fname varchar(20),lname varchar(20),dno int);
insert into EMP values(0,'A','a',9),
                      (1,'B','b',8),
                      (2,'C','c',7),
                      (3,'D','d',6),
                      (4,'E','e',5),
                      (5,'F','f',4);
show tables;
show databases;
alter table STUDENT add column EMAIL varchar(30);
alter table STUDENT drop column EMAIL;
alter table STUDENT modify column Sname varchar(30);
alter table STUDENT change Sname Tname varchar(40);
alter table STUDENT add primary key(ENO);
alter table STUDENT drop primary key;
alter table STUDENT add constraint Kname foregin key(Bname) references DEPERTMENT(Dname);
alter table student drop constraint Kname;
alter table STUDENT rename to Stu;
rename table STUDENT to Stu;
drop table STUDENT;
drop database UNIVERSITY;
delete from STUDENT where Sname='Rishabh';
update employee SET salary=50000;
alter table STUDENT add constraint FK foregin key(bname) references department(dname);
alter table STUBENT drop constraint FK;
alter table emp add column sex char(1);
alter table emp add column email varchar(30) after dno;
alter table emp modify column sex char(2);
alter table emp add constraint C check (sex in ('mm','ff'));
alter table emp add constraint empPK primary key(ssn);
alter table emp drop primary key;
alter table emp add constraint empFK foregin key(ssn)references employee(ssn);
create table dept(dno int primary key,dname char(3),No. int references emp(ssn));
drop table dept;
rename table dept to Dep;
create table dept(dno int primary key,dname char(3)default'CSE',No. int references emp(ssn));
    insert into dept(dno,No.)values(2,123456789);
        select*from dept;
alter table dept alter column dno drop default;
select COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_COLUMN_NAME, REFERENCED_TABLE_NAME from information_schema.KEY_COLUMN_USAGE where TABLE_NAME = 'employee';
update emp set fname = 'Rishabh' where ssn = 123;
delete from emp where ssn=124;