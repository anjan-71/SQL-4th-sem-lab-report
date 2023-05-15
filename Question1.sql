mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| assignment         |
| gov                |
| information_schema |
| mysql              |
| performance_schema |
| student            |
| teacher            |
+--------------------+
7 rows in set (0.00 sec)

mysql> drop database student;
Query OK, 4 rows affected (0.01 sec)

mysql> drop database teacher;
Query OK, 4 rows affected (0.01 sec)

mysql> create database student;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| assignment         |
| gov                |
| information_schema |
| mysql              |
| performance_schema |
| student            |
+--------------------+
6 rows in set (0.00 sec)

mysql> use student;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> CREATE TABLE Personal_Details (name VARCHAR(20), address VARCHAR(100), ph_no VARCHAR(20),father_name VARCHAR(20), age INT);
Query OK, 0 rows affected (0.01 sec)

mysql> show tables;
+-------------------+
| Tables_in_student |
+-------------------+
| personal_details  |
+-------------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE Class_Details (name VARCHAR(20), class_start_date DATE, roll_no VARCHAR(20), branch VARCHAR(20), semester VARCHAR(20), ph_no VARCHAR(20));
Query OK, 0 rows affected (0.01 sec)

mysql> show tables;
+-------------------+
| Tables_in_student |
+-------------------+
| class_details     |
| personal_details  |
+-------------------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE Exam_Details (roll_no VARCHAR(20), exam_name VARCHAR(30), hall_no INT);
Query OK, 0 rows affected (0.01 sec)

mysql> show tables;
+-------------------+
| Tables_in_student |
+-------------------+
| class_details     |
| exam_details      |
| personal_details  |
+-------------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE Marks_Details (roll_no VARCHAR(20), exam_name VARCHAR(30), subject_code VARCHAR(10), total_marks INT, marks_obtained INT);
Query OK, 0 rows affected (0.01 sec)

mysql> show tables;
+-------------------+
| Tables_in_student |
+-------------------+
| class_details     |
| exam_details      |
| marks_details     |
| personal_details  |
+-------------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO Personal_Details (name, address, ph_no, father_name, age)
    -> VALUES ('Manas', 'Tezpur, Assam', '123-456-7890', 'Rohit', 20);
Query OK, 1 row affected (0.00 sec)

mysql> select *from personal_details;
+-------+---------------+--------------+-------------+------+
| name  | address       | ph_no        | father_name | age  |
+-------+---------------+--------------+-------------+------+
| Manas | Tezpur, Assam | 123-456-7890 | Rohit       |   20 |
+-------+---------------+--------------+-------------+------+
1 row in set (0.00 sec)

mysql> INSERT INTO Personal_Details (name, address, ph_no, father_name, age)
    -> VALUES ('Mohit', 'Moran, Assam', '555-555-5555', 'Himen', 22);
Query OK, 1 row affected (0.00 sec)

mysql> select *from personal_details;
+-------+---------------+--------------+-------------+------+
| name  | address       | ph_no        | father_name | age  |
+-------+---------------+--------------+-------------+------+
| Manas | Tezpur, Assam | 123-456-7890 | Rohit       |   20 |
| Mohit | Moran, Assam  | 555-555-5555 | Himen       |   22 |
+-------+---------------+--------------+-------------+------+
2 rows in set (0.00 sec)

mysql> INSERT INTO Class_Details (name, class_start_date, roll_no, branch, semester, ph_no)
    -> VALUES ('Manas', '2021-08-01', 'CSE21-01', 'Computer Science', '3rd Semester', '123-456-7890');
Query OK, 1 row affected (0.00 sec)

mysql> select *from class_details;
+-------+------------------+----------+------------------+--------------+--------------+
| name  | class_start_date | roll_no  | branch           | semester     | ph_no        |
+-------+------------------+----------+------------------+--------------+--------------+
| Manas | 2021-08-01       | CSE21-01 | Computer Science | 3rd Semester | 123-456-7890 |
+-------+------------------+----------+------------------+--------------+--------------+
1 row in set (0.00 sec)

