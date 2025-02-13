# Using Database from Compnay_231B264 (LAB3) Write the following Quires.

# Retrieve Department number and maximum salary of the department from Employee Table.
SELECT Dno,MAX(Salary)AS MaxSalary FROM Employee GROUP BY Dno;
/* Output :-
+------+-----------+
| Dno  | MaxSalary |
+------+-----------+
|    5 |     40000 |
|    1 |     55000 |
|    4 |     43000 |
+------+-----------+ */

# Retrieve Department number and maximum salary of the department from Employee Table and order records in descending order of department numbers.
SELECT Dno,MAX(Salary)AS MaxSalary FROM Employee GROUP BY Dno ORDER BY Dno DESC;
/* Output:-
+------+-----------+
| Dno  | MaxSalary |
+------+-----------+
|    5 |     40000 |
|    4 |     43000 |
|    1 |     55000 |
+------+-----------+ */

# Retrieve numbers of employee working for each department.
SELECT Dno,COUNT(*)AS Noemp FROM Employee GROUP BY Dno;
/* Output:-
+------+-------+
| Dno  | Noemp |
+------+-------+
|    5 |     4 |
|    1 |     1 |
|    4 |     3 |
+------+-------+ */

# Retrieve all such department and numbers of employee if numbers of employees in the department is greater than 3.
SELECT Dno,COUNT(*)AS Noemp FROM Employee GROUP BY Dno HAVING COUNT(*) > 3;
/* Ouput:-
+------+-------+
| Dno  | Noemp |
+------+-------+
|    5 |     4 |
+------+-------+ */

# Display project wise working hours.
SELECT Pno,SUM(hours)FROM works_on GROUP BY Pno;
/* Output:-
+-----+------------+
| Pno | SUM(hours) |
+-----+------------+
|   1 |       52.5 |
|   2 |       37.5 |
|   3 |         50 |
|  10 |         55 |
|  20 |         25 |
|  30 |         55 |
+-----+------------+ */

# Retrive project number with least total working hours.
SELECT Pno,SUM(hours)FROM project GROUP BY Pno ORDER BY hours ASC LIMIT 1;
/* Output:-

*/

/* Retrieve Department wise total salary of male employees if  total salary of department is greater than 30000.
Arrage all records in descending order of department number. */
SELECT Dno, SUM(salary) AS totsalary FROM employee WHERE sex = 'M' GROUP BY Dno HAVING totsalary > 30000 ORDER BY Dno DESC;
/* Output:-
+------+-----------+
| Dno  | totsalary |
+------+-----------+
|    5 |    108000 |
|    1 |     55000 |
+------+-----------+ */
