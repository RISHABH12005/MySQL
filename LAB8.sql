/* using the Cascade Delete in my sql
+----------------------+
| Tables_in_cascadedel |
+----------------------+
| department           |
| student              |
+----------------------+
+-----+-------+
| dno | dname |
+-----+-------+
|   1 | CSE   |
|   2 | ECE   |
|   3 | MEC   |
+-----+-------+
+-----+------+------+
| eno | name | dnum |
+-----+------+------+
| 123 | A    |    1 |
| 124 | B    |    1 |
| 125 | C    |    2 |
| 126 | D    |    3 |
+-----+------+------+
*/
create database cascadedel;
use cascadedel;
create table department(dno int primary key,dname char(3));
insert into department values(1,'CSE'),
	                         (2,'ECE'),
	                         (3,'MEC');
create table student(eno int primary key,name varchar(30),dnum int,foreign key(dnum)references department(dno));
insert into student values(123,'A',1),
	                      (124,'B',1),
	                      (125,'C',2),
	                      (126,'D',3),
	                      (127,'E',3);
show tables;
select*from department;
select*from student;

delete from student where eno=127;
delete from department where dno=3;
create table student(eno int primary key,name varchar(30),dnum int,foreign key(dnum)references department(dno)on CASCADE delete);
/*

+------+------+
| DNA  | DNO  |
+------+------+
| cse  |    1 |
| mec  |    4 |
| ece  |    6 |
| civ  |    5 |
| che  |    3 |
+------+------+

*/
create database Casdel;
use Casdel;
CREATE TABLE Depa(DNA VARCHAR(50),DNO INT  PRIMARY KEY);
INSERT INTO Depa VALUES('cse', 1),
                       ('mec', 4),
                       ('ece', 6),
                       ('civ', 5),
                       ('che', 3);
CREATE TABLE pupil(NAME VARCHAR(50),ENO INT PRIMARY KEY,DNO INT,FOREIGN KEY (DNO) REFERENCES Depa(DNO));
INSERT INTO pupil VALUES('nayan', 1234, 1),
                        ('alap', 1238, 6),
                        ('harshit', 1236, 4),
                        ('harshit', 1237, 5),
                        ('raj', 1235, 3),
                        ('sagar', 3456, 3);
show tables;

select * from depa;
select * from pupil;
ALTER TABLE student ADD CONSTRAINT stu_pk PRIMARY KEY(name);
alter table pupil add constraint p_fk foreign key (dno) references depa(dno) on delete cascade;
insert into pupil values('nayan',123,12);
alter table pupil drop constraint p_fk;
alter table pupil add constraint p_fk foreign key (dno) references depa(dno) on delete cascade;
insert into depa values('cse',1),
                       ('che',3),
                       ('mec',4),
                       ('ece',6),
                       ('civ',5);
insert into pupil values('nayan',1234,12),
                        ('nayan',1234,1),
                        ('raj',1235,2),
                        ('raj',1235,3),
                        ('harshit',1236,4),
                        ('harshit',1237,5),
                        ('alap',1238,6),
                        ('alp',1239,7);
delete from depa where dname = 'che';

/*
+-------------------+
| Tables_in_casdel1 |
+-------------------+
| course            |
| enroll            |
| student           |
+-------------------+
+-----+-------+------+
| sno | sname | age  |
+-----+-------+------+
|   1 | ankit |   17 |
|   2 | Ramya |   18 |
|   3 | ram   |   16 |
+-----+-------+------+
+-----+-------+
| cno | cname |
+-----+-------+
| 101 | c     |
| 102 | c++   |
| 103 | dbms  |
+-----+-------+
+-----+-----+------------+
| sno | cno | jdate      |
+-----+-----+------------+
|   1 | 101 | 2021-06-05 |
|   1 | 102 | 2021-06-04 |
|   2 | 103 | 2021-06-03 |
+-----+-----+------------+
*/
Create database Casdel1;
Use casdel1;
CREATE TABLE Student (sno INT PRIMARY KEY, sname VARCHAR(20), age INT);
INSERT INTO Student VALUES(1,'Ankit',17),
                          (2,'Ramya',18),
                          (3,'Ram',16);
CREATE TABLE Course (cno INT PRIMARY KEY, cname VARCHAR(20));
INSERT INTO Course VALUES(101,'c'),
                         (102,'c++'),
                         (103,'DBMS');
CREATE TABLE Enroll (sno INT,cno INT,jdate date, PRIMARY KEY(sno,cno),FOREIGN KEY(sno) REFERENCES Student(sno) ON DELETE CASCADE,FOREIGN KEY(cno) REFERENCES Course(cno) ON DELETE CASCADE);
INSERT INTO Enroll VALUES(1, 101, '2021-06-05'),
                         (1, 102, '2021-06-04'),
                         (2, 103, '2021-06-03');
show tables;
select*from Student;
select*from Course;
select*from Enroll;

DELETE FROM Student WHERE sname="Ramya";
select * from enroll;