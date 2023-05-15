mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| student            |
+--------------------+
4 rows in set (0.00 sec)

mysql> create database Bank;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bank               |
| information_schema |
| mysql              |
| performance_schema |
| student            |
+--------------------+
5 rows in set (0.00 sec)

mysql> use Bank;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> CREATE TABLE Branch (Branch_name VARCHAR(50), Branch_id VARCHAR(50), address VARCHAR(100));
Query OK, 0 rows affected (0.01 sec)

mysql> show tables;
+----------------+
| Tables_in_bank |
+----------------+
| branch         |
+----------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE Customer ( Branch_id VARCHAR(50), customer_name VARCHAR(50), customer_id VARCHAR(50), address VARCHAR(100), ph_no VARCHAR(20),age INT);
Query OK, 0 rows affected (0.01 sec)


mysql> CREATE TABLE Account (holder_name VARCHAR(50), customer_id VARCHAR(50), acc_no VARCHAR(50), balance DECIMAL(10,2), acc_type VARCHAR(20));
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE Loan (Borrower_name VARCHAR(50), customer_id VARCHAR(50), loan_acc_no VARCHAR(50), amount DECIMAL(10,2), loan_type VARCHAR(20));
Query OK, 0 rows affected (0.01 sec)


mysql> show tables;
+----------------+
| Tables_in_bank |
+----------------+
| account        |
| branch         |
| customer       |
| loan           |
+----------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO Branch (Branch_name, Branch_id, address)
    -> VALUES
    ->     ('SBI Delhi', 'B001', 'Lok Kalyan Marg, New Delhi'),
    ->     ('SBI Delhi', 'B002', ' North Block New Delhi'),
    ->     ('SBI NCR', 'B003', 'Akbar Road, New Delhi'),
    ->     ('SBI Carol Bagh', 'B004', 'Lok Nayak Bhawan, Khan Market, New Delhi'),
    ->     ('SBI Noida', 'B005', 'KASTURBA GANDHI MARG, NEW DELHI');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from branch;
+----------------+-----------+------------------------------------------+
| Branch_name    | Branch_id | address                                  |
+----------------+-----------+------------------------------------------+
| SBI Delhi      | B001      | Lok Kalyan Marg, New Delhi               |
| SBI Delhi      | B002      | North Block New Delhi                   |
| SBI NCR        | B003      | Akbar Road, New Delhi                    |
| SBI Carol Bagh | B004      | Lok Nayak Bhawan, Khan Market, New Delhi |
| SBI Noida      | B005      | KASTURBA GANDHI MARG, NEW DELHI          |
+----------------+-----------+------------------------------------------+
5 rows in set (0.00 sec)

mysql> INSERT INTO Customer (Branch_id, customer_name, customer_id, address, ph_no, age)
    -> VALUES
    ->     ('B001', 'Narendra Modi', 'C001', 'Lok Kalyan Marg, New Delhi', '555-1234', 75),
    ->     ('B002', 'Amit Saha', 'C002', 'North Block New Delhi', '555-5678', 65),
    ->     ('B003', 'Rajnath Singh', 'C003', 'Akbar Road, New Delhi', '555-9876', 78),
    ->     ('B004', 'Kiran Ranju', 'C004', 'Lok Nayak Bhawan, Khan Market', '555-4321', 62),
    ->     ('B005', 'Sarbananda Sonowal', 'C005', 'KASTURBA GANDHI MARG, NEW DELHI', '555-8765', 64);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from customer;
+-----------+--------------------+-------------+---------------------------------+----------+------+
| Branch_id | customer_name      | customer_id | address                         | ph_no    | age  |
+-----------+--------------------+-------------+---------------------------------+----------+------+
| B001      | Narendra Modi      | C001        | Lok Kalyan Marg, New Delhi      | 555-1234 |   75 |
| B002      | Amit Saha          | C002        | North Block New Delhi           | 555-5678 |   65 |
| B003      | Rajnath Singh      | C003        | Akbar Road, New Delhi           | 555-9876 |   78 |
| B004      | Kiran Ranju        | C004        | Lok Nayak Bhawan, Khan Market   | 555-4321 |   62 |
| B005      | Sarbananda Sonowal | C005        | KASTURBA GANDHI MARG, NEW DELHI | 555-8765 |   64 |
+-----------+--------------------+-------------+---------------------------------+----------+------+
5 rows in set (0.00 sec)