mysql> INSERT INTO Class_Details (name, class_start_date, roll_no, branch, semester, ph_no)
    -> VALUES ('Mohit', '2021-08-01', 'ECE21-01', 'Electronics', '4th semester', '555-555-5555');
Query OK, 1 row affected (0.00 sec)

mysql> select *from class_details;
+-------+------------------+----------+------------------+--------------+--------------+
| name  | class_start_date | roll_no  | branch           | semester     | ph_no        |
+-------+------------------+----------+------------------+--------------+--------------+
| Manas | 2021-08-01       | CSE21-01 | Computer Science | 3rd Semester | 123-456-7890 |
| Mohit | 2021-08-01       | ECE21-01 | Electronics      | 4th semester | 555-555-5555 |
+-------+------------------+----------+------------------+--------------+--------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO Exam_Details (roll_no, exam_name, hall_no)
    -> VALUES ('CSE21-01', 'Mid Sem Exam', 101);
Query OK, 1 row affected (0.00 sec)

mysql> select *from exam_details;
+----------+--------------+---------+
| roll_no  | exam_name    | hall_no |
+----------+--------------+---------+
| CSE21-01 | Mid Sem Exam |     101 |
+----------+--------------+---------+
1 row in set (0.00 sec)

mysql> INSERT INTO Exam_Details (roll_no, exam_name, hall_no)
    -> VALUES ('ECE21-01', 'Mid Sem Exam', 102);
Query OK, 1 row affected (0.00 sec)

mysql> select *from exam_details;
+----------+--------------+---------+
| roll_no  | exam_name    | hall_no |
+----------+--------------+---------+
| CSE21-01 | Mid Sem Exam |     101 |
| ECE21-01 | Mid Sem Exam |     102 |
+----------+--------------+---------+
2 rows in set (0.00 sec)

mysql> INSERT INTO Marks_Details (roll_no, exam_name, subject_code, total_marks, marks_obtained)
    -> VALUES ('CSE21-01', 'Mid Sem Exam', 'CS101', 100, 80);
Query OK, 1 row affected (0.00 sec)

mysql> select *from marks_details;
+----------+--------------+--------------+-------------+----------------+
| roll_no  | exam_name    | subject_code | total_marks | marks_obtained |
+----------+--------------+--------------+-------------+----------------+
| CSE21-01 | Mid Sem Exam | CS101        |         100 |             80 |
+----------+--------------+--------------+-------------+----------------+
1 row in set (0.00 sec)

mysql> INSERT INTO Marks_Details (roll_no, exam_name, subject_code, total_marks, marks_obtained)
    -> VALUES ('ECE21-01', 'Mid Sem Exam', 'EC101', 100, 85);
Query OK, 1 row affected (0.00 sec)

mysql> select *from marks_details;
+----------+--------------+--------------+-------------+----------------+
| roll_no  | exam_name    | subject_code | total_marks | marks_obtained |
+----------+--------------+--------------+-------------+----------------+
| CSE21-01 | Mid Sem Exam | CS101        |         100 |             80 |
| ECE21-01 | Mid Sem Exam | EC101        |         100 |             85 |
+----------+--------------+--------------+-------------+----------------+
2 rows in set (0.00 sec)


mysql> ALTER TABLE Personal_Details
    -> ADD PRIMARY KEY (Ph_no);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE class_Details
    -> ADD FOREIGN KEY (ph_no)
    -> REFERENCES personal_Details (ph_no);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc personal_details;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| name        | varchar(20)  | YES  |     | NULL    |       |
| address     | varchar(100) | YES  |     | NULL    |       |
| ph_no       | varchar(20)  | NO   | PRI | NULL    |       |
| father_name | varchar(20)  | YES  |     | NULL    |       |
| age         | int          | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc class_details;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| name             | varchar(20) | YES  |     | NULL    |       |
| class_start_date | date        | YES  |     | NULL    |       |
| roll_no          | varchar(20) | YES  |     | NULL    |       |
| branch           | varchar(20) | YES  |     | NULL    |       |
| semester         | varchar(20) | YES  |     | NULL    |       |
| ph_no            | varchar(20) | YES  | MUL | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> ALTER TABLE exam_Details
    -> ADD PRIMARY KEY (roll_no);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE marks_Details
    -> ADD FOREIGN KEY (roll_no)
    -> REFERENCES exam_Details (roll_no);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc exam_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| roll_no   | varchar(20) | NO   | PRI | NULL    |       |
