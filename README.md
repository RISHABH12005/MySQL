# *MySQL*

## *Intro*
An open-source relational database management system (RDBMS) that is widely used for managing structured data. It is known for its speed, reliability, ease of use, making it popular in web applications, enterprise systems, cloud services.

---

## *Key Features*
- *Relational Database*: Uses structured tables with relationships between them.
- *SQL Support*: Uses Structured Query Language (SQL) for querying & managing data.
- *High Performance*: Optimized for speed & efficiency, especially for read-heavy workloads.
- *Scalability*: Supports large databases & can handle thousands of queries per second.
- *Security*: Offers robust authentication, access control, & encryption mechanisms.
- *Replication & Clustering*: Supports data replication for redundancy & high availability.
- *Cross-Platform Compatibility*: Runs on Windows, Linux, macOS, cloud environments.

---

## *Core Concepts*

### *1. Databases & Tables*
- A *database* is a structured collection of data.
- A *table* stores records in rows and columns, similar to a spreadsheet.
- Tables consist of *columns* (fields) & *rows* (records).

### *2. Data Types*
- *Numeric*: INT, FLOAT, DECIMAL, BIGINT
- *String*: VARCHAR, TEXT, CHAR
- *Date & Time*: DATE, DATETIME, TIMESTAMP
- *Boolean*: TINYINT (0 or 1 for true/false values)

### *3. Commands*
#### *Data Manipulation Language (DML)*
- `SELECT` – Retrieve data from a table.
- `INSERT` – Add new records to a table.
- `UPDATE` – Modify existing records.
- `DELETE` – Remove records from a table.

#### *Data Definition Language (DDL)*
- `CREATE TABLE` – Define a new table.
- `ALTER TABLE` – Modify an existing table.
- `DROP TABLE` – Delete a table.
- `TRUNCATE TABLE` – Remove all records but keep the structure.

#### *Data Control Language (DCL)*
- `GRANT` – Provide user access privileges.
- `REVOKE` – Remove user access privileges.

#### *Transaction Control Language (TCL)*
- `COMMIT` – Save a transaction permanently.
- `ROLLBACK` – Undo changes in a transaction.
- `SAVEPOINT` – Set a checkpoint in a transaction.

---

## *Normalization*
Normalization is the process of structuring a database to reduce redundancy and improve integrity.
- *1NF (First Normal Form)*: Ensures atomicity (no repeating groups in a column).
- *2NF (Second Normal Form)*: Removes partial dependencies.
- *3NF (Third Normal Form)*: Eliminates transitive dependencies.
- *BCNF (Boyce-Codd Normal Form)*: A stricter version of 3NF.

---

## *Indexes & Performance Optimization*
- Indexes speed up queries by allowing faster data retrieval.
- Types of indexes:
  - *Primary Index*: Automatically created on primary keys.
  - *Unique Index*: Ensures column values are unique.
  - *Full-text Index*: Optimized for text searching.
  - *Composite Index*: Combines multiple columns for better search performance.

---

## *Joins*
Joins allow combining data from multiple tables based on relationships.
- *INNER JOIN*: Returns matching records from both tables.
- *LEFT JOIN*: Returns all records from the left table & matching ones from the right.
- *RIGHT JOIN*: Returns all records from the right table & matching ones from the left.
- *FULL JOIN*: Returns all records from both tables (not supported in MySQL but can be simulated with UNION).
- *CROSS JOIN*: Produces a Cartesian product of both tables.

---

## *Stored Procedures & Triggers*
- *Stored Procedures*: Predefined SQL scripts stored in the database, improving performance & security.
- *Triggers*: Automatic execution of SQL operations when certain conditions are met (e.g., before/after insert, update, delete).

---

## *Security*
- Use *strong passwords* for database users.
- Implement *role-based access control (RBAC)* to limit privileges.
- Enable *SSL encryption* for secure data transmission.
- Regularly *backup* databases to prevent data loss.
- Use *parameterized queries* to prevent SQL injection attacks.