mysql> INSERT INTO Account (holder_name, customer_id, acc_no, balance, acc_type)
    -> VALUES
    ->     ('Narendra Modi', 'C001', 'A001', 500000.00, 'Savings'),
    ->     ('Amit Saha', 'C002', 'A002', 100000.00, 'Fixed'),
    ->     ('Rajnath Singh', 'C003', 'A003', 750000.00, 'Savings'),
    ->     ('Kiran Ranju', 'C004', 'A004', 250000.00, 'Fixed'),
    ->     ('Sarbananda Sonowal', 'C005', 'A005', 150000.00, 'Savings');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from account;
+--------------------+-------------+--------+-----------+----------+
| holder_name        | customer_id | acc_no | balance   | acc_type |
+--------------------+-------------+--------+-----------+----------+
| Narendra Modi      | C001        | A001   | 500000.00 | Savings  |
| Amit Saha          | C002        | A002   | 100000.00 | Fixed    |
| Rajnath Singh      | C003        | A003   | 750000.00 | Savings  |
| Kiran Ranju        | C004        | A004   | 250000.00 | Fixed    |
| Sarbananda Sonowal | C005        | A005   | 150000.00 | Savings  |
+--------------------+-------------+--------+-----------+----------+
5 rows in set (0.00 sec)

mysql> INSERT INTO Loan (Borrower_name, customer_id, loan_acc_no, amount, loan_type)
    -> VALUES
    ->     ('Narendra Modi', 'C001', 'L001', 10000.00, 'Personal Loan'),
    ->     ('Amit Saha', 'C002', 'L002', 5000.00, 'Car Loan'),
    ->     ('Rajnath Singh', 'C003', 'L003', 7500.00, 'Home Loan'),
    ->     ('Kiran Ranju', 'C004', 'L004', 15000.00, 'Business Loan'),
    ->     ('Sarbananda Sonowal', 'C005', 'L005', 20000.00, 'Education Loan');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from loan;
+--------------------+-------------+-------------+----------+----------------+
| Borrower_name      | customer_id | loan_acc_no | amount   | loan_type      |
+--------------------+-------------+-------------+----------+----------------+
| Narendra Modi      | C001        | L001        | 10000.00 | Personal Loan  |
| Amit Saha          | C002        | L002        |  5000.00 | Car Loan       |
| Rajnath Singh      | C003        | L003        |  7500.00 | Home Loan      |
| Kiran Ranju        | C004        | L004        | 15000.00 | Business Loan  |
| Sarbananda Sonowal | C005        | L005        | 20000.00 | Education Loan |
+--------------------+-------------+-------------+----------+----------------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE branch
    -> ADD PRIMARY KEY (Branch_id);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE customer
    -> ADD FOREIGN KEY (Branch_id)
    -> REFERENCES branch(Branch_id);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO branch (Branch_name, Branch_id, address)
    -> VALUES
    ->   ('SBI Mumbai', 'B006', 'Cuffe Parade, Mumbai'),
    ->   ('SBI Kolkata', 'B007', 'Park Street, Kolkata'),
    ->   ('SBI Bengaluru', 'B008', 'MG Road, Bengaluru');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0


--1.  Insert few records in each relations.
mysql> INSERT INTO account (holder_name, customer_id, acc_no, balance, acc_type)
    -> VALUES
    ->   ('Ravi Kumar', 'C006', 'A006', 10000.00, 'Savings'),
    ->   ('Shreya Singh', 'C007', 'A007', 5000.00, 'Fixed'),
    ->   ('Aryan Gupta', 'C008', 'A008', 75000.00, 'Savings');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO customer (Branch_id, customer_name, customer_id, address, ph_no, age)
    -> VALUES
    ->   ('B006', 'Ravi Kumar', 'C006', 'Cuffe Parade, Mumbai', '555-3456', 35),
    ->   ('B007', 'Shreya Singh', 'C007', 'Park Street, Kolkata', '555-7890', 27),
    ->   ('B008', 'Aryan Gupta', 'C008', 'MG Road, Bengaluru', '555-2345', 42);
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO loan (Borrower_name, customer_id, loan_acc_no, amount, loan_type)
    -> VALUES
    ->   ('Ravi Kumar', 'C006', 'L001', 5000.00, 'Personal Loan'),
    ->   ('Shreya Singh', 'C007', 'L002', 10000.00, 'Car Loan'),
    ->   ('Aryan Gupta', 'C008', 'L003', 75000.00, 'Home Loan');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0


--2. Find the address of the branch with Branch_id=B004
mysql> SELECT address FROM branch WHERE Branch_id = 'B004';
+------------------------------------------+
| address                                  |
+------------------------------------------+
| Lok Nayak Bhawan, Khan Market, New Delhi |
+------------------------------------------+
1 row in set (0.00 sec)