| exam_name | varchar(30) | YES  |     | NULL    |       |
| hall_no   | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc marks_details;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| roll_no        | varchar(20) | YES  | MUL | NULL    |       |
| exam_name      | varchar(30) | YES  |     | NULL    |       |
| subject_code   | varchar(10) | YES  |     | NULL    |       |
| total_marks    | int         | YES  |     | NULL    |       |
| marks_obtained | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

--1. Retrive everything from the table Personal Details.
mysql> select *from personal_details;
+-------+---------------+--------------+-------------+------+
| name  | address       | ph_no        | father_name | age  |
+-------+---------------+--------------+-------------+------+
| Manas | Tezpur, Assam | 123-456-7890 | Rohit       |   20 |
| Mohit | Moran, Assam  | 555-555-5555 | Himen       |   22 |
+-------+---------------+--------------+-------------+------+
2 rows in set (0.00 sec)

--2. Find the personal details of the student with age=22
mysql> SELECT * FROM Personal_Details WHERE age = 22;
+-------+--------------+--------------+-------------+------+
| name  | address      | ph_no        | father_name | age  |
+-------+--------------+--------------+-------------+------+
| Mohit | Moran, Assam | 555-555-5555 | Himen       |   22 |
+-------+--------------+--------------+-------------+------+
1 row in set (0.00 sec)

--3. Find the class details of the student having roll no CSE21-01
mysql> SELECT * FROM Class_Details WHERE roll_no = 'CSE21-01';
+-------+------------------+----------+------------------+--------------+--------------+
| name  | class_start_date | roll_no  | branch           | semester     | ph_no        |
+-------+------------------+----------+------------------+--------------+--------------+
| Manas | 2021-08-01       | CSE21-01 | Computer Science | 3rd Semester | 123-456-7890 |
+-------+------------------+----------+------------------+--------------+--------------+
1 row in set (0.00 sec)

--4. Calculate the total no. Of class from class start date for all names in the table Class
mysql> SELECT name, DATEDIFF(CURDATE(), class_start_date) AS total_classes
    -> FROM Class_Details;
+-------+---------------+
| name  | total_classes |
+-------+---------------+
| Manas |           652 |
| Mohit |           652 |
+-------+---------------+
2 rows in set (0.00 sec)

--5. Find the address of the student having roll no ECE21-01
mysql> SELECT pd.address
    -> FROM Personal_Details pd
    -> JOIN Class_Details cd ON pd.ph_no = cd.ph_no
    -> WHERE cd.roll_no = 'ECE21-01';
+--------------+
| address      |
+--------------+
| Moran, Assam |
+--------------+
1 row in set (0.00 sec)

--6. Select and Sort by semester in the table Class Details
mysql> SELECT *
    -> FROM Class_Details
    -> ORDER BY semester;
+-------+------------------+----------+------------------+--------------+--------------+
| name  | class_start_date | roll_no  | branch           | semester     | ph_no        |
+-------+------------------+----------+------------------+--------------+--------------+
| Manas | 2021-08-01       | CSE21-01 | Computer Science | 3rd Semester | 123-456-7890 |
| Mohit | 2021-08-01       | ECE21-01 | Electronics      | 4th semester | 555-555-5555 |
+-------+------------------+----------+------------------+--------------+--------------+
2 rows in set (0.00 sec)

--7. Find the student roll no with the maximum age.
mysql> select roll_no from class_details inner join personal_details on class_details.ph_no=personal_details.ph_no where personal_details.age=(select max(age) from personal_details);
+----------+
| roll_no  |
+----------+
| ECE21-01 |
+----------+
1 row in set (0.01 sec)

--8. Find the average age of the student of the same Semester.

