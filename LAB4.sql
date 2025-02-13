/*
Using MySQL Create the Database CrossProduct
+------------------------+
| Tables_in_crossproduct |
+------------------------+
| bonus                  |
| dept                   |
| emp                    |
| salegrade              |
+------------------------+
+-------+--------+-----------+------+-----------+------+------+--------+
| EMPNO | ENAME  | JOB       | MRG  | HIREDATE  | SAL  | COMM | DEPTNO |
+-------+--------+-----------+------+-----------+------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 17-DEC-80 |  800 |    0 |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 20-FEB-81 | 1600 |  300 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 22-FEB-81 | 1250 |  500 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 02-APR-81 | 2975 |    0 |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 28-SEP-81 | 1250 | 1400 |     30 |
|  7698 | BLARK  | MANAGER   | 7839 | 01-MAY-81 | 2850 |    0 |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 09-JUN-81 | 2450 |    0 |     10 |
|  7788 | SCORT  | ANALYST   | 7566 | 19-APR-87 | 3000 |    0 |     20 |
|  7839 | KING   | PRESIDENT |    0 | 17-NOV-81 | 5000 |    0 |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 08-SEP-81 | 1500 |    0 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 23-MAY-87 | 1100 |    0 |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 03-DEC-81 |  950 |    0 |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 03-DEC-81 | 3000 |    0 |     20 |
|  7934 | MILLEN | CLERN     | 7782 | 23-JAN-82 | 1300 |    0 |     10 |
+-------+--------+-----------+------+-----------+------+------+--------+
+--------+-----------+------+------+
| ENAME  | JOB       | SAL  | COMM |
+--------+-----------+------+------+
| SMITH  | CLERK     |  800 |    0 |
| ALLEN  | SALESMAN  | 1600 |  300 |
| WARD   | SALESMAN  | 1250 |  500 |
| JONES  | MANAGER   | 2975 |    0 |
| MARTIN | SALESMAN  | 1250 | 1400 |
| BLARK  | MANAGER   | 2850 |    0 |
| CLARK  | MANAGER   | 2450 |    0 |
| SCORT  | ANALYST   | 3000 |    0 |
| KING   | PRESIDENT | 5000 |    0 |
| TURNER | SALESMAN  | 1500 |    0 |
| ADAMS  | CLERK     | 1100 |    0 |
| JAMES  | CLERK     |  950 |    0 |
| FORD   | ANALYST   | 3000 |    0 |
| MILLEN | CLERN     | 1300 |    0 |
+--------+-----------+------+------+
+--------+------------+----------+
| DEPTNO | DNAME      | LOC      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
+-------+-------+-------+
| GRADE | LOSAL | HISAL |
+-------+-------+-------+
|     1 |   700 |  1200 |
|     2 |  1201 |  1400 |
|     3 |  1401 |  2000 |
|     4 |  2001 |  3000 |
|     5 |  3001 |  9999 |
+-------+-------+-------+
*/
create database CrossProduct;
use CrossProduct;
create table EMP(EMPNO int,ENAME char(7),JOB char(10),MRG int,HIREDATE varchar(10),SAL int,COMM int,DEPTNO int);
insert into EMP values(7369,'SMITH','CLERK',7902,'17-DEC-80',800,0,20),
	                  (7499,'ALLEN','SALESMAN',7698,'20-FEB-81',1600,300,30),
	                  (7521,'WARD','SALESMAN',7698,'22-FEB-81',1250,500,30),
	                  (7566,'JONES','MANAGER',7839,'02-APR-81',2975,0,20),
                      (7654,'MARTIN','SALESMAN',7698,'28-SEP-81',1250,1400,30),
	                  (7698,'BLARK','MANAGER',7839,'01-MAY-81',2850,0,30),
                      (7782,'CLARK','MANAGER',7839,'09-JUN-81',2450,0,10),
	                  (7788,'SCORT','ANALYST',7566,'19-APR-87',3000,0,20),
	                  (7839,'KING','PRESIDENT',0,'17-NOV-81',5000,0,10),
	                  (7844,'TURNER','SALESMAN',7698,'08-SEP-81',1500,0,30),
	                  (7876,'ADAMS','CLERK',7788,'23-MAY-87',1100,0,20),
	                  (7900,'JAMES','CLERK',7698,'03-DEC-81',950,0,30),
	                  (7902,'FORD','ANALYST',7566,'03-DEC-81',3000,0,20),
	                  (7934,'MILLEN','CLERN',7782,'23-JAN-82',1300,0,10);
create table BONUS(ENAME char(7),JOB char(10),SAL int,COMM int);
insert into BONUS values('SMITH','CLERK',800,0),
	                    ('ALLEN','SALESMAN',1600,300),
   	                    ('WARD','SALESMAN',1250,500),
	                    ('JONES','MANAGER',2975,0),
	                    ('MARTIN','SALESMAN',1250,1400),
	                    ('BLARK','MANAGER',2850,0),
                        ('CLARK','MANAGER',2450,0),
                        ('SCORT','ANALYST',3000,0),
	                    ('KING','PRESIDENT',5000,0),
	                    ('TURNER','SALESMAN',1500,0),
	                    ('ADAMS','CLERK',1100,0),
	                    ('JAMES','CLERK',950,0),
	                    ('FORD','ANALYST',3000,0),
                        ('MILLEN','CLERN',1300,0);
create table DEPT(DEPTNO int,DNAME char(12),LOC char(10));
insert into DEPT values(10,'ACCOUNTING','NEW YORK'),
                       (20,'RESEARCH','DALLAS'),
                       (30,'SALES','CHICAGO'),
                       (40,'OPERATIONS','BOSTON');
create table SALEGRADE(GRADE int,LOSAL int,HISAL int);
insert into SALEGRADE values(1,700,1200),
	                        (2,1201,1400),
	                        (3,1401,2000),
	                        (4,2001,3000),
	                        (5,3001,9999);
show tables;
show database;
select*from EMP;
select*from DEPT;
select*from BONUS;
select*from EMP where SAL>=1200;
select*from EMP where SAL>=1500;
select*from EMP where SAL between 1000 and 2000;
select*from EMP where SAL in(1000,2000,3000);
select*from EMP where SAL>3000 and SAL<5000;
select*from EMP where SAL>1000 and SAL<3000;
select*from EMP where order by DEPTNO;
select*from EMP where order by DEPTNO desc;
select*from EMP where order by DEPTNO,SAL;
select ENAME,DEPTNO,SAL from EMP where order by DEPTNO,SAL;
select count(*) from EMP;
select distinct DEPTNO from EMP;
select count(distinct DEPTNO) from EMP;
select max(SAL) from EMP;
select max(SAL) MAXIMUM from EMP;
select avg(SAL) from EMP;
select sum(SAL) from EMP;
select DEPTNO,max(SAL) from EMP group by DEPTNO;
select DEPTNO max(SAL) from EMP group by DEPTNO order by DEPTNO;
select DEPTNO,max(SAL) from EMP group by DEPTNO order by DEPTNO desc;
select DEPTNO,avg(SAL) from EMP group by DEPTNO;
select*from EMP where ENAME like'a%';
select*from EMP where ENAME like'A%';
select*from EMP where ENAME like'_A%';
select*from EMP where ENAME like'%N%';
desc EMP;
desc BONUS;
desc DEPT;
select count(ENAME),deptno from EMP group by DEPTNO;
select ENAME from EMP union select DNAME from DEPT;