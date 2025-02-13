/*
Using the My SQL Create the database of JUET
+----------------+
| Tables_in_juet |
+----------------+
| departmant     |
| students       |
+----------------+
+------------+-------+----------+
| DEPARTMANT | HADE  | LOCATION |
+------------+-------+----------+
| CSE        | ALPHA | CL1      |
| CHE        | BETA  | CL5      |
| CVE        | GAMA  | CL10     |
| ECE        | DALTA | CL15     |
| MEE        | OMAGA | CL20     |
+------------+-------+----------+
+---------+--------+
| Er_Roll | Branch |
+---------+--------+
| 231B264 | CSE    |
| 231B265 | CSE    |
+---------+--------+
*/
create database JUET;
use JUET;
create table STUDENTS(Er_Roll varchar(10),Branch char(3));
insert into STUDENTS values('231B264','CSE'),
                           ('231B265','CSE');
create table DEPARTMANT(DEPARTMANT char(3),HADE varchar(10),LOCATION varchar(10));
insert into DEPARTMANT values('CSE','ALPHA','CL1'),
                             ('CHE','BETA','CL5'),
                             ('CVE','GAMA','CL10'),
                             ('ECE','DALTA','CL15'),
                             ('MEE','OMAGA','CL20');
show tables;
show database;
select * from STUDENTS;
select * from DAPARTMANT;
drop table STUDENTS;
drop table DEPARTMANT;