mysql> INSERT INTO Personal_Details (name, address, ph_no, father_name, age)
    -> VALUES ('Jeet', 'Dibrugarh, Assam', '123-456-7891', 'Mrinal', 21);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Personal_Details (name, address, ph_no, father_name, age)
    -> VALUES ('Rabi', 'Tinsukia, Assam', '555-555-5551', 'Ghana', 22);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Class_Details (name, class_start_date, roll_no, branch, semester, ph_no)
    -> VALUES ('Manas', '2021-08-01', 'CSE21-02', 'Computer Science', '3rd Semester', '123-456-7891');
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> INSERT INTO Class_Details (name, class_start_date, roll_no, branch, semester, ph_no)
    -> VALUES ('Mohit', '2021-08-01', 'ECE21-02', 'Electronics', '4th semester', '555-555-5551');
Query OK, 1 row affected (0.00 sec)

mysql> select*from personal_details;
+-------+------------------+--------------+-------------+------+
| name  | address          | ph_no        | father_name | age  |
+-------+------------------+--------------+-------------+------+
| Manas | Tezpur, Assam    | 123-456-7890 | Rohit       |   20 |
| Jeet  | Dibrugarh, Assam | 123-456-7891 | Mrinal      |   21 |
| Rabi  | Tinsukia, Assam  | 555-555-5551 | Ghana       |   22 |
| Mohit | Moran, Assam     | 555-555-5555 | Himen       |   22 |
+-------+------------------+--------------+-------------+------+
4 rows in set (0.00 sec)

mysql> select*from class_details;
+-------+------------------+----------+------------------+--------------+--------------+
| name  | class_start_date | roll_no  | branch           | semester     | ph_no        |
+-------+------------------+----------+------------------+--------------+--------------+
| Manas | 2021-08-01       | CSE21-01 | Computer Science | 3rd Semester | 123-456-7890 |
| Manas | 2021-08-01       | CSE21-02 | Computer Science | 3rd Semester | 123-456-7891 |
| Kunal | 2021-08-01       | ECE21-01 | Electronics      | 4th semester | 555-555-5555 |
| Mohit | 2021-08-01       | ECE21-02 | Electronics      | 4th semester | 555-555-5551 |
+-------+------------------+----------+------------------+--------------+--------------+
4 rows in set (0.00 sec)

mysql> SELECT AVG(age) AS avg_age
    -> FROM personal_details
    -> JOIN class_details
    -> ON personal_details.name = class_details.name
    -> WHERE class_details.semester = '3rd Semester';
+---------+
| avg_age |
+---------+
| 20.0000 |
+---------+
1 row in set (0.00 sec)


--9. Find the summation of the marks obtained by a student in different subjects in examination.
mysql> select*from marks_details;
+----------+--------------+--------------+-------------+----------------+
| roll_no  | exam_name    | subject_code | total_marks | marks_obtained |
+----------+--------------+--------------+-------------+----------------+
| CSE21-01 | Mid Sem Exam | CS101        |         100 |             80 |
| ECE21-01 | Mid Sem Exam | EC101        |         100 |             85 |
| CSE21-01 | Mid Sem Exam | CS201        |         100 |             82 |
| ECE21-01 | Mid Sem Exam | EC201        |         100 |             81 |
+----------+--------------+--------------+-------------+----------------+
4 rows in set (0.00 sec)

mysql> SELECT roll_no, SUM(marks_obtained) as total_marks
    -> FROM marks_details
    -> GROUP BY roll_no;
+----------+-------------+
| roll_no  | total_marks |
+----------+-------------+
| CSE21-01 |         162 |
| ECE21-01 |         166 |
+----------+-------------+
2 rows in set (0.00 sec)


--10. SELECT * FROM Class_Details WHERE roll_no = 'ECE21-01';
mysql> UPDATE Class_Details SET name = 'Kunal' WHERE roll_no = 'ECE21-01';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM Class_Details WHERE roll_no = 'ECE21-01';
+-------+------------------+----------+-------------+--------------+--------------+
| name  | class_start_date | roll_no  | branch      | semester     | ph_no        |
+-------+------------------+----------+-------------+--------------+--------------+
| Kunal | 2021-08-01       | ECE21-01 | Electronics | 4th semester | 555-555-5555 |
+-------+------------------+----------+-------------+--------------+--------------+
1 row in set (0.00 sec)
