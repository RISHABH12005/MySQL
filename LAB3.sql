
/*
1) Create database using following command
    > Create Database Company_YourENo
    > Use Database Company_YourENo;
   First command create database named company which is not having any tables inside.
   Second command help to enter into the database
2) Use following command to create tables (Refer to the table diagram as given below:
+---------------------------+
| Tables_in_compnay_231b264 |
+---------------------------+
| department                |
| dependent                 |
| dept_location             |
| employee                  |
| project                   |
| works_on                  |
+---------------------------+
+----------+------+---------+-----------+------------+------------------------+------+--------+------------+------+
| Fname    | Mint | Lname   | Ssn       | Bdate      | Address                | Sex  | Salary | Supre_ssn  | Dno  |
+----------+------+---------+-----------+------------+------------------------+------+--------+------------+------+
| John     | B    | Smith   | 123456789 | 1965-01-09 | 731 Fondren,Houston,TX | M    |  30000 | 333445555  |    5 |
| Franklin | T    | Wong    | 333445555 | 1955-12-08 | 63B Voss,Houston,TX    | M    |  40000 | 888665555  |    5 |
| Joyce    | A    | English | 453453453 | 1972-07-31 | 5631 Rice,Houston,TX   | F    |  25000 | 3333445555 |    5 |
| Ramesh   | K    | Narayan | 666884444 | 1962-09-15 | 975 Fire Oak,Humble,TX | M    |  38000 | 3333445555 |    5 |
| James    | E    | Borg    | 888665555 | 1937-11-10 | 450 Stone,Houston,TX   | M    |  55000 | NULL       |    1 |
| Jennifer | S    | Wallace | 987654321 | 1941-06-20 | 291 Berry,Bellaire,TX  | F    |  43000 | 888665555  |    4 |
| Ahemad   | V    | Jabbar  | 987987987 | 1969-03-29 | 980 Dallas,Houseton,TX | M    |  25000 | 987654321  |    4 |
| Alicia   | J    | Zelaya  | 999887777 | 1968-01-19 | 3321 Castle,Spring,TX  | F    |  25000 | 987654321  |    4 |
+----------+------+---------+-----------+------------+------------------------+------+--------+------------+------+
+-----------+----------------+------+------------+--------------+
| Essn      | Dependent_name | Sex  | Bdate      | Relationship |
+-----------+----------------+------+------------+--------------+
| 123456789 | Alice          | F    | 1988-12-30 | Daughter     |
| 123456789 | Elizabeth      | F    | 1967-05-05 | Spouse       |
| 123456789 | Michael        | M    | 1988-01-04 | Son          |
| 333445555 | Alice          | F    | 1986-04-05 | Daughter     |
| 333445555 | Joy            | F    | 1958-05-03 | Spouse       |
| 333445555 | Theodore       | M    | 1983-10-25 | Son          |
| 987654321 | Abner          | M    | 1942-02-28 | Spouse       |
+-----------+----------------+------+------------+--------------+
+---------+-----------+
| Dnumber | Dlocation |
+---------+-----------+
|       5 | Bellaire  |
|       1 | Houston   |
|       5 | Houston   |
|       4 | Stafford  |
|       5 | Sugarland |
+---------+-----------+
+-----------+-----+-------+
| Essn      | Pno | Hours |
+-----------+-----+-------+
| 123456789 |   1 | 32.5  |
| 453453453 |   1 | 20.0  |
| 123456789 |   2 | 7.5   |
| 333445555 |   2 | 10.0  |
| 453453453 |   2 | 20.0  |
| 333445555 |   3 | 10.0  |
| 666884444 |   3 | 40.0  |
| 333445555 |  10 | 10.0  |
| 987987987 |  10 | 35.0  |
| 999887777 |  10 | 10.0  |
| 333445555 |  20 | 10.0  |
| 888665555 |  20 | NULL  |
| 987654321 |  20 | 15.0  |
| 987654321 |  30 | 20.0  |
| 987987987 |  30 | 5.0   |
| 999887777 |  30 | 30.0  |
+-----------+-----+-------+
+-----------------+---------+-----------+------+
| Pname           | Pnumber | Plocation | Dnum |
+-----------------+---------+-----------+------+
| ProductX        |       1 | Bellaire  |    5 |
| ProductY        |       2 | Sugarland |    5 |
| ProductZ        |       3 | Houston   |    5 |
| Computerization |      10 | Stafford  |    4 |
| Reorganization  |      20 | Houston   |    1 |
| Newbenefits     |      30 | Stafford  |    4 |
+-----------------+---------+-----------+------+
+----------------+---------+-----------+----------------+
| Dname          | Dnumber | Mgr_ssn   | Mgr_start_date |
+----------------+---------+-----------+----------------+
| Headquarters   |       1 | 888665555 | 1981-06-19     |
| Administration |       4 | 987654321 | 1995-01-01     |
| Research       |       5 | 333445555 | 1988-05-22     |
+----------------+---------+-----------+----------------+
*/
create database Compnay_231B264;
use Compnay_231B264;
create table EMPLOYEE(Fname varchar(10),Mint char(1),Lname varchar(10),Ssn int,PRIMARY KEY(Ssn),Bdate date,Address varchar(40),Sex char(1),Salary int,Supre_ssn varchar(10),Dno int);
insert into EMPLOYEE values('John','B','Smith',123456789,'1965-01-09','731 Fondren,Houston,TX','M',30000,333445555,5),
	                       ('Franklin','T','Wong',333445555,'1955-12-08','63B Voss,Houston,TX','M',40000,888665555,5),
	                       ('Alicia','J','Zelaya',999887777,'1968-01-19','3321 Castle,Spring,TX','F',25000,987654321,4),
	                       ('Jennifer','S','Wallace',987654321,'1941-06-20','291 Berry,Bellaire,TX','F',43000,888665555,4),
	                       ('Ramesh','K','Narayan',666884444,'1962-09-15','975 Fire Oak,Humble,TX','M',38000,3333445555,5),
	                       ('Joyce','A','English',453453453,'1972-07-31','5631 Rice,Houston,TX','F',25000,3333445555,5),
                           ('Ahemad','V','Jabbar',987987987,'1969-03-29','980 Dallas,Houseton,TX','M',25000,987654321,4),
                           ('James','E','Borg',888665555,'1937-11-10','450 Stone,Houston,TX','M',55000,'NULL',1);