--3. Find the name of the customer with maximum loan.
mysql> SELECT customer.customer_name
    -> FROM customer
    -> INNER JOIN loan ON customer.customer_id = loan.customer_id
    -> WHERE loan.amount = (SELECT MAX(amount) FROM loan);
+---------------+
| customer_name |
+---------------+
| Aryan Gupta   |
+---------------+
1 row in set (0.00 sec)

--4. Modify the address of the customer with name “Ravi Kumar”
mysql> UPDATE customer SET address = 'Noida, Delhi' WHERE customer_name = 'Ravi Kumar';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from customer;
+-----------+--------------------+-------------+---------------------------------+----------+------+
| Branch_id | customer_name      | customer_id | address                         | ph_no    | age  |
+-----------+--------------------+-------------+---------------------------------+----------+------+
| B001      | Narendra Modi      | C001        | Lok Kalyan Marg, New Delhi      | 555-1234 |   75 |
| B002      | Amit Saha          | C002        | North Block New Delhi           | 555-5678 |   65 |
| B003      | Rajnath Singh      | C003        | Akbar Road, New Delhi           | 555-9876 |   78 |
| B004      | Kiran Ranju        | C004        | Lok Nayak Bhawan, Khan Market   | 555-4321 |   62 |
| B005      | Sarbananda Sonowal | C005        | KASTURBA GANDHI MARG, NEW DELHI | 555-8765 |   64 |
| B006      | Ravi Kumar         | C006        | Noida, Delhi                    | 555-3456 |   35 |
| B007      | Shreya Singh       | C007        | Park Street, Kolkata            | 555-7890 |   27 |
| B008      | Aryan Gupta        | C008        | MG Road, Bengaluru              | 555-2345 |   42 |
+-----------+--------------------+-------------+---------------------------------+----------+------+
8 rows in set (0.00 sec)

--5. Check the account balance of the customer with name "Narendra Modi”
mysql> SELECT balance FROM account WHERE holder_name = 'Narendra Modi';
+-----------+
| balance   |
+-----------+
| 500000.00 |
+-----------+
1 row in set (0.00 sec)

--6. Count the number of ‘savings’ account in the bank
mysql> SELECT COUNT(*) FROM account WHERE acc_type = 'Savings';
+----------+
| COUNT(*) |
+----------+
|        5 |
+----------+
1 row in set (0.00 sec)

--7. Display the customers name whose address is “North Block New Delhi ” and Branch_name is “SBI Delhi”
mysql> SELECT customer_name FROM customer
    -> JOIN branch ON customer.Branch_id = branch.Branch_id
    -> WHERE customer.address = 'North Block New Delhi' AND branch.Branch_name = 'SBI Delhi';
+---------------+
| customer_name |
+---------------+
| Amit Saha     |
+---------------+

--8. Here's the SQL query to display the customer name where loan_type is "Personal Loan" or Borrower_name is "Narendra Modi":
mysql> SELECT customer.customer_name
    -> FROM loan
    -> INNER JOIN customer ON loan.customer_id = customer.customer_id
    -> WHERE loan_type = 'Personal Loan' OR Borrower_name = 'Narendra Modi';
+---------------+
| customer_name |
+---------------+
| Narendra Modi |
| Ravi Kumar    |
+---------------+
2 rows in set (0.00 sec)

--9. Display the customers name whose balance is not 10000
mysql> SELECT holder_name
    -> FROM account
    -> WHERE balance != 10000;
+--------------------+
| holder_name        |
+--------------------+
| Narendra Modi      |
| Amit Saha          |
| Rajnath Singh      |
| Kiran Ranju        |
| Sarbananda Sonowal |
| Shreya Singh       |
| Aryan Gupta        |
+--------------------+
7 rows in set (0.00 sec)

--10. List the account balance in ascending and descending order.
mysql> SELECT balance
    -> FROM account
    -> ORDER BY balance ASC;
+-----------+
| balance   |
+-----------+
|   5000.00 |
|  10000.00 |
|  75000.00 |
| 100000.00 |
| 150000.00 |
| 250000.00 |
| 500000.00 |
| 750000.00 |
+-----------+
8 rows in set (0.00 sec)

mysql> SELECT balance
    -> FROM account
    -> ORDER BY balance DESC;
+-----------+
| balance   |
+-----------+
| 750000.00 |
| 500000.00 |
| 250000.00 |
| 150000.00 |
| 100000.00 |
|  75000.00 |
|  10000.00 |
|   5000.00 |
+-----------+
8 rows in set (0.00 sec)