create table DEPARTMENT(Dname char(20),Dnumber int,PRIMARY KEY(Dnumber),Mgr_ssn int,Mgr_start_date date);
insert into DEPARTMENT values('Research',5,333445555,'1988-05-22'),
	                         ('Administration',4,987654321,'1995-01-01'),
	                         ('Headquarters',1,888665555,'1981-06-19');
create table DEPT_LOCATION(Dnumber int,Dlocation char(10),PRIMARY KEY(Dlocation,Dnumber));
insert into DEPT_LOCATION values(1,'Houston'),
                                (4,'Stafford'),
                                (5,'Bellaire'),
                                (5,'Sugarland'),
                                (5,'Houston');
create table WORKS_ON(Essn int,Pno int ,PRIMARY KEY(Pno,Essn),Hours varchar(5));
insert into WORKS_ON values(123456789,1,32.5),
                           (123456789,2,7.5),
                           (666884444,3,40.0),
                           (453453453,1,20.0),
                           (453453453,2,20.0),
                           (333445555,2,10.0),
                           (333445555,3,10.0),
                           (333445555,10,10.0),
                           (333445555,20,10.0),
                           (999887777,30,30.0),
                           (999887777,10,10.0),
                           (987987987,10,35.0),
                           (987987987,30,5.0),
                           (987654321,30,20.0),
                           (987654321,20,15.0),
                           (888665555,20,'NULL');
create table PROJECT(Pname char(20),Pnumber int,PRIMARY KEY(Pnumber),Plocation char(10),Dnum int);
insert into PROJECT values('ProductX',1,'Bellaire',5),
                          ('ProductY',2,'Sugarland',5),
                          ('ProductZ',3,'Houston',5),
                          ('Computerization',10,'Stafford',4),
                          ('Reorganization',20,'Houston',1),
                          ('Newbenefits',30,'Stafford',4);
create table DEPENDENT(Essn int,Dependent_name char(10),PRIMARY KEY(Essn,Dependent_name),Sex char(1),Bdate date,Relationship char(10));
insert into DEPENDENT values(333445555,'Alice','F','1986-04-05','Daughter'),
	                        (333445555,'Theodore','M','1983-10-25','Son'),
	                        (333445555,'Joy','F','1958-05-03','Spouse'),
	                        (987654321,'Abner','M','1942-02-28','Spouse'),
	                        (123456789,'Michael','M','1988-01-04','Son'),
	                        (123456789,'Alice','F','1988-12-30','Daughter'),
                            (123456789,'Elizabeth','F','1967-05-05','Spouse');
show tables;
show database;
select * from EMPLOYEE;
select * from DEPARTMENT;
select * from DEPT_LOCATION;
select * from WORKS_ON;
select * from PROJECT;
select * from DEPENDENT;
delete from EMPLOYEE;
delete from DEPARTMENT;
delete from DEPT_LOCATION;
delete from WORKS_ON;
delete from PROJECT;
delete from DEPENDENT;